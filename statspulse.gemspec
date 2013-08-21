# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'statspulse/version'

Gem::Specification.new do |spec|
  spec.name          = "statspulse"
  spec.version       = Statspulse::VERSION
  spec.authors       = ["Wylie Thomas"]
  spec.email         = ["wylie@wyliethomas.com"]
  spec.description   = %q{Captures server side analytics}
  spec.summary       = %q{Captures server side analytics}
  spec.homepage      = "http://www.wyliethomas.com/blog/projects/statspulse"
  spec.license       = "MIT"

  spec.rubyforge_project = "statspulse"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
