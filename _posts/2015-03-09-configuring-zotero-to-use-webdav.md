---
layout: post
title: Configuring Zotero to use WebDAV for file syncing
comments: true
category: Science
---

Using [Zotero](http://www.zotero.org)'s sync service requires a Zotero account; if you haven't already, register for one [here](https://www.zotero.org/user/register). Once you have successfully signed up for this, we can continue to configure the file syncing separately.

While Zotero has its own internal online storage and synchronisation system, space available to store attachments (such as PDFs) is limited for free accounts. As you are free to use your own WebDAV capable online file storage account to store attachments, this becomes less of a problem. 

<!--break-->

## WebDAV

<div class="message">
  WebDAV is an Internet-based open standard that enables editing Web sites over HTTP and HTTPS connections. 
</div>

If you don't already have WebDAV capable file storage, [Box](http://www.box.com) offers a free account with 10 GB storage. This should be more than sufficient for our Zotero attachment synchronisation needs.

Keep this information on hand, we will need it later

## Configuring file syncing for Zotero

Open up your Zotero standalong installation, and navigate to the <strong>Edit > Preferences</strong>. Under the Sync tab, you should see a window like this:

![Zotero sync]({{ site.baseurl }}public/images/2015-03-13-zotero-sync.jpg)

Zotero Sync Server

- Username: Your Zotero username (eg. username@email.com)
- Password: Your Zotero password, that you selected upon registration

Check the <strong>Sync attachment files</strong> option under File Syncing, and find WebDAV within the dropdown menu. Then change the following:

- URL: <strong>https</strong>://<strong>dav.box.com/dav</strong>/zotero/
- Username: Your Box.com username (eg. username@email.com)
- Password: Your Box.com password, that you selected upon registration

Check <strong>Verify Server</strong>

And with that, you should be set up!
