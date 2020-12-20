---
layout: page
title: News
permalink: /news
comments: false
---

{% assign current_date = site.data._news.config.current_date %}

<!-- begin news -->

<div class="row listrecent">
{% for items in site.data._news.[current_date].article %}
<div class="col-lg-4 col-md-6 mb-30px card-group">
  <div class="card h-100">
    <div class="maxthumb">
      <a href="{{ items.page_url }}">
        <img
        class="img-fluid lazyimg"
        src="{{ items.urlToImage }}">
      </a>
    </div>
    <a class="text-dark" href="{{ items.page_url }}">
    <div class="card-body">
      <h2 class="card-title">
        {{ items.title }}
      </h2>
      <h4 class="card-text">
        {{ items.description }}
      </h4>
    </div>
    </a>
  </div>
</div>
{% endfor %}
</div>
<!-- end news -->
