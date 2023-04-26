---
layout: default
---

<h2>{{ tag }}</h2>

<ul class="posts">
{% for post in tagged_posts %}
    <li><span>{{ post.date | date: "%Y.%m.%d" }}</span> — <a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>
