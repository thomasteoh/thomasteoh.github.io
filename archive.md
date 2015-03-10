---
layout: page
title: Archive
---

## Animals
{% for post in site.posts %}
  {% if post.tag == "animals" %}
{{ post.date | date: "%B %d, %Y" }}: <a href="{{ post.url }}">{{ post.title }}</a>
  {% else %}
  {% endif %}
{% endfor %}

## Science
{% for post in site.posts %}
  {% if post.tag == "science" %}
{{ post.date | date: "%B %d, %Y" }}: <a href="{{ post.url }}">{{ post.title }}</a>
  {% else %}
  {% endif %}
{% endfor %}

## Technology
{% for post in site.posts %}
  {% if post.tag == "technology" %}
{{ post.date | date: "%B %d, %Y" }}: <a href="{{ post.url }}">{{ post.title }}</a>
  {% else %}
  {% endif %}
{% endfor %}



