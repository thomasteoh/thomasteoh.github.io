---
layout: page
title: Archive
---

## Animals
{% for post in site.posts %}
  {% if post.category == "animals" %}
{{ post.date | date: "%B %d, %Y" }}: <a href="{{ post.url }}">{{ post.title }}</a>
  {% else %}
  {% endif %}
{% endfor %}

## Science
{% for post in site.posts %}
  {% if post.category == "science" %}
{{ post.date | date: "%B %d, %Y" }}: <a href="{{ post.url }}">{{ post.title }}</a>
  {% else %}
  {% endif %}
{% endfor %}

## Technology
{% for post in site.posts %}
  {% if post.category == "technology" %}
{{ post.date | date: "%B %d, %Y" }}: <a href="{{ post.url }}">{{ post.title }}</a>
  {% else %}
  {% endif %}
{% endfor %}



