# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fay/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "fay-rails"
  spec.version       = Fay::Rails::VERSION
  spec.authors       = ["Thomas Chen"]
  spec.email         = ["foxnewsnetwork@gmail.com"]
  spec.homepage      = "http://github.com/foxnewsnetwork/fay-rails"
  spec.license       = "MIT"
  spec.summary       = %q{Haskell fay adapter for the Rails asset pipeline.}
  spec.description   = %q{Haskell fay adapter for the Rails asset pipeline.}
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'railties'
  spec.add_runtime_dependency 'tilt'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
