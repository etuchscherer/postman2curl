require "postman2curl"
require "postman2curl/parser"
require "postman2curl/translator"
require "postman2curl/version"
require "thor"

class Postman2curl::CLI < Thor
    desc "convert FILENAME", "Converts JSON requests to Curl"

    def convert(filename)
      Postman2curl::Parser.process(filename)
    end

    desc "version", "Display the Version"

    def version
      puts Postman2curl::VERSION
    end
end

