# Generated by Django 1.11.20 on 2019-03-01 17:30
from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        ("core", "0005_migrate-old-passwords"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="userprofile",
            name="allow_email",
        ),
    ]
