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
                <div class="row section-width">
                <div class="container">
                <div id="timeline">
                    {% for sections in authorData.timeline_keys %}
                    {% assign remainder = forloop.index | modulo:2 %}
                    {% if remainder != 0 %}
                    <div class="timeline-item">
                        <div class="timeline-icon">
                        <!-- code for icon from config -->
                        {% assign icon = authorData.timeline[sections].icon %}
                        <i class="author-icon fas {{icon}}"></i>
                        </div>
                        <div class="timeline-content">
                            <h4>{{authorData.timeline[sections].header}}</h4>
                            <div>
                            <ul class="timeline-content-left">
                                <li>{{authorData.timeline[sections].title}}</li>
                                <li>{{authorData.timeline[sections].duration}}</li>
                                <li>{{authorData.timeline[sections].location}}</li>
                            </ul>  
                            </div>                          
                            <div class="btn btn-outline-timeline" onclick="showModal('{{sections}}')">{{authorData.timeline[sections].buttonContent}}</div>                            
                        </div>
                    </div>
                      <!-- Modal -->
                    <div class="modal" id="{{sections}}" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Roles And Responsibilities</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <ul>
                            {% for content in authorData.timeline[sections].content %}
                            <li>{{content}}</li>
                            {% endfor %}
                            </ul>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                        </div>
                    </div>
                    </div>
                    <!-- modal ends here -->
                    {% else %}
                    <div class="timeline-item">
                        <div class="timeline-icon"> 
                        {% assign icon = authorData.timeline[sections].icon %}
                        <i class="author-icon fas {{icon}}"></i>                           
                        </div>
                        <div class="timeline-content right">
                        <h4>{{authorData.timeline[sections].header}}</h4>
                        <div>
                        <ul class="timeline-content-left">
                                <li>{{authorData.timeline[sections].title}}</li>
                                <li>{{authorData.timeline[sections].duration}}</li>
                                <li>{{authorData.timeline[sections].location}}</li>
                        </ul>                   
                        </div>         
                        <div class="btn btn-outline-timeline" onclick="showModal('{{sections}}')">{{authorData.timeline[sections].buttonContent}}</div>
                        </div>
                    </div>
                    <!-- Modal -->
                    <div class="modal" id="{{sections}}" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Roles And Responsibilities</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <ul>
                            {% for content in authorData.timeline[sections].content %}
                            <li>{{content}}</li>
                            {% endfor %}
                            </ul>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                        </div>
                    </div>
                    </div>
                    <!-- modal ends here -->
                    {% endif %}
                    {% endfor %}
                    <!-- right side of the timeline item -->
                </div>
            </div>
            </div>
            </div>
            <!-- timeline ends here -->
            <div class="row">
                <div class="col-12 section-title">
                    <section class="">
                        <h2><span>Personal Projects</span></h2>
                    </section>
                    <section>
                    {% include projectbox.html %}
                    </section>
                </div>
            </div>
            <div class="row">
                <div class="col-12 section-title">
                <section>
                    <h2><span>Skill Set</span></h2>
                </section>
                <section>
                    {% include skill-set.html %}
                </section>
            </div>
            </div>
        </div>
</div>
</div>
