---
layout: post
title: Creating a simple archive for posts in jekyll
comments: true
category: technology
---

Because jekyll parses markdown when generating your static site, you can make use of javascript and variables to create a simple, customisable archive of all your posts. 

<!--break-->

All thats really needed is a small snippet of code as follows:

{% highlight js %}
{% raw %}
{% for post in site.posts %}
{{ post.date | date: "%B %d, %Y" }}: <a href="{{ post.url }}">{{ post.title }}</a>
{% endfor %}
{% endraw %}
{% endhighlight %}

This example is available for download <a href="public/downloads/jekyll-archive.rar">here</a>