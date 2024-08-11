# Generated by Django 2.2.12 on 2020-06-10 17:11

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("projects", "0055_change_help_text_description"),
    ]

    operations = [
        migrations.AddField(
            model_name="project",
            name="analytics_disabled",
            field=models.BooleanField(
                default=False,
                help_text="Disable Google Analytics completely for this project (requires rebuilding documentation)",
                null=True,
                verbose_name="Disable Analytics",
            ),
        ),
    ]
