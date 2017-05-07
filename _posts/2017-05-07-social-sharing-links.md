---
layout: post
title: Sharing to social media using simple links
comments: true
category: Technology
description: Create links with Github pages (using jekyll) to allow sharing to social media without needing to load extra javascript
image: http://tteoh.com/public/images/2017-05-07-social-sharing.png
---

Allowing visitors to share pages to social media is a good way of disseminating information and driving traffic to your website. The issue I have previously had with it has been that the recommended methods, embedded buttons, relied on adding a script to each of your pages, which had the potential to slow down page loading times or track your usage across different websites. HTML hyperlinks, on the other hand, are universally supported and provide a pretty easy to use way for visitors to directly create a post.

<!--break-->

The backend of Github pages uses jekyll, which conveniently stores useful information such as the address of each post. Specifically, this can be obtained by calling `page.url`. As these links need to come from externally, you'll need the rest of your website's address included as well, which can be fetched using `absolute_url`. So the little string you'll include where you need to put your url is as follows:

{% raw %}
`{{ page.url | absolute_url }}`
{% endraw %}

From there, it is just a matter of working out the format of the links for the respective social media sites that you'd like to use. Some sites support including extra information as well, which can be handy for keeping a track of engagement.

### Facebook

{% raw %}
    http://www.facebook.com/sharer.php?u={{ page.url | absolute_url }}&t={{ page.title }}
{% endraw %}

### Twitter

{% raw %}
    http://twitter.com/share?text={{ page.title }}&url={{ page.url | absolute_url }}&hashtags={{ page.category }}
{% endraw %}

### Google+

{% raw %}
    https://plus.google.com/share?url={{ page.url | absolute_url }}">Google+</a></small>
{% endraw %}

### An example

You can see them working for this post just below... I've even added a fancy graphic for this page when it gets shared!
