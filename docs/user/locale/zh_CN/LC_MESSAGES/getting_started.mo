��    &      L              |  D   }     �  :   �  �        �  7   �  q   .    �  �  �    o  �   �     r	     �	     �	     �	  �   �	  -   �
  �   �
  j  �  �   /  $   �  '   �  ~   �  2   }     �  F   �  �     �   �  7  �  @   �  �   $       �   +  j   �  7   #     [     j  �  �  D   F     �  :   �  �   �     �  7   �  q   �    i  �  n    8  �   �     ;     L     X     l  �   �  -   �  �   �  j  �  �   �   $   z!  '   �!  ~   �!  2   F"     y"  F   �"  �   �"  �   �#  7  t$  @   �%  �   �%     �&  �   �&  j   �'  7   �'     $(     3(   Add an optional homepage URL and some tags, and then click **Next**. Bazaar: ``lp:pasta`` Create a directory inside your project to hold your docs:: Edit your files and rebuild until you like what you see, then commit your changes and push to your public repository. Once you have Sphinx documentation in a public repository, you can start using Read the Docs. Getting Started Git: ``http://github.com/ericholscher/django-kong.git`` If you are already using Sphinx or Markdown for your docs, skip ahead to :ref:`getting_started:Import Your Docs`. If you are going to import a repository from GitHub, Bitbucket or GitLab, you should connect your account to your provider first. Connecting your account allows for easier importing and enables Read the Docs to configure your repository webhooks automatically. If you do not have a connected account, you will need select **Import Manually** and enter the information for your repository yourself. You will also need to manually configure the webhook for your repository as well. When importing your project, you will be asked for the repository URL, along with some other information for you new project. The URL is normally the URL or path name you'd use to checkout, clone, or branch your repository. Some examples: If you have a connected account, you will see a list of your repositories that we are able to import. To import one of these projects, just click the import icon next to the repository you'd like to import. This will bring up a form that is already filled with your project's information. Feel free to edit any of these properties, and the click **Next** to build your documentation. If you have any more trouble, don't hesitate to reach out to us. The :doc:`support` page has more information on getting in touch. Import Your Docs In Markdown In reStructuredText Manually Import Your Docs Markdown doesn't support a lot of the features of Sphinx, like inline markup and directives. However, it works for basic prose content. reStructuredText is the preferred format for technical documentation, please read `this blog post`_ for motivation. Mercurial: ``https://bitbucket.org/ianb/pip`` Now, edit your ``index.rst`` and add some information about your project. Include as much detail as you like (refer to the reStructuredText_ syntax or `this template`_ if you need help). Build them to see how they look:: Once your project is created, you'll need to manually configure the repository webhook if you would like to have new changesets to trigger builds for your project on Read the Docs. Go to your project's **Integrations** page to configure a new webhook, or see :ref:`our steps for webhook creation <webhooks:Webhook Creation>` for more information on this process. Read the Docs will host multiple versions of your code. You can read more about how to use this well on our :doc:`versions` page. Run ``sphinx-quickstart`` in there:: Sign Up and Connect an External Account Sphinx_ is a tool that makes it easy to create beautiful documentation. Assuming you have Python_ already, `install Sphinx`_:: Subversion: ``http://varnish-cache.org/svn/trunk`` Then in your ``conf.py``: There is `a screencast`_ that will help you get started if you prefer. This document will show you how to get up and running with Read the Docs. You will have your docs imported on Read the Docs in 5 minutes, displayed beautifully for the world. This quick start will walk you through creating the basic configuration; in most cases, you can just accept the defaults. When it's done, you'll have an ``index.rst``, a ``conf.py`` and some other files. Add these to revision control. To connect your account, go to your *Settings* dashboard and select *Connected Services*. From here, you'll be able to connect to your GitHub, Bitbucket or GitLab account. This process will ask you to authorize a connection to Read the Docs, that allows us to read information about and clone your repositories. To import a repository, visit your dashboard_ and click Import_. Within a few seconds your code will automatically be fetched from your public repository, and the documentation will be built. Check out our :doc:`builds` page to learn more about how we build your docs, and to troubleshoot any issues that arise. Write Your Docs You can use Markdown and reStructuredText in the same Sphinx project. We support this natively on Read the Docs, and you can do it locally:: You can use ``sphinx-autobuild`` to auto-reload your docs. Run ``sphinx-autobuild . _build/html`` instead. You have two options for formatting your documentation: `In Markdown`_ `In reStructuredText`_ Project-Id-Version:  readthedocs-docs
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-09-17 19:05-0500
PO-Revision-Date: 2018-09-18 00:29+0000
Last-Translator: Anthony <aj@ohess.org>
Language: zh_CN
Language-Team: Chinese (China) (http://www.transifex.com/readthedocs/readthedocs-docs/language/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 Add an optional homepage URL and some tags, and then click **Next**. Bazaar: ``lp:pasta`` Create a directory inside your project to hold your docs:: Edit your files and rebuild until you like what you see, then commit your changes and push to your public repository. Once you have Sphinx documentation in a public repository, you can start using Read the Docs. Getting Started Git: ``http://github.com/ericholscher/django-kong.git`` If you are already using Sphinx or Markdown for your docs, skip ahead to :ref:`getting_started:Import Your Docs`. If you are going to import a repository from GitHub, Bitbucket or GitLab, you should connect your account to your provider first. Connecting your account allows for easier importing and enables Read the Docs to configure your repository webhooks automatically. If you do not have a connected account, you will need select **Import Manually** and enter the information for your repository yourself. You will also need to manually configure the webhook for your repository as well. When importing your project, you will be asked for the repository URL, along with some other information for you new project. The URL is normally the URL or path name you'd use to checkout, clone, or branch your repository. Some examples: If you have a connected account, you will see a list of your repositories that we are able to import. To import one of these projects, just click the import icon next to the repository you'd like to import. This will bring up a form that is already filled with your project's information. Feel free to edit any of these properties, and the click **Next** to build your documentation. If you have any more trouble, don't hesitate to reach out to us. The :doc:`support` page has more information on getting in touch. Import Your Docs In Markdown In reStructuredText Manually Import Your Docs Markdown doesn't support a lot of the features of Sphinx, like inline markup and directives. However, it works for basic prose content. reStructuredText is the preferred format for technical documentation, please read `this blog post`_ for motivation. Mercurial: ``https://bitbucket.org/ianb/pip`` Now, edit your ``index.rst`` and add some information about your project. Include as much detail as you like (refer to the reStructuredText_ syntax or `this template`_ if you need help). Build them to see how they look:: Once your project is created, you'll need to manually configure the repository webhook if you would like to have new changesets to trigger builds for your project on Read the Docs. Go to your project's **Integrations** page to configure a new webhook, or see :ref:`our steps for webhook creation <webhooks:Webhook Creation>` for more information on this process. Read the Docs will host multiple versions of your code. You can read more about how to use this well on our :doc:`versions` page. Run ``sphinx-quickstart`` in there:: Sign Up and Connect an External Account Sphinx_ is a tool that makes it easy to create beautiful documentation. Assuming you have Python_ already, `install Sphinx`_:: Subversion: ``http://varnish-cache.org/svn/trunk`` Then in your ``conf.py``: There is `a screencast`_ that will help you get started if you prefer. This document will show you how to get up and running with Read the Docs. You will have your docs imported on Read the Docs in 5 minutes, displayed beautifully for the world. This quick start will walk you through creating the basic configuration; in most cases, you can just accept the defaults. When it's done, you'll have an ``index.rst``, a ``conf.py`` and some other files. Add these to revision control. To connect your account, go to your *Settings* dashboard and select *Connected Services*. From here, you'll be able to connect to your GitHub, Bitbucket or GitLab account. This process will ask you to authorize a connection to Read the Docs, that allows us to read information about and clone your repositories. To import a repository, visit your dashboard_ and click Import_. Within a few seconds your code will automatically be fetched from your public repository, and the documentation will be built. Check out our :doc:`builds` page to learn more about how we build your docs, and to troubleshoot any issues that arise. Write Your Docs You can use Markdown and reStructuredText in the same Sphinx project. We support this natively on Read the Docs, and you can do it locally:: You can use ``sphinx-autobuild`` to auto-reload your docs. Run ``sphinx-autobuild . _build/html`` instead. You have two options for formatting your documentation: `In Markdown`_ `In reStructuredText`_ 