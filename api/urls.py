from django.urls import path
from api import views


urlpatterns = [
    path("robot/", views.robot),
    path("report/", views.report),
]
