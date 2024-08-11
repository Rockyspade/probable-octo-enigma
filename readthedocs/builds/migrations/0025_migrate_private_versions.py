# Generated by Django 2.2.12 on 2020-06-11 01:14

from django.db import migrations
from django.conf import settings


def forwards_func(apps, schema_editor):
    """
    Migrate all private versions to public and hidden.

    .. note::

       This migration is skipped for the corporate site.
    """
    if settings.ALLOW_PRIVATE_REPOS:
        return

    Version = apps.get_model("builds", "Version")
    (
        Version.objects.filter(privacy_level="private").update(
            privacy_level="public", hidden=True
        )
    )


class Migration(migrations.Migration):
    dependencies = [
        ("builds", "0024_status_code_choices"),
    ]

    operations = [
        migrations.RunPython(forwards_func),
    ]
