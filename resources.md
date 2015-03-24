---
layout: page
title: Resources
---

On this page, reference resources will be listed.

### Taxonomy references 
 
{% for reference in site.data.taxonomy-references %}
- [{{ reference.category }}]({{ reference.category }})
{% endfor %}