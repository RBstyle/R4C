from django.core.mail import send_mail

from orders.models import Order
from robots.models import Robot


def email_to_customer(model: str, version: str, email_to: str) -> None:
    """Send email to customer"""
    # Create context
    subject: str = "R4C - Robots for consumerss"
    message: str = f"""Добрый день!
Недавно вы интересовались нашим роботом модели {model}, версии {version}. 
Этот робот теперь в наличии. Если вам подходит этот вариант - пожалуйста, свяжитесь с нами
"""
    email_from: str = "r4c@support.ru"
    # Send email
    send_mail(
        subject,
        message,
        email_from,
        [email_to],
        fail_silently=False,
    )


def find_order(instance: Robot) -> None:
    """Check if the robot exists and send an email if not."""

    # Set local variables
    model: str = instance.model
    version: str = instance.version

    # Check if the robot exists
    if not Robot.objects.filter(model=model, version=version).exists():
        orders = Order.objects.filter(robot_serial=instance.serial)
        # Send an email to every customer for this model
        for order in orders:
            email_to_customer(
                model=model,
                version=version,
                email_to=order.customer.email,
            )
