---
layout: page
title: Related
---

{% for website in site.data.related %}

  <h2>{{ website.name }}</h2>

  <ul>
    <li>Website: <a href="{{ website.address }}">{{ website.address-text }}</a></li>
    <li>Contact: [{{ website.contact-text }}]({{ website.contact }})</li>
    <li>Description:<br><div class="message">{{ website.description }}</div></li>
  </ul>

{% endfor %}
