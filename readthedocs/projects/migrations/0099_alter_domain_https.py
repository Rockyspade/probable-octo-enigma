# Generated by Django 3.2.18 on 2023-03-23 21:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("projects", "0098_pdf_epub_opt_in"),
    ]

    operations = [
        migrations.AlterField(
            model_name="domain",
            name="https",
            field=models.BooleanField(
                default=True,
                help_text="Always use HTTPS for this domain",
                verbose_name="Use HTTPS",
            ),
        ),
    ]
