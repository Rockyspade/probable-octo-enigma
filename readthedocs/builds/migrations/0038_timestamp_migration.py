# Generated by Django 3.2.11 on 2022-02-14 16:38

from django.db import migrations
from django.db.models import Q
from django.utils import timezone


def populate_null_fields(apps, schema_editor):
    now = timezone.now()
    query = Q(created__isnull=True) | Q(modified__isnull=True)
    Version = apps.get_model('builds', 'Version')
    Version.objects.filter(query).update(
        created=now,
        modified=now,
    )


class Migration(migrations.Migration):

    dependencies = [
        ('builds', '0037_alter_build_cold_storage'),
    ]

    operations = [
        migrations.RunPython(populate_null_fields)
    ]
