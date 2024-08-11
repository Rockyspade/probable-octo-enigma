# Generated by Django 1.11.18 on 2019-02-02 19:45
from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("projects", "0038_change-default-python-interpreter"),
    ]

    operations = [
        migrations.AlterField(
            model_name="project",
            name="documentation_type",
            field=models.CharField(
                choices=[
                    ("sphinx", "Sphinx Html"),
                    ("mkdocs", "Mkdocs (Markdown)"),
                    ("sphinx_htmldir", "Sphinx HtmlDir"),
                    ("sphinx_singlehtml", "Sphinx Single Page HTML"),
                ],
                default="sphinx",
                help_text='Type of documentation you are building. <a href="http://www.sphinx-doc.org/en/stable/builders.html#sphinx.builders.html.DirectoryHTMLBuilder">More info on sphinx builders</a>.',
                max_length=20,
                verbose_name="Documentation type",
            ),
        ),
    ]
