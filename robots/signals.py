from django.db.models import signals
from django.dispatch import receiver
from orders.utils import find_order
from .models import Robot


@receiver(signals.pre_save, sender=Robot)
def checking_orders(sender, instance, update_fields, **kwargs):
    find_order(instance)
