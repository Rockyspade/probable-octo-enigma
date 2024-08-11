# Generated by Django 2.2.16 on 2020-11-10 22:42

from django.db import migrations, models
import django.db.models.deletion
import django_extensions.db.fields


class Migration(migrations.Migration):
    dependencies = [
        ("builds", "0029_add_time_fields"),
    ]

    operations = [
        migrations.CreateModel(
            name="AutomationRuleMatch",
            fields=[
                (
                    "id",
                    models.AutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "created",
                    django_extensions.db.fields.CreationDateTimeField(
                        auto_now_add=True, verbose_name="created"
                    ),
                ),
                (
                    "modified",
                    django_extensions.db.fields.ModificationDateTimeField(
                        auto_now=True, verbose_name="modified"
                    ),
                ),
                ("version_name", models.CharField(max_length=255)),
                ("match_arg", models.CharField(max_length=255)),
                (
                    "action",
                    models.CharField(
                        choices=[
                            ("activate-version", "Activate version"),
                            ("hide-version", "Hide version"),
                            ("make-version-public", "Make version public"),
                            ("make-version-private", "Make version private"),
                            ("set-default-version", "Set version as default"),
                            (
                                "delete-version",
                                "Delete version (on branch/tag deletion)",
                            ),
                        ],
                        max_length=255,
                    ),
                ),
                (
                    "version_type",
                    models.CharField(
                        choices=[
                            ("branch", "Branch"),
                            ("tag", "Tag"),
                            ("external", "External"),
                            ("unknown", "Unknown"),
                        ],
                        max_length=32,
                    ),
                ),
                (
                    "rule",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="matches",
                        to="builds.VersionAutomationRule",
                        verbose_name="Matched rule",
                    ),
                ),
            ],
            options={
                "ordering": ("-modified", "-created"),
            },
        ),
    ]
