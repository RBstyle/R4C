import json
from django.http import JsonResponse
from django.core import serializers
from django.views.decorators.csrf import csrf_exempt

from robots.models import Robot
from robots.utils import save_robot_if_clean_data


@csrf_exempt
def robot(request):
    if request.method == "GET":
        # Prepare and send data for all instances Robot
        data = serializers.serialize("json", Robot.objects.all())

        return JsonResponse(json.loads(data), safe=False)

    if request.method == "POST":
        # Convert request data into dict
        request_data = json.loads(request.body.decode("utf-8"))
        # Save the data if it is valid
        response_data = save_robot_if_clean_data(request_data)

        return JsonResponse(data=response_data["data"], status=response_data["status"])
