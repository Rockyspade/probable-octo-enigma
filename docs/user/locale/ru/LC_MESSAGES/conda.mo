��          �               �      �      �   �        �      �  +   �       �     �   �  �   s  T     ]   f  <  �            �         �      �  +   �     *	  �   +
  �   �
  �   �  T   %  ]   z   Activating Conda Conda Support Conda Support is the first feature enabled with :doc:`yaml-config`. You can enable it by creating a `readthedocs.yml` file in the root of your repository with the contents: Custom Installs Dependency Installation (Sphinx) Environment Creation (``conda env create``) If you are running a custom installation of Read the Docs, you will need the ``conda`` executable installed somewhere on your ``PATH``. Because of the way ``conda`` works, we can't safely install it as a normal dependency into the normal Python virtualenv. Installing conda into a virtualenv will override the ``activate`` script, making it so you can't properly activate that virtualenv anymore. Read the Docs supports Conda as an environment management tool, along with Virtualenv. Conda support is useful for people who depend on C libraries, and need them installed when building their documentation. This Conda environment will also have Sphinx and other build time dependencies installed. It will use the same order of operations that we support currently: This feature is in a beta state. Please file an `issue`_ if you find anything wrong. This work was funded by `Clinical Graphics`_ -- many thanks for their support of Open Source. Project-Id-Version: Read the Docs 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-09-17 19:05-0500
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ru
Language-Team: Russian (https://www.transifex.com/readthedocs/teams/2534/ru/)
Plural-Forms: nplurals=4; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<12 || n%100>14) ? 1 : n%10==0 || (n%10>=5 && n%10<=9) || (n%100>=11 && n%100<=14)? 2 : 3)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 Activating Conda Conda Support Conda Support is the first feature enabled with :doc:`yaml-config`. You can enable it by creating a `readthedocs.yml` file in the root of your repository with the contents: Custom Installs Dependency Installation (Sphinx) Environment Creation (``conda env create``) If you are running a custom installation of Read the Docs, you will need the ``conda`` executable installed somewhere on your ``PATH``. Because of the way ``conda`` works, we can't safely install it as a normal dependency into the normal Python virtualenv. Installing conda into a virtualenv will override the ``activate`` script, making it so you can't properly activate that virtualenv anymore. Read the Docs supports Conda as an environment management tool, along with Virtualenv. Conda support is useful for people who depend on C libraries, and need them installed when building their documentation. This Conda environment will also have Sphinx and other build time dependencies installed. It will use the same order of operations that we support currently: This feature is in a beta state. Please file an `issue`_ if you find anything wrong. This work was funded by `Clinical Graphics`_ -- many thanks for their support of Open Source. 