---
layout: page
title: News
permalink: /news
comments: false
---

<div>
  {% include ads-main.html %}
</div>

<p>Date: <input type="text" id="datepicker"></p>

{% assign current_date = site.data._news.config.current_date  %}

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

  <script>
  
  var date_with_slashes = {{ current_date | replace: "_", "/" }}
  var current_date = "07_04_2021"
  $( function() {
    $( "#datepicker" ).datepicker({
      onSelect: function(dateText) {
        console.log("Selected date: " + dateText + "; input's current value: " + this.value);
        selected_date = dateText.replaceAll("/","_")
        console.log(selected_date)
        //need to load the news object in json and use it to create html
        var json_data = {{site.data._news | jsonify}}
        var selected_date_data =  json_data[selected_date]

        if (selected_date_data != undefined){
          $('.listrecent').empty();
          var count = Object.keys(selected_date_data.article).length;
          console.log(selected_date_data);
          console.log(count);
          for(let i=0; i<count; i++){
            $('.listrecent').append(" <div class=\"col-lg-4 col-md-6 mb-30px card-group\"> "+
              " <div class=\"card h-100\"> "+ 
                " <div class=\"maxthumb\"> "+
                  " <a href=\""+selected_date_data.article[i].page_url+"\"> "+
                  " <img "+
                    " class=\"img-fluid lazyimg\" "+
                    " src=\""+selected_date_data.article[i].urlToImage+"\"> "+
                  "</a> "+
                "</div> "+
                "<a class=\"text-dark\" href=\""+selected_date_data.article[i].urlToImage+"\"> "+
                "<div class=\"card-body\"> "+
                " <h2 class=\"card-title\"> "+
                  selected_date_data.article[i].title+
                  "</h2> "+
                  "<h4 class=\"card-text\"> "+
                  selected_date_data.article[i].description+
                  "</h4> "+
                "</div> "+
                "</a> "+
              "</div> "+
            "</div> ");
          }

        }else{
          $('.listrecent').empty();
          $('.listrecent').append('<h3>No news available for the selected date</h3>');
        }
    }
    });
  } );
  </script>
<!-- end news -->
