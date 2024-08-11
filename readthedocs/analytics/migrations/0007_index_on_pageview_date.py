# Generated by Django 3.2.19 on 2023-06-13 11:12

import datetime

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("analytics", "0006_alter_pageview_id"),
    ]

    operations = [
        migrations.AlterField(
            model_name="pageview",
            name="date",
            field=models.DateField(db_index=True, default=datetime.date.today),
        ),
    ]
