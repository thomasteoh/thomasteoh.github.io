---
layout: post
title: Creating a simple archive for posts in jekyll
comments: true
category: Technology
---

Because jekyll parses markdown when generating your static site, you can make use of javascript and variables to create a simple, customisable archive of all your posts. 

<!--break-->

On the official [jekyll documentation](http://jekyllrb.com/docs/posts/), the way to set it up is listed under displaying an index of posts. As a programming lay-person, I interpret it as saying: Go through all the posts on the site, and every time you encounter a post, output these post variables. This serves quite well to provide an ordered list of all the posts that you have made.

As with most other things, there is a degree of flexibility in the way you would like to implement it. Here is the edited version that I am using for my archive:

{% highlight js %}
{% raw %}
{% for post in site.posts %}
{{ post.date | date: "%B %d, %Y" }}: <a href="{{ post.url }}">{{ post.title }}</a>
{% endfor %}
{% endraw %}
{% endhighlight %}

This example is available for download <a href="{{ site.baseurl }}public/downloads/jekyll-archive.rar">here</a>