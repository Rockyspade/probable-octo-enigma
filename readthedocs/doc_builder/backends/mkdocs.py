"""
MkDocs_ backend for building docs.

.. _MkDocs: http://www.mkdocs.org/
"""

import os

import structlog
import yaml
from django.conf import settings

from readthedocs.core.utils.filesystem import safe_open
from readthedocs.doc_builder.base import BaseBuilder
from readthedocs.projects.constants import MKDOCS, MKDOCS_HTML

log = structlog.get_logger(__name__)


def get_absolute_static_url():
    """
    Get the fully qualified static URL from settings.

    Mkdocs needs a full domain because it tries to link to local files.
    """
    static_url = settings.STATIC_URL

    if not static_url.startswith("http"):
        domain = settings.PRODUCTION_DOMAIN
        static_url = "http://{}{}".format(domain, static_url)

    return static_url


class BaseMkdocs(BaseBuilder):

    """Mkdocs builder."""

    # The default theme for mkdocs is the 'mkdocs' theme
    DEFAULT_THEME_NAME = "mkdocs"

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        # This is the *MkDocs* yaml file
        self.yaml_file = self.get_yaml_config()

    def get_final_doctype(self):
        """
        Select a doctype based on the ``use_directory_urls`` setting.

        https://www.mkdocs.org/user-guide/configuration/#use_directory_urls
        """

        # TODO: we should eventually remove this method completely and stop
        # relying on "loading the `mkdocs.yml` file in a safe way just to know
        # if it's a MKDOCS or MKDOCS_HTML documentation type".

        # Allow symlinks, but only the ones that resolve inside the base directory.
        with safe_open(
            self.yaml_file,
            "r",
            allow_symlinks=True,
            base_path=self.project_path,
        ) as fh:
            # Use ``.safe_load()`` since ``mkdocs.yml`` is an untrusted source.
            config = yaml.safe_load(fh)
            use_directory_urls = config.get("use_directory_urls", True)
            return MKDOCS if use_directory_urls else MKDOCS_HTML

    def get_yaml_config(self):
        """Find the ``mkdocs.yml`` file in the project root."""
        mkdocs_path = self.config.mkdocs.configuration
        if not mkdocs_path:
            mkdocs_path = "mkdocs.yml"
        return os.path.join(
            self.project_path,
            mkdocs_path,
        )

    def append_conf(self):
        """
        Call `cat mkdocs.yaml` only.

        This behavior has changed. We used to parse the YAML file and append
        some configs automatically, but we have been removing that magic from
        our builders as much as we can.

        This method will eventually removed completely.
        """
        # Write the mkdocs.yml to the build logs
        self.run(
            "cat",
            os.path.relpath(self.yaml_file, self.project_path),
            cwd=self.project_path,
        )

    def build(self):
        build_command = [
            self.python_env.venv_bin(filename="python"),
            "-m",
            "mkdocs",
            self.builder,
            "--clean",
            "--site-dir",
            os.path.join("$READTHEDOCS_OUTPUT", "html"),
            "--config-file",
            os.path.relpath(self.yaml_file, self.project_path),
        ]
        if self.config.mkdocs.fail_on_warning:
            build_command.append("--strict")
        cmd_ret = self.run(
            *build_command,
            cwd=self.project_path,
            bin_path=self.python_env.venv_bin(),
        )
        return cmd_ret.successful


class MkdocsHTML(BaseMkdocs):
    builder = "build"
    build_dir = "_readthedocs/html"
