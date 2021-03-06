# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_poro/version'

Gem::Specification.new do |spec|
  spec.name          = "active_poro"
  spec.version       = ActivePoro::VERSION
  spec.authors       = ["Miguel Diaz"]
  spec.email         = ["miguel.diaz@codescrum.com"]
  spec.summary       = %q{Makes possible the use of has_many, has_one, belongs_to associations in POROs as you would expect.}
  spec.description   = %q{Ever wanted to have active-record like associations in your POROs?, here is a proposed solution.}
  spec.homepage      = "https://github.com/codescrum/active_poro"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('jazz_hands')
  spec.add_development_dependency('simplecov', '0.9.0')
  spec.add_development_dependency('codeclimate-test-reporter', '0.4.0')

  spec.add_runtime_dependency('activesupport')
end
