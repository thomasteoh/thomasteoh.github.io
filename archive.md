---
layout: page
title: Archive
---

{% for category in site.data.categories %}

## <small><span class="glyphicon glyphicon-{{ category.icon }}" aria-hidden="true"></span></small> {{ category.name }}

  {% for post in site.posts %}
    {% if post.category == category.name %}
  <small>{{ post.date | date: "%B %d, %Y" }}: <a href="{{ post.url }}">{{ post.title }}</a></small>
    {% else %}
    {% endif %}
  {% endfor %}

{% endfor %}
