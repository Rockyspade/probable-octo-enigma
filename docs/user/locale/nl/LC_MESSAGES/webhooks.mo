��    .      �              �  }   �  f   {     �  	   �     �  +        >     Q  "   e  "   �     �  Z   �  �   "  |   �  _   &    �     �     �  ,   �  v  �  5  S	  �   �
  L   c  
   �     �     �  e   �  �   S  �  �  T   �  B   	  5  L     �  �   �  :   d  l   �  !        .     ?     T  �   ]  �   I  6  �            �    }   �  f   P     �  	   �     �  +   �          &  "   :  "   ]     �  Z   �  �   �  |   ~  _   �    [     v     }  ,   �  v  �  5  (  �   ^  L   8   
   �      �      �   e   �   �   (!  �  �!  T   �#  B   �#  5  !$     W%  �   X&  :   9'  l   t'  !   �'     (     (     )(  �   2(  �   )  6  �)     �*     �*   A command like the one above could be called from a cron job or from a hook inside Git_, Subversion_, Mercurial_, or Bazaar_. As an example, the URL pattern looks like this: *readthedocs.org/api/v2/webhook/<project-name>/<id>/*. Authentication Bitbucket Click **Integrations** Click **Webhooks** and then **Add webhook** Debugging webhooks Default: **latest** Finish by clicking **Add Webhook** Finish by clicking **Add webhook** Finish by clicking **Save** For **Content type**, both *application/json* and *application/x-www-form-urlencoded* work For **Payload URL**, use the URL of the integration on Read the Docs, found on the the project's **Integrations** Admin dashboard page For **URL**, use the URL of the integration on Read the Docs, found on the **Dashboard** > **Admin** > **Integrations** page For example, the cURL command to build the ``dev`` branch, using the token ``1234``, would be:: For repositories that are not hosted with a supported provider, we also offer a generic API endpoint for triggering project builds. Similar to webhook integrations, this integration has a specific URL, found on the project's **Integrations** Admin dashboard page on readthedocs.org. GitHub GitLab Go to the **Settings** page for your project If you are experiencing problems with an existing webhook, you may be able to use the integration detail page to help debug the issue. Each project integration, such as a webhook or the generic API endpoint, stores the HTTP exchange that takes place between Read the Docs and the external source. You'll find a list of these exchanges in any of the integration detail pages. If you import a project using a :ref:`connected account <getting_started:Sign Up and Connect an External Account>`, a webhook will be set up automatically for your repository. However, if your project was not imported through a connected account, you may need to manually configure a webhook for your project. It might be necessary to re-establish a webhook if you are noticing problems. To resync a webhook from Read the Docs, visit the integration detail page and follow the directions for re-syncing your repository webhook. Leave the default **Push events** selected and mark **Tag push events** also Parameters Resyncing webhooks Select **Just the push event** The integration token. You'll find this value on the project's **Integrations** Admin dashboard page. The names of the branches to trigger builds for. This can either be an array of branch name strings, or just a single branch name string. The primary method that Read the Docs uses to detect changes to your documentation is through the use of *webhooks*. Webhooks are configured with your repository provider, such as GitHub, Bitbucket or GitLab, and with each commit, merge, or other change to your repository, Read the Docs is notified. When we receive a webhook notification, we determine if the change is related to an active version for your project, and if it is, a build is triggered for that version. The webhook token, intended for the GitHub **Secret** field, is not yet implemented. This endpoint accepts the following arguments during an HTTP POST: This endpoint requires authentication. If authenticating with an integration token, a check will determine if the token is valid and matches the given project. If instead an authenticated user is used to make this request, a check will be performed to ensure the authenticated user is an owner of the project. To manually set up a webhook, click **Add integration** on your project's **Integrations** Admin dashboard page and select the integration type you'd like to add. After you have added the integration, you'll see a link to information about the integration. Token authentication is required to use the generic endpoint, you will find this token on the integration details page. The token should be passed in as a request parameter, either as form data or as part of JSON data input. Under **Triggers**, **Repository push** should be selected Use this URL when setting up a new webhook with your provider -- these steps vary depending on the provider: Using the generic API integration Webhook Creation Webhook Integrations Webhooks You can verify if the webhook is working at the bottom of the GitHub page under **Recent Deliveries**. If you see a Response 200, then the webhook is correctly configured. For a 403 error, it's likely that the Payload URL is incorrect. You need this information for the URL, webhook, or Payload URL needed by the repository provider such as GitHub, GitLab, or Bitbucket. You'll find a list of configured webhook integrations on your project's admin dashboard, under **Integrations**. You can select any of these integrations to see the *integration detail page*. This page has additional configuration details and a list of HTTP exchanges that have taken place for the integration. branches token Project-Id-Version:  readthedocs-docs
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-09-17 19:05-0500
PO-Revision-Date: 2018-09-18 00:29+0000
Last-Translator: Anthony <aj@ohess.org>
Language: nl
Language-Team: Dutch (http://www.transifex.com/readthedocs/readthedocs-docs/language/nl/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 A command like the one above could be called from a cron job or from a hook inside Git_, Subversion_, Mercurial_, or Bazaar_. As an example, the URL pattern looks like this: *readthedocs.org/api/v2/webhook/<project-name>/<id>/*. Authentication Bitbucket Click **Integrations** Click **Webhooks** and then **Add webhook** Debugging webhooks Default: **latest** Finish by clicking **Add Webhook** Finish by clicking **Add webhook** Finish by clicking **Save** For **Content type**, both *application/json* and *application/x-www-form-urlencoded* work For **Payload URL**, use the URL of the integration on Read the Docs, found on the the project's **Integrations** Admin dashboard page For **URL**, use the URL of the integration on Read the Docs, found on the **Dashboard** > **Admin** > **Integrations** page For example, the cURL command to build the ``dev`` branch, using the token ``1234``, would be:: For repositories that are not hosted with a supported provider, we also offer a generic API endpoint for triggering project builds. Similar to webhook integrations, this integration has a specific URL, found on the project's **Integrations** Admin dashboard page on readthedocs.org. GitHub GitLab Go to the **Settings** page for your project If you are experiencing problems with an existing webhook, you may be able to use the integration detail page to help debug the issue. Each project integration, such as a webhook or the generic API endpoint, stores the HTTP exchange that takes place between Read the Docs and the external source. You'll find a list of these exchanges in any of the integration detail pages. If you import a project using a :ref:`connected account <getting_started:Sign Up and Connect an External Account>`, a webhook will be set up automatically for your repository. However, if your project was not imported through a connected account, you may need to manually configure a webhook for your project. It might be necessary to re-establish a webhook if you are noticing problems. To resync a webhook from Read the Docs, visit the integration detail page and follow the directions for re-syncing your repository webhook. Leave the default **Push events** selected and mark **Tag push events** also Parameters Resyncing webhooks Select **Just the push event** The integration token. You'll find this value on the project's **Integrations** Admin dashboard page. The names of the branches to trigger builds for. This can either be an array of branch name strings, or just a single branch name string. The primary method that Read the Docs uses to detect changes to your documentation is through the use of *webhooks*. Webhooks are configured with your repository provider, such as GitHub, Bitbucket or GitLab, and with each commit, merge, or other change to your repository, Read the Docs is notified. When we receive a webhook notification, we determine if the change is related to an active version for your project, and if it is, a build is triggered for that version. The webhook token, intended for the GitHub **Secret** field, is not yet implemented. This endpoint accepts the following arguments during an HTTP POST: This endpoint requires authentication. If authenticating with an integration token, a check will determine if the token is valid and matches the given project. If instead an authenticated user is used to make this request, a check will be performed to ensure the authenticated user is an owner of the project. To manually set up a webhook, click **Add integration** on your project's **Integrations** Admin dashboard page and select the integration type you'd like to add. After you have added the integration, you'll see a link to information about the integration. Token authentication is required to use the generic endpoint, you will find this token on the integration details page. The token should be passed in as a request parameter, either as form data or as part of JSON data input. Under **Triggers**, **Repository push** should be selected Use this URL when setting up a new webhook with your provider -- these steps vary depending on the provider: Using the generic API integration Webhook Creation Webhook Integrations Webhooks You can verify if the webhook is working at the bottom of the GitHub page under **Recent Deliveries**. If you see a Response 200, then the webhook is correctly configured. For a 403 error, it's likely that the Payload URL is incorrect. You need this information for the URL, webhook, or Payload URL needed by the repository provider such as GitHub, GitLab, or Bitbucket. You'll find a list of configured webhook integrations on your project's admin dashboard, under **Integrations**. You can select any of these integrations to see the *integration detail page*. This page has additional configuration details and a list of HTTP exchanges that have taken place for the integration. branches token 