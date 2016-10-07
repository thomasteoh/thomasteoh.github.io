---
layout: page
title: Related
---

{% for website in site.data.related %}

  <h2>{{ website.name }}</h2>

  <ul>
    <li>Website: <a href="{{ website.address }}">{{ website.address-text }}</a></li>
    <li>Contact: <a href="{{ website.contact }}">{{ website.contact-text }}</a></li>
    <li>Description:<br><div class="message">{{ website.description }}</div></li>
  </ul>

{% endfor %}
