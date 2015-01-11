# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octopress-markdown-tag/version'

Gem::Specification.new do |spec|
  spec.name          = "octopress-markdown-tag"
  spec.version       = Octopress::Tags::Markdown::VERSION
  spec.authors       = ["Brandon Mathis"]
  spec.email         = ["brandon@imathis.com"]
  spec.summary       = %q{Write markdown anywhere on your Jekyll site.}
  spec.homepage      = "https://github.com/octopress/octopress-markdown-tag"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n").grep(%r{^(bin\/|lib\/|assets\/|changelog|readme|license)}i)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "clash"

  spec.add_runtime_dependency "jekyll", "~> 2.0"
end
