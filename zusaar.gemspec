# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zusaar/version'

Gem::Specification.new do |spec|
  spec.name          = "zusaar"
  spec.version       = Zusaar::VERSION
  spec.authors       = ["fukayatsu"]
  spec.email         = ["fukayatsu@gmail.com"]
  spec.description   = %q{A Ruby interface to the Zusaar API.}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/fukayatsu/zusaar"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday', ['~> 0.8', '< 0.10']
  spec.add_dependency "faraday_middleware", "~> 0.9.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
