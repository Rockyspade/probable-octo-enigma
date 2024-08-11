# Generated by Django 1.9.13 on 2018-05-07 19:25
from django.db import migrations


def show_version_warning_to_existing_projects(apps, schema_editor):
    Project = apps.get_model('projects', 'Project')
    Project.objects.all().update(show_version_warning=True)


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0024_add-show-version-warning'),
    ]

    operations = [
        migrations.RunPython(show_version_warning_to_existing_projects),
    ]
