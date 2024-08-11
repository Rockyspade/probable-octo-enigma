��    J      l              �  M   �       3   %  �   Y  *   �            +   )  #   U  l   y     �  2     -   5  �   c  %   
     0     =    Z  $   r
  z   �
  �     `   �  �     6   �     �     �       	   8  P   B     �     �     �  y   �  <   M  h   �     �  H  s  o   �  �   ,  X    �  x  �  <  E   �       "   .    Q  C   i  �   �  t   3  �   �  8   y     �  �   �  �  h  w   �  =  d  �   �  �   C      �   Q  �!  �    #  �   �#  v   �$  Q   4%  #   �%  '   �%  9   �%  &   &  (   3&     \&  ,   |&     �&  -   �&  �  �&  M   �(     �(  3   )  �   ;)  *   �)     �)     �)  +   *  #   7*  l   [*     �*  2   �*  -   +  �   E+  %   �+     ,     ,    <,  $   T.  z   y.  �   �.  `   �/  �   �/  6   �0     �0     �0     �0  	   1  P   $1     u1     �1     �1  y   �1  <   /2  h   l2     �2  H  U3  o   �4  �   5  X  6  �  Z8  �  :  E   �;     <  "   <    3<  C   K=  �   �=  t   >  �   �>  8   [?     �?  �   �?  �  J@  w   �A  =  FB  �   �C  �   %D     �D  Q  �E  �   G  �   �G  v   �H  Q   I  #   hI  '   �I  9   �I  &   �I  (   J     >J  ,   ^J     �J  -   �J   *Achieve world domination* (also needs the label **Needed: design decision**) *Builds are not starting* *Builds fail if conf.py contains non-ascii letters* *Builds fail when using matplotlib*: If the described issue was already fixed, then explain and instruct to re-trigger the build. *Change font size for the project's title* *Good First Issue* *High Priority* *How to use C modules with Sphinx autodoc?* *My account was set inactive. Why?* *My builds stopped working. Please help!* Ask for a link to the build log and for which project is affected. *Please change my username* *Please set me as owner of this abandoned project* *Provide better integration with service XYZ* *Provide way to upload arbitrary HTML files*: It was already decided that Read the Docs is not a dull hosting platform for HTML. So explain this and close the ticket. *Refactor namedtuples to dataclasess* *Sprintable* *Why are my builds failing?* Add the label **Needed: more information** if the reported issue does not contain enough information to decide if it is valid or not and ask on the ticket for the required information to go forward. We will re-triage all tickets that have the label **Needed: more information** assigned. If the original reporter left new information we can try to re-categorize the ticket. If the reporter did not come back to provide more required information after a long enough time, we will close the ticket (this will be roughly about two weeks). Additional labels for categorization Additionally to the labels already involved in the section above, we have a few more at hand to further categorize issues. After this installation, the next time you run `git commit` the `pre-commit run` command will be run immediately and will inform you of the changes and errors. After we finished the initial triaging of new tickets, no ticket should be left without a label. All members of our community are expected to follow our :doc:`/code-of-conduct`. Please make sure you are welcoming and friendly in all of our spaces. Ask usage questions ("How do I?") on `StackOverflow`_. Contributing to Read the Docs Contributing to development Discuss topics on `Gitter`_. Examples: For a full list of available labels and their meanings, see :doc:`issue-labels`. Get in touch Helpful links for triaging Helping on translations Here is a brief explanation on how we triage incoming tickets to get a better sense of what needs to be done on what end. Here is a list of links for contributors that look for work: If it's a valid bug, then add the label **Bug**. Try to reference related issues if you come across any. If the issue is urgent, assign this label. In the best case also go forward to resolve the ticket yourself as soon as possible. If the ticket contains a feature that aligns with the goals of Read the Docs, then add the label **Feature**. If the proposal seems valid but requires further discussion between core contributors because there might be different possibilities on how to implement the feature, then also add the label **Needed: design decision**. If the ticket contains a question about the Read the Docs platform or the code, then add the label **Support**. If the ticket is about code cleanup or small changes to existing features would likely have the **Improvement** label. The distinction for this label is that these issues have a lower priority than a Bug, and aren't implementing new features. If you are up to more challenging tasks with a bigger scope, then there are a set of tickets with a `Feature`_ or `Improvement`_ tag. These tickets have a general overview and description of the work required to finish. If you want to start somewhere, this would be a good place to start (make sure that the issue also have the `Accepted`_ label). That said, these aren't necessarily the easiest tickets. They are simply things that are explained. If you still didn't find something to work on, search for the `Sprintable`_ label. Those tickets are meant to be standalone and can be worked on ad-hoc. If you think the ticket is invalid comment why you think it is invalid, then close the ticket. Tickets might be invalid if they were already fixed in the past or it was decided that the proposed feature will not be implemented because it does not conform with the overall goal of Read the Docs. Also if you happen to know that the problem was already reported, reference the other ticket that is already addressing the problem and close the duplicate. If you want to deep dive and help out with development on Read the Docs, then first get the project installed locally according to the :doc:`Installation Guide <install>`. After that is done we suggest you have a look at tickets in our issue tracker that are labelled `Good First Issue`_. These are meant to be a great way to get a smooth start and won't put you in front of the most complex parts of the system. If you wish to contribute translations, please do so on `Transifex`_. Initial triage On IRC find us at `#readthedocs`_. Our code base is still maturing and the core team doesn't yet recommend running this as a pre-commit hook due to the number of changes this will cause while constructing a pull request. Independent pull requests with linting changes would be a great help to making this possible. Report bugs, suggest features or view the source code `on GitHub`_. Sprintable are all tickets that have the right amount of scope to be handled during a sprint. They are very focused and encapsulated. Tasks that require a one time action on the server should be assigned the two labels **Support** and **Operations**. This label marks tickets that are easy to get started with. The ticket should be ideal for beginners to dive into the code base. Better is if the fix for the issue only involves touching one part of the code. To run the `pre-commit` command and check your changes:: Triaging tickets Users might report about web server downtimes or that builds are not triggered. If the ticket needs investigation on the servers, then add the label **Operations**. We have a strict code style that is easy to follow since you just have to install `pre-commit`_ and it will automatically run different linting tools (`autoflake`_, `autopep8`_, `docformatter`_, `isort`_, `prospector`_, `unify`_ and `yapf`_) to check your changes before you commit them. `pre-commit` will let you know if there were any problems that is wasn't able to fix automatically. When contributing code, then please follow the standard Contribution Guidelines set forth at `contribution-guide.org`_. When sitting down to do some triaging work, we start with the `list of untriaged tickets`_. We consider all tickets that do not have a label as untriaged. The first step is to categorize the ticket into one of the following categories and either close the ticket or assign an appropriate label. The reported issue … You are here to help on Read the Docs? Awesome, feel welcome and read the following sections in order to know how to ask questions and how to work on something. You will need Triage permission on the project in order to do this. You can ask one of the members of the :doc:`team` to give you access. `Tickets labelled with Needed: design decision <https://github.com/rtfd/readthedocs.org/issues?q=is:open+is:issue+label:"Needed:+design+decision">`_: Project leaders must take actions on these tickets. Otherwise no other contributor can go forward on them. `Tickets labelled with Needed: more information <https://github.com/rtfd/readthedocs.org/issues?utf8=✓&q=is:open+is:issue+label:"Needed:+more+information">`_: Come back to these tickets once in a while and close those that did not get any new information from the reporter. If new information is available, go and re-triage the ticket. `Tickets labelled with Operations <https://github.com/rtfd/readthedocs.org/issues?q=is:open+is:issue+label:Operations>`_: These tickets are for contributors who have access to the servers. `Tickets labelled with Support <https://github.com/rtfd/readthedocs.org/issues?q=is:open+is:issue+label:Support>`_: Experienced contributors or community members with a broad knowledge about the project should handle those. `Untriaged tickets <https://github.com/rtfd/readthedocs.org/issues?q=is:issue+is:open+no:label>`_: Go and triage them! `pre-commit` can also be run as a git pre-commit hook. You can set this up with:: or to run against a specific file:: … does not provide enough information … is a currently valid problem with the infrastructure: … is a question and needs answering: … is a small change to the source code … is a valid feature proposal … is a valid problem within the code base: … is not valid … requires a one-time action on the server: Project-Id-Version:  readthedocs-docs
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-09-17 19:05-0500
PO-Revision-Date: 2018-09-18 00:14+0000
Last-Translator: Anthony <aj@ohess.org>
Language: zh
Language-Team: Chinese (http://www.transifex.com/readthedocs/readthedocs-docs/language/zh/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 *Achieve world domination* (also needs the label **Needed: design decision**) *Builds are not starting* *Builds fail if conf.py contains non-ascii letters* *Builds fail when using matplotlib*: If the described issue was already fixed, then explain and instruct to re-trigger the build. *Change font size for the project's title* *Good First Issue* *High Priority* *How to use C modules with Sphinx autodoc?* *My account was set inactive. Why?* *My builds stopped working. Please help!* Ask for a link to the build log and for which project is affected. *Please change my username* *Please set me as owner of this abandoned project* *Provide better integration with service XYZ* *Provide way to upload arbitrary HTML files*: It was already decided that Read the Docs is not a dull hosting platform for HTML. So explain this and close the ticket. *Refactor namedtuples to dataclasess* *Sprintable* *Why are my builds failing?* Add the label **Needed: more information** if the reported issue does not contain enough information to decide if it is valid or not and ask on the ticket for the required information to go forward. We will re-triage all tickets that have the label **Needed: more information** assigned. If the original reporter left new information we can try to re-categorize the ticket. If the reporter did not come back to provide more required information after a long enough time, we will close the ticket (this will be roughly about two weeks). Additional labels for categorization Additionally to the labels already involved in the section above, we have a few more at hand to further categorize issues. After this installation, the next time you run `git commit` the `pre-commit run` command will be run immediately and will inform you of the changes and errors. After we finished the initial triaging of new tickets, no ticket should be left without a label. All members of our community are expected to follow our :doc:`/code-of-conduct`. Please make sure you are welcoming and friendly in all of our spaces. Ask usage questions ("How do I?") on `StackOverflow`_. Contributing to Read the Docs Contributing to development Discuss topics on `Gitter`_. Examples: For a full list of available labels and their meanings, see :doc:`issue-labels`. Get in touch Helpful links for triaging Helping on translations Here is a brief explanation on how we triage incoming tickets to get a better sense of what needs to be done on what end. Here is a list of links for contributors that look for work: If it's a valid bug, then add the label **Bug**. Try to reference related issues if you come across any. If the issue is urgent, assign this label. In the best case also go forward to resolve the ticket yourself as soon as possible. If the ticket contains a feature that aligns with the goals of Read the Docs, then add the label **Feature**. If the proposal seems valid but requires further discussion between core contributors because there might be different possibilities on how to implement the feature, then also add the label **Needed: design decision**. If the ticket contains a question about the Read the Docs platform or the code, then add the label **Support**. If the ticket is about code cleanup or small changes to existing features would likely have the **Improvement** label. The distinction for this label is that these issues have a lower priority than a Bug, and aren't implementing new features. If you are up to more challenging tasks with a bigger scope, then there are a set of tickets with a `Feature`_ or `Improvement`_ tag. These tickets have a general overview and description of the work required to finish. If you want to start somewhere, this would be a good place to start (make sure that the issue also have the `Accepted`_ label). That said, these aren't necessarily the easiest tickets. They are simply things that are explained. If you still didn't find something to work on, search for the `Sprintable`_ label. Those tickets are meant to be standalone and can be worked on ad-hoc. If you think the ticket is invalid comment why you think it is invalid, then close the ticket. Tickets might be invalid if they were already fixed in the past or it was decided that the proposed feature will not be implemented because it does not conform with the overall goal of Read the Docs. Also if you happen to know that the problem was already reported, reference the other ticket that is already addressing the problem and close the duplicate. If you want to deep dive and help out with development on Read the Docs, then first get the project installed locally according to the :doc:`Installation Guide <install>`. After that is done we suggest you have a look at tickets in our issue tracker that are labelled `Good First Issue`_. These are meant to be a great way to get a smooth start and won't put you in front of the most complex parts of the system. If you wish to contribute translations, please do so on `Transifex`_. Initial triage On IRC find us at `#readthedocs`_. Our code base is still maturing and the core team doesn't yet recommend running this as a pre-commit hook due to the number of changes this will cause while constructing a pull request. Independent pull requests with linting changes would be a great help to making this possible. Report bugs, suggest features or view the source code `on GitHub`_. Sprintable are all tickets that have the right amount of scope to be handled during a sprint. They are very focused and encapsulated. Tasks that require a one time action on the server should be assigned the two labels **Support** and **Operations**. This label marks tickets that are easy to get started with. The ticket should be ideal for beginners to dive into the code base. Better is if the fix for the issue only involves touching one part of the code. To run the `pre-commit` command and check your changes:: Triaging tickets Users might report about web server downtimes or that builds are not triggered. If the ticket needs investigation on the servers, then add the label **Operations**. We have a strict code style that is easy to follow since you just have to install `pre-commit`_ and it will automatically run different linting tools (`autoflake`_, `autopep8`_, `docformatter`_, `isort`_, `prospector`_, `unify`_ and `yapf`_) to check your changes before you commit them. `pre-commit` will let you know if there were any problems that is wasn't able to fix automatically. When contributing code, then please follow the standard Contribution Guidelines set forth at `contribution-guide.org`_. When sitting down to do some triaging work, we start with the `list of untriaged tickets`_. We consider all tickets that do not have a label as untriaged. The first step is to categorize the ticket into one of the following categories and either close the ticket or assign an appropriate label. The reported issue … You are here to help on Read the Docs? Awesome, feel welcome and read the following sections in order to know how to ask questions and how to work on something. You will need Triage permission on the project in order to do this. You can ask one of the members of the :doc:`team` to give you access. `Tickets labelled with Needed: design decision <https://github.com/rtfd/readthedocs.org/issues?q=is:open+is:issue+label:"Needed:+design+decision">`_: Project leaders must take actions on these tickets. Otherwise no other contributor can go forward on them. `Tickets labelled with Needed: more information <https://github.com/rtfd/readthedocs.org/issues?utf8=✓&q=is:open+is:issue+label:"Needed:+more+information">`_: Come back to these tickets once in a while and close those that did not get any new information from the reporter. If new information is available, go and re-triage the ticket. `Tickets labelled with Operations <https://github.com/rtfd/readthedocs.org/issues?q=is:open+is:issue+label:Operations>`_: These tickets are for contributors who have access to the servers. `Tickets labelled with Support <https://github.com/rtfd/readthedocs.org/issues?q=is:open+is:issue+label:Support>`_: Experienced contributors or community members with a broad knowledge about the project should handle those. `Untriaged tickets <https://github.com/rtfd/readthedocs.org/issues?q=is:issue+is:open+no:label>`_: Go and triage them! `pre-commit` can also be run as a git pre-commit hook. You can set this up with:: or to run against a specific file:: … does not provide enough information … is a currently valid problem with the infrastructure: … is a question and needs answering: … is a small change to the source code … is a valid feature proposal … is a valid problem within the code base: … is not valid … requires a one-time action on the server: 