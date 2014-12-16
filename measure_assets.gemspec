# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'measure_assets/version'

Gem::Specification.new do |spec|
  spec.name          = "measure_assets"
  spec.version       = MeasureAssets::VERSION
  spec.authors       = ["Jason Wall"]
  spec.email         = ["jasonw@getyardstick.com"]
  spec.summary       = %q{Gem for making sub-apps look EXACTLY like measure admin...}
  spec.description   = %q{Including menus, sub menus tabs, sub tabs, widgets (eventually). All the things.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lesselements-rails", ">= 0.9"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
