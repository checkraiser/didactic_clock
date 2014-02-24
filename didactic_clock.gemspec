# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'didactic_clock/version'

Gem::Specification.new do |spec|
  spec.name          = "didactic_clock"
  spec.version       = DidacticClock::VERSION
  spec.authors       = ["Truong Hoang Dung"]
  spec.email         = ["checkraiser11@gmail.com"]
  spec.description   = %q{My first ruby gem}
  spec.summary       = %q{Write verbose time}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "sinatra"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "timecop"
end
