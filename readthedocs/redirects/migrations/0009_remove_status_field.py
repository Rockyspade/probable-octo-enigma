# Generated by Django 4.2.9 on 2024-01-30 16:33

from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        ("redirects", "0008_alter_redirect_position"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="redirect",
            name="status",
        ),
    ]
