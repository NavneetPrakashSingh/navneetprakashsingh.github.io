require 'net/https'
require 'net/http'
require 'open-uri'
require 'json'

module Jekyll
    class CategoryPageGenerator < Generator
  
      def generate(site)
        puts "++++++++++ Inside Generator ++++++++++++++++++++"

        # io = open('http://api.stackexchange.com/2.2/tags/html/top-answerers/month?site=stackoverflow')
        # puts JSON.parse(io.body).to_yaml
        url = URI.parse('https://jsonkeeper.com/b/OYMM')
        req = Net::HTTP::Get.new(url.request_uri)
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = (url.scheme == "https")
        response = http.request(req)
        puts response.body


        out_file = File.new("_sample/sample.md", "w")
        out_file.puts(JSON.parse(response.body).to_yaml)
        out_file.close
      end
    end
  end