# -*- coding: utf-8 -*-
# Generated by Django 1.9.12 on 2017-10-27 00:17
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('builds', '0003_add-cold-storage'),
    ]

    operations = [
        migrations.CreateModel(
            name='APIVersion',
            fields=[
            ],
            options={
                'proxy': True,
            },
            bases=('builds.version',),
        ),
    ]
