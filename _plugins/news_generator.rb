require 'net/https'
require 'net/http'
require 'open-uri'
require 'json'

module Jekyll
    class CategoryPageGenerator < Generator

      def get_summary(content_url)
        begin
          uri = URI.parse("https://api-makemetechie.herokuapp.com/api/")
          header = {'Content-Type': 'application/json'}
          content = {url:content_url}

          # Create the HTTP objects
          http = Net::HTTP.new(uri.host, uri.port)
          http.use_ssl = true
          http.read_timeout = 30
          request = Net::HTTP::Post.new(uri.request_uri, header)
          request.body = content.to_json

          # Send the request
          response = http.request(request)
          return response.body
        rescue HTTPInternalServerError => e
          puts e
        end
      end
  
      def generate(site)
        # puts "++++++++++ Inside Generator ++++++++++++++++++++"
        # time = Time.new
        # uuid = time.month.to_s+"_"+time.day.to_s+"_"+time.year.to_s
        # file_path = "_data/_news/"+uuid+".yaml"
        # puts file_path
        # puts "-------------------------------"

        # # dynamically generating static pages ends here
        # if File.file?(file_path)
        #     puts "File exists"
        # else
        #     # change /_data/_news/config.yaml and update the current date 
        #     config_file_path = "_data/_news/config.yaml"
        #     json_str = JSON[{"current_date" => uuid.to_s}]
        #     out_file = File.new(config_file_path, "w")
        #     out_file.puts(JSON.parse(json_str).to_yaml)
        #     out_file.close
        #     puts "----- Config file updated -----"
        #     # end change /_data/_news/config.yaml and update the current date  

        #     # store the json by hitting newsAPI url endpoint
        #     #Test URL: https://jsonkeeper.com/b/OYMM
        #     #PROD: http://newsapi.org/v2/everything?q=technology&apiKey=2091bf4714d3486d9f9ef80346ad60f8
        #     url = URI.parse('http://newsapi.org/v2/everything?q=technology&apiKey=2091bf4714d3486d9f9ef80346ad60f8')
        #     req = Net::HTTP::Get.new(url.request_uri)
        #     http = Net::HTTP.new(url.host, url.port)
        #     http.use_ssl = (url.scheme == "https")
        #     response = http.request(req) 
        #     json_to_save = JSON.parse('{"article" : []}')
        #     # out_file = File.new(file_path, "a")
        #     for json_response in JSON.parse(response.body)['articles']
        #         url = json_response["url"].split('/')
        #         json_response["page_url"] = "/"+url[url.length-1]
        #         json_to_save["article"] << json_response

        #         puts json_response["url"]
        #         #send POST request to Summary api and get the summary related to the url
        #         summary = get_summary(json_response["url"])

        #         # Dynamically generating static pages here
        #         @news_page_link = json_response["page_url"]
        #         @news_page_heading  = json_response["title"]
        #         @news_image       = json_response["urlToImage"]
        #         @news_source      = json_response["source"]["name"]
        #         @news_summary      = json_response["description"]
        #         @news_body      = json_response["content"]
        #         @news_more      = json_response["url"]

        #         # render template
        #         template = File.read('_pages/templates/template.html.erb')
        #         result = ERB.new(template).result(binding)

        #         # write result to file
        #         File.open('_pages/news/'+url[url.length-1]+".md", 'w+') do |f|
        #         f.write result
        #         end
        #         puts "Template updated successfully"
        #     end
        #     puts "Converted to json and added to file successfully"
        #     #saving news to yaml file
        #     out_file.puts(JSON.parse(json_to_save.to_json).to_yaml)
        #     puts "News in Yaml saved successfully"
        #     out_file.close
        # end
      end
    end
  end