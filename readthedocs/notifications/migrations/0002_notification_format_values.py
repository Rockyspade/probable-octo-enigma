# Generated by Django 4.2.7 on 2023-11-29 15:44

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("notifications", "0001_initial"),
    ]

    operations = [
        migrations.AddField(
            model_name="notification",
            name="format_values",
            field=models.JSONField(blank=True, null=True),
        ),
    ]
