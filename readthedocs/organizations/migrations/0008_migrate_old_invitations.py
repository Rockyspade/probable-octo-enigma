# Generated by Django 3.2.13 on 2022-07-22 00:27

from django.conf import settings
from django.db import migrations
from django.utils import timezone


def forwards_func(apps, schema_editor):
    """
    Migrate old TeamInvite to new Invitation model.

    We migrate invites where the attached team member doesn't have a user,
    since those are real members.

    This is basically the same as ``TeamInvite.migrate``,
    since custom methods can't be used inside migrations.
    """
    TeamInvite = apps.get_model("organizations", "TeamInvite")
    Invitation = apps.get_model("invitations", "Invitation")
    ContentType = apps.get_model("contenttypes", "ContentType")

    queryset = TeamInvite.objects.filter(
        teammember__member__isnull=True
    ).prefetch_related("organization")
    for team_invite in queryset:
        team = team_invite.team
        owner = team.organization.owners.first()
        content_type = ContentType.objects.get_for_model(team)
        Invitation.objects.get_or_create(
            token=team_invite.hash,
            defaults=dict(
                from_user=owner,
                to_email=team_invite.email,
                content_type=content_type,
                object_id=team.pk,
                expiration_date=timezone.now()
                + timezone.timedelta(days=settings.RTD_INVITATIONS_EXPIRATION_DAYS),
            ),
        )
        team_invite.teammember_set.all().delete()
        team_invite.delete()


class Migration(migrations.Migration):
    dependencies = [
        ("organizations", "0007_add_extra_history_fields"),
    ]

    operations = [
        migrations.RunPython(forwards_func),
    ]
