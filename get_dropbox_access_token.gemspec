# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'get_dropbox_access_token/version'

Gem::Specification.new do |spec|
  spec.name          = "get_dropbox_access_token"
  spec.version       = GetDropboxAccessToken::VERSION
  spec.authors       = ["fukayatsu"]
  spec.email         = ["fukayatsu@gmail.com"]
  spec.description   = %q{A command to get Dropbox access_token/request_token}
  spec.summary       = %q{A command to get Dropbox access_token/request_token}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "dropbox-sdk", "~> 1.6.2"
  spec.add_dependency "colored", "~> 1.2"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
end
