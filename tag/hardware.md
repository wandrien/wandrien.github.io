---
layout: default
title: hardware
---

{% assign tag = "hardware" %}
{% assign tagged_posts = "" | split: "" %}
{% for post in site.posts %}
  {% if post.tags contains tag %}
    {% assign tagged_posts = tagged_posts | push: post %}
  {% endif %}
{% endfor %}


<h2>Посты с тэгом {{ tag }}</h2>

<ul class="posts">
{% for post in tagged_posts %}
    <li><span>{{ post.date | date: "%Y.%m.%d" }}</span> — <a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>
