��    4      �              \  7   ]  G   �  *   �  &     )   /     Y     j     z     �  0   �  G   �  �     %   �  '   �  '        <  �   V     �  K   �  A   J  n   �  �   �  ?   �  q   �  '   :	  !  b	  �   �
  T   9  �   �     <  
   J  3   U  �   �  ]     q   j    �     �     �  )        9     ?     K  
   Q     \     d     k     �     �     �     �     �  �  �  7   �  G   �  *     &   H  )   o     �     �     �     �  0   �  G     �   X  %     '   ,  '   T     |  �   �     +  K   >  A   �  n   �  �   ;  ?   �  q     '   z  !  �  �   �  T   y  �   �     |  
   �  3   �  �   �  ]   L  q   �              7  )   O     y          �  
   �     �     �     �     �     �     �             Behind the scene the following Pip command will be run: Certain Python versions require a certain build image, as defined here: Conda is only supported via the YAML file. Default: :djangosetting:`DOCKER_IMAGE` Default: [``htmlzip``, ``pdf``, ``epub``] Default: ``2.7`` Default: ``[]`` Default: ``false`` Default: ``null`` Here is an example of what this file looks like: Let's say your Python package has a ``setup.py`` which looks like this: List of `extra requirements`_ sections to install, additionally to the `package default dependencies`_. Only works if ``python.pip_install`` option above is set to ``true``. Options: ``1.0``, ``2.0``, ``latest`` Options: ``2.7``, ``2``, ``3.5``, ``3`` Options: ``htmlzip``, ``pdf``, ``epub`` Read the Docs YAML Config Read the Docs now has support for configuring builds with a YAML file. The file, ``readthedocs.yml``, must be in the root directory of your project. Supported settings The ``build`` block configures specific aspects of the documentation build. The ``conda`` block allows for configuring our support for Conda. The ``python`` block allows you to configure aspects of the Python executable used for building documentation. The build image to use for specific builds. This lets users specify a more experimental build image, if they want to be on the cutting edge. The file option specified the Conda `environment file`_ to use. The formats of your documentation you want to be built. Set as an empty list ``[]`` to build none of the formats. The path to your pip requirements file. The supported Python versions depends on the version of the build image your project is using. The default build image that is used to build documentation contains support for Python ``2.7`` and ``3.5``.  See the :ref:`yaml__build__image` for more information on supported Python versions. Then to have all dependencies from the ``tests`` and ``docs`` sections installed in addition to the default ``requests`` and ``simplejson``, use the ``extra_requirements`` as such: This feature is in a beta state. Please file an `issue`_ if you find anything wrong. This is the version of Python to use when building your documentation. If you specify only the major version of Python, the highest supported minor version will be selected. Type: Boolean Type: List Type: Path (specified from the root of the project) We will always build an HTML & JSON version of your documentation. These are used for web serving & search indexing, respectively. When ``true``, install your project into the virtualenv with pip when building documentation. When true, install your project into the Virtualenv with ``python setup.py install`` when building documentation. When true, it gives the virtual environment access to the global site-packages directory. Depending on the :ref:`yaml-config:build.image`, Read the Docs includes some libraries like scipy, numpy, etc. See :ref:`builds:The build environment` for more details. ``1.0``: 2, 2.7, 3, 3.4 ``2.0``: 2, 2.7, 3, 3.5 ``latest``: 2, 2.7, 3, 3.3, 3.4, 3.5, 3.6 build build.image conda conda.file formats python python.extra_requirements python.pip_install python.setup_py_install python.use_system_site_packages python.version requirements_file Project-Id-Version: Read the Docs 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-09-17 19:05-0500
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh
Language-Team: Chinese (https://www.transifex.com/readthedocs/teams/2534/zh/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 Behind the scene the following Pip command will be run: Certain Python versions require a certain build image, as defined here: Conda is only supported via the YAML file. Default: :djangosetting:`DOCKER_IMAGE` Default: [``htmlzip``, ``pdf``, ``epub``] Default: ``2.7`` Default: ``[]`` Default: ``false`` Default: ``null`` Here is an example of what this file looks like: Let's say your Python package has a ``setup.py`` which looks like this: List of `extra requirements`_ sections to install, additionally to the `package default dependencies`_. Only works if ``python.pip_install`` option above is set to ``true``. Options: ``1.0``, ``2.0``, ``latest`` Options: ``2.7``, ``2``, ``3.5``, ``3`` Options: ``htmlzip``, ``pdf``, ``epub`` Read the Docs YAML Config Read the Docs now has support for configuring builds with a YAML file. The file, ``readthedocs.yml``, must be in the root directory of your project. Supported settings The ``build`` block configures specific aspects of the documentation build. The ``conda`` block allows for configuring our support for Conda. The ``python`` block allows you to configure aspects of the Python executable used for building documentation. The build image to use for specific builds. This lets users specify a more experimental build image, if they want to be on the cutting edge. The file option specified the Conda `environment file`_ to use. The formats of your documentation you want to be built. Set as an empty list ``[]`` to build none of the formats. The path to your pip requirements file. The supported Python versions depends on the version of the build image your project is using. The default build image that is used to build documentation contains support for Python ``2.7`` and ``3.5``.  See the :ref:`yaml__build__image` for more information on supported Python versions. Then to have all dependencies from the ``tests`` and ``docs`` sections installed in addition to the default ``requests`` and ``simplejson``, use the ``extra_requirements`` as such: This feature is in a beta state. Please file an `issue`_ if you find anything wrong. This is the version of Python to use when building your documentation. If you specify only the major version of Python, the highest supported minor version will be selected. Type: Boolean Type: List Type: Path (specified from the root of the project) We will always build an HTML & JSON version of your documentation. These are used for web serving & search indexing, respectively. When ``true``, install your project into the virtualenv with pip when building documentation. When true, install your project into the Virtualenv with ``python setup.py install`` when building documentation. When true, it gives the virtual environment access to the global site-packages directory. Depending on the :ref:`yaml-config:build.image`, Read the Docs includes some libraries like scipy, numpy, etc. See :ref:`builds:The build environment` for more details. ``1.0``: 2, 2.7, 3, 3.4 ``2.0``: 2, 2.7, 3, 3.5 ``latest``: 2, 2.7, 3, 3.3, 3.4, 3.5, 3.6 build build.image conda conda.file formats python python.extra_requirements python.pip_install python.setup_py_install python.use_system_site_packages python.version requirements_file 