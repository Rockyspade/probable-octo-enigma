��    :      �              �  �   �  G   b  g   �  I     ,   \  7   �  �  �  i   R     �  A   �  +     :   E  5   �  5   �  9   �     &	  +   A	  -   m	  �   �	  �   ?
  w   �
  |  J  �   �  .   }  �   �  &   �  O   �      �     �   �  #   �  '   �  �   �  �   h  -    x   K  ,   �  /  �  z   !  ~   �  z     �   �  �   a  �     �  �  .   q  �   �  2   n  �  �  ;  �   7   �!  _   �!  .   Y"  
   �"     �"  6   �"  7   �"  �  #  �   �$  G   {%  g   �%  I   +&  ,   u&  7   �&  �  �&  i   k(     �(  A   �(  +   2)  :   ^)  5   �)  5   �)  9   *     ?*  +   Z*  -   �*  �   �*  �   X+  w   �+  |  c,  �   �-  .   �.  �   �.  &   �/  O   �/    0  �   1  �   �1  #   �2  '   �2  �   �2  �   �3  -  64  x   d5  ,   �5  /  
6  z   :7  ~   �7  z   48  �   �8  �   z9  �   ):  �  ;  .   �<  �   �<  2   �=  �  �=  ;  �A  7   �B  _   C  .   rC  
   �C     �C  6   �C  7   �C   After adding the file to your repository, go to the *Advanced Settings* in your project's admin panel and add the name of the file to the *Requirements file* field. Another use case for this is when you have a module with a C extension. At the top level of your built documentation, otherwise we aren't able to serve a "default" index page. Can I document a python package that is not at the root of my repository? Deleting a stale or broken build environment Does Read The Docs work well with "legible" docstrings? First, you should check out the Builds tab of your project. That records all of the build attempts that RTD has made to build your project. If you see ``ImportError`` messages for custom Python modules, you should enable the virtualenv feature in the Admin page of your project, which will install your project into a virtualenv, and allow you to specify a ``requirements.txt`` file for your project. For example, Kombu is a subproject of Celery, so you can access it on the `celery.readthedocs.io` domain: Frequently Asked Questions Help, my build passed but my documentation page is 404 Not Found! How do I change behavior for Read the Docs? How do I change my slug (the URL your docs are served at)? How do I host multiple projects on one custom domain? How do I support multiple languages of documentation? I get import errors on libraries that depend on C modules I want comments in my docs I want to use the Blue/Default Sphinx theme I want to use the Read the Docs theme locally If such libraries are installed via ``setup.py``, you also will need to remove all the C-dependent libraries from your ``install_requires`` in the RTD environment. If you are still seeing errors because of C library dependencies, please see :ref:`faq:I get import errors on libraries that depend on C modules`. If you did not install the `test_data` fixture during the installation instructions, you will get the following error:: If you want to place your package in a different directory or have multiple python packages in the same project, then create a pip requirements file. You can specify the relative path to your package inside the file. For example you want to keep your python package in the ``src/python`` directory, then create a ``requirements.readthedocs.txt`` file with the following contents:: If you'd prefer not to install the test data, you'll need to provide a database account for the builder to use. You can provide these credentials by editing the following settings:: Image scaling doesn't work in my documentation Image scaling in docutils depends on PIL. PIL is installed in the system that RTD runs on. However, if you are using the virtualenv building option, you will likely need to include PIL in your requirements for your project. My project isn't building with autodoc Of course, replacing `MOCK_MODULES` with the modules that you want to mock out. Please note that the path must be relative to the file. So the example path above would work if the file is in the root of your repository. If you want to put the requirements in a file called ``requirements/readthedocs.txt``, the contents would look like:: RTD doesn't have explicit support for this. That said, a tool like `Disqus`_ (and the `sphinxcontrib-disqus`_ plugin) can be used for this purpose on RTD. Read the Docs will crawl your project looking for a ``conf.py``. Where it finds the ``conf.py``, it will run ``sphinx-build`` in that directory. So as long as you only have one set of sphinx documentation in your project, it should Just Work. See :doc:`guides/wipe-environment`. See the section on :doc:`localization`. The :envvar:`READTHEDOCS` variable is also available in the Sphinx build environment, and will be set to ``True`` when building on RTD:: The library ``unittest.mock`` was introduced on python 3.3. On earlier versions install the ``mock`` library from PyPI with (ie ``pip install mock``) and replace the above import:: The main reason for this is that all existing URLs to the content will break. You can delete and re-create the project with the proper name to get a new slug, but you really shouldn't do this if you have existing inbound links, as it `breaks the internet <http://www.w3.org/Provider/Style/URI.html>`_. There is a repository for that: https://github.com/snide/sphinx_rtd_theme. Simply follow the instructions in the README. This also works the same for custom domains: This happens because our build system doesn't have the dependencies for building your project. This happens with things like libevent and mysql, and other python things that depend on C libraries. We can't support installing random C binaries on our system, so there is another way to fix these imports. This is because the API admin user does not exist, and so cannot authenticate. You can fix this by loading the test_data:: This often happens because you don't have an `index.html` file being generated. Make sure you have one of the following files: To test if your docs actually built correctly, you can navigate to a specific page (`/en/latest/README.html` for example). We deploy readthedocs.org from the `rel` branch in our GitHub repository. You can see the latest commits that have been deployed by looking on GitHub: https://github.com/rtfd/readthedocs.org/commits/rel We don't support allowing folks to change the slug for their project. You can update the name which is shown on the site, but not the actual URL that documentation is served. We support the concept of subprojects, which allows multiple projects to share a single domain. If you add a subproject to a project, that documentation will be served under the parent project's subdomain or custom domain. We think that our theme is badass, and better than the default for many reasons. Some people don't like change though :), so there is a hack that will let you keep using the default theme. If you set the ``html_style`` variable in your ``conf.py``, it should default to using the default theme. The value of this doesn't matter, and can be set to ``/default.css`` for default behavior. What commit of Read the Docs is in production? When RTD builds your project, it sets the :envvar:`READTHEDOCS` environment variable to the string `True`. So within your Sphinx :file:`conf.py` file, you can vary the behavior based on this. For example:: Where do I need to put my docs for RTD to find it? Yes. One criticism of Sphinx is that its annotated docstrings are too dense and difficult for humans to read. In response, many projects have adopted customized docstring styles that are simultaneously informative and legible. The `NumPy <https://github.com/numpy/numpy/blob/master/doc/HOWTO_DOCUMENT.rst.txt>`_ and `Google <https://google.github.io/styleguide/pyguide.html?showone=Comments#Comments>`_ styles are two popular docstring formats.  Fortunately, the default Read The Docs theme handles both formats just fine, provided your ``conf.py`` specifies an appropriate Sphinx extension that knows how to convert your customized docstrings.  Two such extensions are `numpydoc <https://github.com/numpy/numpydoc>`_ and `napoleon <http://sphinxcontrib-napoleon.readthedocs.io>`_. Only ``napoleon`` is able to handle both docstring formats. Its default output more closely matches the format of standard Sphinx annotations, and as a result, it tends to look a bit better with the default theme. Yes. The most convenient way to access a python package for example via `Sphinx's autoapi`_ in your documentation is to use the *Install your project inside a virtualenv using setup.py install* option in the admin panel of your project. However this assumes that your ``setup.py`` is in the root of your repository. You can add subprojects in the project admin dashboard. You can mock out the imports for these modules in your ``conf.py`` with the following snippet:: `Client Error 401` when building documentation `index.md` `index.rst` http://celery.readthedocs.io/projects/kombu/en/latest/ http://docs.celeryproject.org/projects/kombu/en/latest/ Project-Id-Version:  readthedocs-docs
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-09-17 19:05-0500
PO-Revision-Date: 2018-09-18 00:15+0000
Last-Translator: Anthony <aj@ohess.org>
Language: nb
Language-Team: Norwegian Bokmål (http://www.transifex.com/readthedocs/readthedocs-docs/language/nb/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 After adding the file to your repository, go to the *Advanced Settings* in your project's admin panel and add the name of the file to the *Requirements file* field. Another use case for this is when you have a module with a C extension. At the top level of your built documentation, otherwise we aren't able to serve a "default" index page. Can I document a python package that is not at the root of my repository? Deleting a stale or broken build environment Does Read The Docs work well with "legible" docstrings? First, you should check out the Builds tab of your project. That records all of the build attempts that RTD has made to build your project. If you see ``ImportError`` messages for custom Python modules, you should enable the virtualenv feature in the Admin page of your project, which will install your project into a virtualenv, and allow you to specify a ``requirements.txt`` file for your project. For example, Kombu is a subproject of Celery, so you can access it on the `celery.readthedocs.io` domain: Frequently Asked Questions Help, my build passed but my documentation page is 404 Not Found! How do I change behavior for Read the Docs? How do I change my slug (the URL your docs are served at)? How do I host multiple projects on one custom domain? How do I support multiple languages of documentation? I get import errors on libraries that depend on C modules I want comments in my docs I want to use the Blue/Default Sphinx theme I want to use the Read the Docs theme locally If such libraries are installed via ``setup.py``, you also will need to remove all the C-dependent libraries from your ``install_requires`` in the RTD environment. If you are still seeing errors because of C library dependencies, please see :ref:`faq:I get import errors on libraries that depend on C modules`. If you did not install the `test_data` fixture during the installation instructions, you will get the following error:: If you want to place your package in a different directory or have multiple python packages in the same project, then create a pip requirements file. You can specify the relative path to your package inside the file. For example you want to keep your python package in the ``src/python`` directory, then create a ``requirements.readthedocs.txt`` file with the following contents:: If you'd prefer not to install the test data, you'll need to provide a database account for the builder to use. You can provide these credentials by editing the following settings:: Image scaling doesn't work in my documentation Image scaling in docutils depends on PIL. PIL is installed in the system that RTD runs on. However, if you are using the virtualenv building option, you will likely need to include PIL in your requirements for your project. My project isn't building with autodoc Of course, replacing `MOCK_MODULES` with the modules that you want to mock out. Please note that the path must be relative to the file. So the example path above would work if the file is in the root of your repository. If you want to put the requirements in a file called ``requirements/readthedocs.txt``, the contents would look like:: RTD doesn't have explicit support for this. That said, a tool like `Disqus`_ (and the `sphinxcontrib-disqus`_ plugin) can be used for this purpose on RTD. Read the Docs will crawl your project looking for a ``conf.py``. Where it finds the ``conf.py``, it will run ``sphinx-build`` in that directory. So as long as you only have one set of sphinx documentation in your project, it should Just Work. See :doc:`guides/wipe-environment`. See the section on :doc:`localization`. The :envvar:`READTHEDOCS` variable is also available in the Sphinx build environment, and will be set to ``True`` when building on RTD:: The library ``unittest.mock`` was introduced on python 3.3. On earlier versions install the ``mock`` library from PyPI with (ie ``pip install mock``) and replace the above import:: The main reason for this is that all existing URLs to the content will break. You can delete and re-create the project with the proper name to get a new slug, but you really shouldn't do this if you have existing inbound links, as it `breaks the internet <http://www.w3.org/Provider/Style/URI.html>`_. There is a repository for that: https://github.com/snide/sphinx_rtd_theme. Simply follow the instructions in the README. This also works the same for custom domains: This happens because our build system doesn't have the dependencies for building your project. This happens with things like libevent and mysql, and other python things that depend on C libraries. We can't support installing random C binaries on our system, so there is another way to fix these imports. This is because the API admin user does not exist, and so cannot authenticate. You can fix this by loading the test_data:: This often happens because you don't have an `index.html` file being generated. Make sure you have one of the following files: To test if your docs actually built correctly, you can navigate to a specific page (`/en/latest/README.html` for example). We deploy readthedocs.org from the `rel` branch in our GitHub repository. You can see the latest commits that have been deployed by looking on GitHub: https://github.com/rtfd/readthedocs.org/commits/rel We don't support allowing folks to change the slug for their project. You can update the name which is shown on the site, but not the actual URL that documentation is served. We support the concept of subprojects, which allows multiple projects to share a single domain. If you add a subproject to a project, that documentation will be served under the parent project's subdomain or custom domain. We think that our theme is badass, and better than the default for many reasons. Some people don't like change though :), so there is a hack that will let you keep using the default theme. If you set the ``html_style`` variable in your ``conf.py``, it should default to using the default theme. The value of this doesn't matter, and can be set to ``/default.css`` for default behavior. What commit of Read the Docs is in production? When RTD builds your project, it sets the :envvar:`READTHEDOCS` environment variable to the string `True`. So within your Sphinx :file:`conf.py` file, you can vary the behavior based on this. For example:: Where do I need to put my docs for RTD to find it? Yes. One criticism of Sphinx is that its annotated docstrings are too dense and difficult for humans to read. In response, many projects have adopted customized docstring styles that are simultaneously informative and legible. The `NumPy <https://github.com/numpy/numpy/blob/master/doc/HOWTO_DOCUMENT.rst.txt>`_ and `Google <https://google.github.io/styleguide/pyguide.html?showone=Comments#Comments>`_ styles are two popular docstring formats.  Fortunately, the default Read The Docs theme handles both formats just fine, provided your ``conf.py`` specifies an appropriate Sphinx extension that knows how to convert your customized docstrings.  Two such extensions are `numpydoc <https://github.com/numpy/numpydoc>`_ and `napoleon <http://sphinxcontrib-napoleon.readthedocs.io>`_. Only ``napoleon`` is able to handle both docstring formats. Its default output more closely matches the format of standard Sphinx annotations, and as a result, it tends to look a bit better with the default theme. Yes. The most convenient way to access a python package for example via `Sphinx's autoapi`_ in your documentation is to use the *Install your project inside a virtualenv using setup.py install* option in the admin panel of your project. However this assumes that your ``setup.py`` is in the root of your repository. You can add subprojects in the project admin dashboard. You can mock out the imports for these modules in your ``conf.py`` with the following snippet:: `Client Error 401` when building documentation `index.md` `index.rst` http://celery.readthedocs.io/projects/kombu/en/latest/ http://docs.celeryproject.org/projects/kombu/en/latest/ 