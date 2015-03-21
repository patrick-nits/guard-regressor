# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/regressor/version'

Gem::Specification.new do |spec|
  spec.name          = "guard-regressor"
  spec.version       = Guard::Regressor::VERSION
  spec.authors       = ["Patrick Nitschke", "Erwin Schens"]
  spec.email         = ["patrick.nits@googlemail.com", "erwinschens@uni-koblenz.de"]
  spec.summary       = %q{Guard Plugin for Regressor}
  spec.description   = %q{GeRT}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency 'rails', '~> 4.0'

  spec.add_dependency 'guard-compat', '~> 1.2.1'
  spec.add_dependency 'regressor', '~> 0.3.4'
end
