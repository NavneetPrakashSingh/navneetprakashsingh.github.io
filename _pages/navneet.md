---
layout: page
title: Navneet Singh
permalink: /author/Navneet-Singh
comments: false
author: Navneet
---

<div class="row justify-content-between">
<div class="col">
        {% assign author = site.authors["Navneet"] %}
        {% assign authorData = site.data.authors["Navneet"] %}
        <div class="flex-first flex-md-unordered">
            <div class="mainheading">
                <!-- Author Box -->
                <div class="row post-top-meta">
                    <div class="col-xs-12 col-md-3 col-lg-2 text-center text-md-left mb-4 mb-md-0">
                        {% if author.avatar %}
                        <img class="navneet-photo" src="{{site.baseurl}}/{{ author.avatar }}" alt="{{ author.display_name }}">
                        {% endif %}
                    </div>
                    <div class="col-xs-12 col-md-9 col-lg-10 text-center text-md-left">
                        <div class="col-lg-1 col-md-1" style="display:inline-block">
                            {% include author-share.html %}
                        </div>
                        <div class="col-lg-10 col-md-10 author-summary lead">
                            <h4>Professional Summary</h4>
                        <div class="row">
                            <ul>
                            {%for summary in authorData.professional_summary%}
                            <li>{{ summary }}</li>
                            {%endfor%}
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- outside author box -->
            </div>
            <!-- outside main heading -->
            <!-- timeline starts here -->
            <div class="row">
                <div class="col-12 section-title">
                <section class="timeline-parent">
                <h2><span>Journey So Far</span></h2>
                </section>
                </div>
                <div class="row">
                <div class="container">
                <div id="timeline">
                    {% for sections in authorData.timeline_keys %}
                    {% assign remainder = forloop.index | modulo:2 %}
                    {% if remainder != 0 %}
                    <div class="timeline-item">
                        <div class="timeline-icon">
                        <!-- code for icon from config -->
                        {% assign icon = "fas " | append: authorData.timeline[sections].icon %}
                        <i id="author-icon" class={{icon}}></i>
                        </div>
                        <div class="timeline-content">
                            <h4>{{authorData.timeline[sections].header}}</h4>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                                Atque, facilis quo maiores magnam modi ab libero praesentium blanditiis.
                            </p>
                            <a href="#" class="btn">button</a>
                        </div>
                    </div>
                    {% else %}
                    <div class="timeline-item">
                        <div class="timeline-icon"> 
                        <i class={{authorData.timeline[sections].icon}}><i>                           
                        </div>
                        <div class="timeline-content right">
                        {% assign icon = "fas " | append: authorData.timeline[sections].icon %}
                        <i class={{icon}}></i>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque, facilis quo. Maiores magnam modi ab libero praesentium blanditiis consequatur aspernatur accusantium maxime molestiae sunt ipsa.
                            </p>
                            <a href="#" class="btn">button</a>
                        </div>
                    </div>
                    {% endif %}
                    {% endfor %}
                    <!-- right side of the timeline item -->
                </div>
            </div>
            </div>
            </div>
            <!-- timeline ends here -->
        </div>
</div>
</div>
