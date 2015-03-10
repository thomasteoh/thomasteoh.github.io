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
  {% if post.tag == "science" %}
  <small>{{ post.category | date: "%B %d, %Y" }}: <a href="{{ post.url }}">{{ post.title }}</a></small>
  {% else %}
  {% endif %}
{% endfor %}

## Technology
{% for post in site.posts %}
  {% if post.tag == "technology" %}
  <small>{{ post.category | date: "%B %d, %Y" }}: <a href="{{ post.url }}">{{ post.title }}</a></small>
  {% else %}
  {% endif %}
{% endfor %}
