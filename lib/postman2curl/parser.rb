require "json"
require "pathname"

class Postman2curl::Parser

    def self.process(file)
        path = Pathname.new(file)
        text = File.read(path.realpath.to_s)
        json = JSON.parse(text)

        requests = json["requests"]
        collection = []

        requests.each { |req| collection.push( Postman2curl::Translator.new(req) )}

        collection.each { |req| puts req.to_curl}
    end
end