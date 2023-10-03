import os
from django.conf import settings
from django.utils.timezone import make_aware, now, datetime, timedelta
from django.core.exceptions import ValidationError
from django.forms.models import model_to_dict
from xlsxwriter import Workbook

from robots.models import Robot


def save_robot_if_clean_data(data: dict) -> dict:
    """Validates ``data`` and returns a dict with two items:

    "data" (data of a new robot instance if the data is valid or errors)

    "status" (http status code).
    """
    # Initialize response data
    response_data: dict = dict()
    # Create a calculated field
    data["serial"] = data["model"] + "-" + data["version"]
    # Convert datetime in the correct format
    data["created"] = make_aware(
        datetime.strptime(data["created"], "%Y-%m-%d %H:%M:%S")
    )

    # Create a Robot instance with received data
    newrecord: Robot = Robot(**data)
    # Validate and saving an instance
    try:
        newrecord.clean_fields()
    except ValidationError as exc:
        # Generate a readeble error message
        response_data["data"] = {
            k: v[0].messages[0] for (k, v) in exc.error_dict.items()
        }
        response_data["status"] = 400
    else:
        # Save an instance
        newrecord.save()
        response_data["data"] = model_to_dict(newrecord)
        response_data["status"] = 201
    return response_data


def get_report_xlsx():
    """Create and return report. Only the latest report is stored in the storage. Old reports are deleted."""
    # Define the report storage path
    reports_storage = os.path.join(settings.MEDIA_ROOT, "reports")

    # Clean up the reports storage
    clean_folder(path_to_folder=reports_storage)

    # Define the path to the report
    datetime_stamp: datetime = now().strftime("(%d_%m_%Y_%H:%M:%S)")
    path_to_report: str = os.path.join(reports_storage, f"report{datetime_stamp}.xlsx")

    # Filter instances by creation date
    repoting_period_from: datetime = now() - timedelta(days=7)
    robots = Robot.objects.filter(created__gt=repoting_period_from)

    # Create a workbook
    workbook: Workbook = Workbook(path_to_report)

    # Create worksheets according to the number of models
    list_of_models = list(sorted(set([robot.model for robot in robots])))

    for model in list_of_models:
        # Define the current worksheet by model name
        worksheet = workbook.add_worksheet(name=model)
        cell_format = workbook.add_format()
        cell_format.set_border()

        # Start from the first cell. Rows and columns are zero indexed.
        row: int = 0
        col: int = 0

        # Create a header row
        worksheet.write(row, col, "Модель", cell_format)
        worksheet.write(row, col + 1, "Версия", cell_format)
        worksheet.write(row, col + 2, "Количество за неделю", cell_format)
        worksheet.autofit()
        row += 1

        current_model_robots = robots.filter(model=model)

        # Data of instances of this model
        data: list = list()

        for item in current_model_robots:
            row_content: tuple = (
                item.model,
                item.version,
                robots.filter(model=item.model, version=item.version).count(),
            )

            data.append(row_content)

        # Iterate over the data and write it out row by row.
        for model, version, quantity in sorted(set(data)):
            worksheet.write(row, col, model, cell_format)
            worksheet.write(row, col + 1, version, cell_format)
            worksheet.write(row, col + 2, quantity, cell_format)
            row += 1

    workbook.close()
    report_file = open(path_to_report, "rb")
    return report_file


def clean_folder(path_to_folder: str) -> None:
    """Deleting all objects in folder"""
    for report in os.listdir(path_to_folder):
        os.remove(os.path.join(path_to_folder, report))
