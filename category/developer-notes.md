---
layout: default
title: developer-notes
permalink: developer-notes/
---

{% assign category = "developer-notes" %}
{% assign posts = "" | split: "" %}
{% for post in site.posts %}
  {% if post.category == category %}
    {% assign posts = posts | push: post %}
  {% endif %}
{% endfor %}


<h2>Посты в разделе {{ category }}</h2>

<ul class="posts">
{% for post in posts %}
    <li><span>{{ post.date | date: "%Y.%m.%d" }}</span> — <a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>
