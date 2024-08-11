��          �               ,      -  �  N  �   �  �   �  �   �     N     e  }   w  �   �     �     �  �   �    n  S   v  �   �  �   �	  �  �
      ^  �    �     �   �  �   �          �  }   �  �   &     �     �  �   �    �  S   �  �   �  �   �   How we envision versions working If you have documentation changes on a **long-lived branch**, you can build those too. This will allow you to see how the new docs will be built in this branch of the code. Generally you won't have more than 1 active branch over a long period of time. The main exception here would be **release branches**, which are branches that are maintained over time for a specific release number. In the normal case, the ``latest`` version will always point to the most up to date development code. If you develop on a branch that is different than the default for your VCS, you should set the **Default Branch** to that branch. Read the Docs supports multiple versions of your repository. On the initial import, we will create a ``latest`` version. This will point at the default branch for your VCS control: ``master``, ``default``, or ``trunk``. Read the Docs supports two workflows for versioning: based on tags or branches. If you have at least one tag, tags will take preference over branches when selecting the stable version. Redirects on root URLs Tags and branches This feature is disabled by default on new projects, you can enable it in the admin section of your docs (Advanced Settings). This is a banner that appears on the top of every page of your docs that aren't stable or latest. This banner has a text with a link redirecting the users to the latest version of your docs. Version warning Versions We also create a ``stable`` version, if your project has any tagged releases. ``stable`` will be automatically kept up to date to point at your highest version. We in fact are parsing your tag names against the rules given by `PEP 440`_. This spec allows "normal" version numbers like ``1.4.2`` as well as pre-releases. An alpha version or a release candidate are examples of pre-releases and they look like this: ``2.0a1``. We only consider non pre-releases for the ``stable`` version of your documentation. When a user hits the root URL for your documentation, for example ``http://pip.readthedocs.io/``, they will be redirected to the **Default version**. This defaults to **latest**, but could also point to your latest released version. You should push a **tag** for each version of your project. These tags should be numbered in a way that is consistent with `semantic versioning <http://semver.org/>`_. This will map to your ``stable`` branch by default. Project-Id-Version:  readthedocs-docs
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-09-17 19:05-0500
PO-Revision-Date: 2018-09-18 00:29+0000
Last-Translator: Anthony <aj@ohess.org>
Language: pt_BR
Language-Team: Portuguese (Brazil) (http://www.transifex.com/readthedocs/readthedocs-docs/language/pt_BR/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 How we envision versions working If you have documentation changes on a **long-lived branch**, you can build those too. This will allow you to see how the new docs will be built in this branch of the code. Generally you won't have more than 1 active branch over a long period of time. The main exception here would be **release branches**, which are branches that are maintained over time for a specific release number. In the normal case, the ``latest`` version will always point to the most up to date development code. If you develop on a branch that is different than the default for your VCS, you should set the **Default Branch** to that branch. Read the Docs supports multiple versions of your repository. On the initial import, we will create a ``latest`` version. This will point at the default branch for your VCS control: ``master``, ``default``, or ``trunk``. Read the Docs supports two workflows for versioning: based on tags or branches. If you have at least one tag, tags will take preference over branches when selecting the stable version. Redirects on root URLs Tags and branches This feature is disabled by default on new projects, you can enable it in the admin section of your docs (Advanced Settings). This is a banner that appears on the top of every page of your docs that aren't stable or latest. This banner has a text with a link redirecting the users to the latest version of your docs. Version warning Versões We also create a ``stable`` version, if your project has any tagged releases. ``stable`` will be automatically kept up to date to point at your highest version. We in fact are parsing your tag names against the rules given by `PEP 440`_. This spec allows "normal" version numbers like ``1.4.2`` as well as pre-releases. An alpha version or a release candidate are examples of pre-releases and they look like this: ``2.0a1``. We only consider non pre-releases for the ``stable`` version of your documentation. When a user hits the root URL for your documentation, for example ``http://pip.readthedocs.io/``, they will be redirected to the **Default version**. This defaults to **latest**, but could also point to your latest released version. You should push a **tag** for each version of your project. These tags should be numbered in a way that is consistent with `semantic versioning <http://semver.org/>`_. This will map to your ``stable`` branch by default. 