# Generated by Django 4.2.10 on 2024-03-12 09:34

from django.db import migrations, models
from django_safemigrate import Safe


class Migration(migrations.Migration):
    safe = Safe.before_deploy

    dependencies = [
        ("projects", "0118_addons_flyout_sorting"),
    ]

    operations = [
        migrations.AlterField(
            model_name="addonsconfig",
            name="flyout_sorting_custom_pattern",
            field=models.CharField(
                blank=True,
                default=None,
                help_text='Sorting pattern supported by BumpVer (<a href="https://github.com/mbarkhau/bumpver#pattern-examples">See examples</a>)',
                max_length=32,
                null=True,
            ),
        ),
        migrations.AlterField(
            model_name="historicaladdonsconfig",
            name="flyout_sorting_custom_pattern",
            field=models.CharField(
                blank=True,
                default=None,
                help_text='Sorting pattern supported by BumpVer (<a href="https://github.com/mbarkhau/bumpver#pattern-examples">See examples</a>)',
                max_length=32,
                null=True,
            ),
        ),
    ]
