from unittest.mock import patch

from django.test import TestCase
from django_dynamic_fixture import get

from readthedocs.builds.constants import BUILD_STATUS_SUCCESS, EXTERNAL
from readthedocs.builds.models import Build, Version
from readthedocs.projects.models import Project
from readthedocs.projects.tasks.utils import trigger_send_build_status


class SendBuildStatusTests(TestCase):

    def setUp(self):
        self.project = get(Project)
        self.internal_version = get(Version, project=self.project)
        self.external_version = get(Version, project=self.project, type=EXTERNAL)
        self.external_build = get(Build, project=self.project, version=self.external_version)
        self.internal_build = get(Build, project=self.project, version=self.internal_version)

    @patch('readthedocs.projects.tasks.utils.send_build_status')
    def test_send_external_build_status_with_external_version(self, send_build_status):
        trigger_send_build_status(
            self.external_version.type,
            self.external_build.id,
            self.external_build.commit,
            BUILD_STATUS_SUCCESS,
        )

        send_build_status.delay.assert_called_once_with(
            self.external_build.id,
            self.external_build.commit,
            BUILD_STATUS_SUCCESS,
        )

    @patch('readthedocs.projects.tasks.utils.send_build_status')
    def test_send_external_build_status_with_internal_version(self, send_build_status):
        """
        Verify that an active version/branch emits a build status.

        Example: A new commit is pushed to 'main' branch. This is usually triggered by a webhook and
        an update should be send back to the Git provider with build status and URL.
        """
        trigger_send_build_status(
            self.internal_version.type,
            self.internal_build.id,
            self.external_build.commit,
            BUILD_STATUS_SUCCESS,
        )

        send_build_status.delay.assert_called_once_with(
            self.internal_build.id,
            self.external_build.commit,
            BUILD_STATUS_SUCCESS,
        )
