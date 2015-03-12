require 'rubygems'
require 'json'

class Postman2curl::Translator
    attr_accessor :name, :url, :method, :headers, :data, :data_mode

    def initialize(request)
        @name = request['name']
        @url = request['url']
        @method = request['method']
        @headers = request['headers']
        @data = request['data']
        @data_mode = request['dataMode']
        @query = "";
    end

    def to_curl
        puts "# #{@name}"
        puts "curl" << headers << method << data << url
        puts
    end

    def headers
        curlHeaders = ""
        if !@headers.empty?
            requestHeaders = @headers.split("\n")
            requestHeaders.each {|requestHeader| curlHeaders << " -H #{requestHeader.sub(" ", "")}"}
        end
        return "#{curlHeaders}"
    end

    def data
        if !@data.empty?

            @data.each{ |key| @query << "#{key['key']}=#{key['value']}&" }

            return " -d '#{@query}'"
        end
    end

    def method
        return " -X #{@method}"
    end

    def url
        return " \"#{@url}\""
    end

end

def help
    puts 'Invalid argument'
    puts 'Usage:'
    puts '$ ruby PostManRequest.rb fileToParse'
    puts
end
