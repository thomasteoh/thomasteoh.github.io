---
layout: page
title: Archive
---

## Animals
{% for post in site.posts %}
  {% if post.category == "animals" %}
  <small>{{ post.date | date: "%B %d, %Y" }}: <a href="{{ post.url }}">{{ post.title }}</a></small>
  {% else %}
  {% endif %}
{% endfor %}

## Science
{% for post in site.posts %}
  {% if post.category == "science" %}
  <small>{{ post.date | date: "%B %d, %Y" }}: <a href="{{ post.url }}">{{ post.title }}</a></small>
  {% else %}
  {% endif %}
{% endfor %}

## Technology
{% for post in site.posts %}
  {% if post.category == "technology" %}
  <small>{{ post.date | date: "%B %d, %Y" }}: <a href="{{ post.url }}">{{ post.title }}</a></small>
  {% else %}
  {% endif %}
{% endfor %}
