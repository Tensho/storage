# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'storage/version'

Gem::Specification.new do |spec|
  spec.name          = "storage"
  spec.version       = Storage::VERSION
  spec.authors       = ["Andrew Babichev"]
  spec.email         = ["ababichev@dataart.com"]
  spec.summary       = %q{Simple trie storage}
  spec.description   = %q{This is a library provides storage for words. It's implemented with preifx tree.}
  spec.homepage      = "https://github.com/Tensho/ruby_dataart"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "simplecov" #require: false
  spec.add_development_dependency "minitest-spec-context"

  spec.add_runtime_dependency "rubyzip"
end
