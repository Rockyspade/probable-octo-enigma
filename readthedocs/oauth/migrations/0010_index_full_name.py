# Generated by Django 2.2.12 on 2020-06-24 16:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('oauth', '0009_add_missing_model_change_migrations'),
    ]

    operations = [
        migrations.AlterField(
            model_name='remoterepository',
            name='full_name',
            field=models.CharField(db_index=True, max_length=255, verbose_name='Full Name'),
        ),
    ]
