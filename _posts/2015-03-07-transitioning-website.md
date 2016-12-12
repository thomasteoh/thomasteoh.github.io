---
layout: post
title: Transitioning the website to GitHub pages and jekyll
comments: true
category: Technology
description: Documenting my move to static page websites on GitHub for my personal website. In short, works nicely and the system is well organised.
---

With the discontinuation of the free hosting option by <a href="http://www.crucial.com.au">Crucial</a>, I found myself in the market for web hosting. My needs have been to this date simple and very low end; I was using it to essentially serve a webpage with links to ways to get in touch with me. For this, migrating to Crucial's <a href="http://www.crucial.com.au/web-hosting/">paid service</a> made little sense, as it would more than likely go underutilised.

<!--break-->

## Domain names and DNS

I'd previously transferred my domain name, tteoh.com, from <a href="http://www.name.com.au">name.com.au</a> to <a href="https://www.namecheap.com/">Namecheap</a>, who provided a free DNS service alongside their domain names. If your domain registrar does not provide a DNS service, they also offer a free DNS hosting option called <a href="https://www.namecheap.com/domains/freedns.aspx">FreeDNS</a>, which I have used with a different domain. 

Using FreeDNS was pretty straightforwards, and involved setting my nameservers according to the details at <a href="https://www.namecheap.com/support/knowledgebase/article.aspx/536/51/how-do-i-set-my-domain-to-use-namecheaps-freedns-servers">this page</a>. My domain stayed at an INACTIVE status under Namecheap for a while, and only was fixed once I contacted support, <a href="https://www.namecheap.com/support/live-chat/general.aspx">here</a>. The link to contact them is at the bottom of the page. 

## Github pages and git

I took my current predicament as an opportunity to transition to a new system based on <a href="https://pages.github.com/">Github pages</a> as a hosting platform for a lightweight blog. It appears to be working pretty well so far (nice, fast, and reliable!). 

<div class="message">
  It works! 
</div>

An added advantage of this system is the git backend, a distributed revision control system. While I won't be using all its features, it does a really good job of pushing updates to files and has inbuilt version control, in the likely event that I break something. 

## Blogging with jekyll

Github pages works very well with and are powered by <a href="http://jekyllrb.com/">jekyll</a>, a blog-aware static site generator. To use it, you work with text files on your computer and it runs it through a converter and renders out web-ready files. I've been meaning to try it out for a while now, but never really got around to it, in a manner of speaking; after all, everything was working just fine as it was, so why change? 

There are some definite benefits to this system. Static sites require no processing of PHP and databases on the server side, unlike content management systems like <a href="https://wordpress.com/">Wordpress</a>. You could even host processed jekyll files on an extremely basic web server or a file hosting service <a href="http://www.dropbox.com">Dropbox</a> if you wanted! 
