# Generated by Django 3.2.13 on 2022-07-27 21:42

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("projects", "0090_dont_allow_ips_on_domains"),
    ]

    operations = [
        migrations.AlterModelOptions(
            name="project",
            options={"ordering": ("slug",), "verbose_name": "project"},
        ),
    ]
