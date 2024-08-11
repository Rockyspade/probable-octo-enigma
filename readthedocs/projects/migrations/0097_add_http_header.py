# Generated by Django 3.2.18 on 2023-02-22 19:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("projects", "0096_add_project_delisted"),
    ]

    operations = [
        migrations.AlterField(
            model_name="httpheader",
            name="name",
            field=models.CharField(
                choices=[
                    ("access_control_allow_origin", "Access-Control-Allow-Origin"),
                    ("access_control_allow_headers", "Access-Control-Allow-Headers"),
                    ("content_security_policy", "Content-Security-Policy"),
                    ("feature_policy", "Feature-Policy"),
                    ("permissions_policy", "Permissions-Policy"),
                    ("referrer_policy", "Referrer-Policy"),
                    ("x_frame_options", "X-Frame-Options"),
                    ("x_content_type_options", "X-Content-Type-Options"),
                ],
                max_length=128,
            ),
        ),
    ]
