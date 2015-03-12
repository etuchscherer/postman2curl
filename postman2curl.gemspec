# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'postman2curl/version'

Gem::Specification.new do |spec|
  spec.name          = "postman2curl"
  spec.version       = Postman2curl::VERSION
  spec.authors       = ["Eric Tuchscherer"]
  spec.email         = ["eric.tuchscherer@mheducation.com"]
  spec.summary       = %q{Utility for converting Postman to Curl}
  spec.description   = %q{Command line utility for converting exported JSON collections from Postman, to Curl.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
#  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.executables   = ["postman2curl"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  spec.add_dependency "json"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
