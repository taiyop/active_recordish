# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_recordish/version'

Gem::Specification.new do |spec|
  spec.name          = "active_recordish"
  spec.version       = ActiveRecordish::VERSION
  spec.authors       = ["Taiyo Akashi"]
  spec.email         = ["onibakidd@gmail.com"]
  spec.summary       = %q{ActiveRecordish is something like ActiveRecord. Assumed usage is using models don't have db relation but have array of instances.}
  spec.description   = %q{ActiveRecordish is something like ActiveRecord. Assumed usage is using models don't have db relation but have array of instances.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
