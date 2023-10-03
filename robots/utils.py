from datetime import datetime
from django.core.exceptions import ValidationError
from django.forms.models import model_to_dict

from robots.models import Robot


def save_robot_if_clean_data(data: dict) -> dict:
    """Validates ``data`` and returns a dict with two items:

    "data" (data of a new robot instance if the data is valid or errors)

    "status" (http status code).
    """
    # Initialization response data
    response_data: dict = dict()
    # Creating a calculated field
    data["serial"] = data["model"] + "-" + data["version"]
    # Converting datetime in the correct format
    data["created"] = datetime.strptime(data["created"], "%Y-%m-%d %H:%M:%S")
    # Creating a Robot instance with received data
    newrecord: Robot = Robot(**data)
    # Validating and saving an instance
    try:
        newrecord.clean_fields()
    except ValidationError as exc:
        # Generation a readeble error message
        response_data["data"] = {
            k: v[0].messages[0] for (k, v) in exc.error_dict.items()
        }
        response_data["status"] = 400
    else:
        # Saving an instance
        newrecord.save()
        response_data["data"] = model_to_dict(newrecord)
        response_data["status"] = 201
    return response_data
