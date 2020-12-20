require 'net/https'
require 'net/http'
require 'open-uri'
require 'json'

module Jekyll
    class CategoryPageGenerator < Generator
  
      def generate(site)
        puts "++++++++++ Inside Generator ++++++++++++++++++++"
        time = Time.new
        uuid = time.year.to_s+"_"+time.month.to_s+"_"+time.day.to_s
        file_path = "_data/_news/"+uuid+".yaml"

        # url = URI.parse('https://jsonkeeper.com/b/OYMM')
        # req = Net::HTTP::Get.new(url.request_uri)
        # http = Net::HTTP.new(url.host, url.port)
        # http.use_ssl = (url.scheme == "https")
        # response = http.request(req) 
        # json_to_save = JSON.parse('{"article" : []}')
        # index = 0
        # for json_response in JSON.parse(response.body)['articles']
        #     url = json_response["url"].split('/')
        #     json_response["page_url"] = "/"+url[url.length-1]
        #     json_to_save["article"] << json_response
        # end
        # puts JSON.parse(json_to_save.to_json).to_yaml


        # Dynamically generating static pages here
        # @news_page_link = "+++++++++++++++++++++++++"
        # @news_page_heading  = "+++++++++++++++++++++++++"
        # @news_image       = "+++++++++++++++++++++++++"
        # @news_source      = "+++++++++++++++++++++++++"
        # @news_summary      = "+++++++++++++++++++++++++"
        # @news_body      = "+++++++++++++++++++++++++"
        # @news_more      = "+++++++++++++++++++++++++"

        # # render template
        # template = File.read('_pages/templates/template.html.erb')
        # result = ERB.new(template).result(binding)

        # # write result to file
        # File.open('_pages/news/filename.html', 'w+') do |f|
        # f.write result
        # end
        # puts "Template updated successfully"

        # dynamically generating static pages ends here
        if File.file?(file_path)
            puts "File exists"
        else
            # change /_data/_news/config.yaml and update the current date 
            config_file_path = "_data/_news/config.yaml"
            json_str = JSON[{"current_date" => uuid.to_s}]
            out_file = File.new(config_file_path, "w")
            out_file.puts(JSON.parse(json_str).to_yaml)
            out_file.close
            puts "----- Config file updated -----"
            # end change /_data/_news/config.yaml and update the current date  

            # store the json by hitting newsAPI url endpoint

            url = URI.parse('https://jsonkeeper.com/b/5E8L')
            req = Net::HTTP::Get.new(url.request_uri)
            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = (url.scheme == "https")
            response = http.request(req) 
            json_to_save = JSON.parse('{"article" : []}')
            out_file = File.new(file_path, "a")
            for json_response in JSON.parse(response.body)['articles']
                url = json_response["url"].split('/')
                json_response["page_url"] = "/"+url[url.length-1]
                json_to_save["article"] << json_response
                
                # Dynamically generating static pages here
                @news_page_link = json_response["page_url"]
                @news_page_heading  = json_response["title"]
                @news_image       = json_response["urlToImage"]
                @news_source      = json_response["source"]["name"]
                @news_summary      = json_response["description"]
                @news_body      = json_response["content"]
                @news_more      = json_response["url"]

                # render template
                template = File.read('_pages/templates/template.html.erb')
                result = ERB.new(template).result(binding)

                # write result to file
                File.open('_pages/news/'+url[url.length-1]+".md", 'w+') do |f|
                f.write result
                end
                puts "Template updated successfully"
            end
            puts "Converted to json and added to file successfully"
            # puts JSON.parse(json_to_save.to_json).to_yaml
            #saving news to yaml file
            out_file.puts(JSON.parse(json_to_save.to_json).to_yaml)
            puts "News in Yaml saved successfully"
            out_file.close
        end
      end
    end
  end