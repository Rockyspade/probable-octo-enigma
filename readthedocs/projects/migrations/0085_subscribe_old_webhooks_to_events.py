# Generated by Django 2.2.24 on 2021-09-28 19:44

from django.db import migrations


def forwards_func(apps, schema_editor):
    """Migrate old webhooks to subscribe to events instead."""
    WebHook = apps.get_model("projects", "WebHook")
    WebHookEvent = apps.get_model("projects", "WebHookEvent")
    old_webhooks = WebHook.objects.filter(events__isnull=True)
    default_events = [
        WebHookEvent.objects.get(name="build:triggered"),
        WebHookEvent.objects.get(name="build:passed"),
        WebHookEvent.objects.get(name="build:failed"),
    ]
    for webhook in old_webhooks:
        webhook.events.set(default_events)
        webhook.save()


class Migration(migrations.Migration):
    dependencies = [
        ("projects", "0084_create_webhook_events"),
    ]

    operations = [
        migrations.RunPython(forwards_func),
    ]
