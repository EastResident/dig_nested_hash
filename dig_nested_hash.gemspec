# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dig_nested_hash/version'

Gem::Specification.new do |spec|
  spec.name          = "dig_nested_hash"
  spec.version       = DigNestedHash::VERSION
  spec.authors       = ["sho ishihara"]
  spec.email         = ["sho.ishihara@theport.jp"]

  spec.summary       = %q{This gem can handle nested Hash easily.}
  spec.homepage      = "https://github.com/EastResident/dig_nested_hash"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
