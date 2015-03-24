---
layout: page
title: Archive
---

{% for category in site.data.categories %}

## {{ category.name }}

  {% for post in site.posts %}
    {% if post.category == category.name %}
  <small>{{ post.date | date: "%B %d, %Y" }}: <a href="{{ post.url }}">{{ post.title }}</a></small>
    {% else %}
    {% endif %}
  {% endfor %}

{% endfor %}
