# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-docker-stats"
  spec.version       = "1.0.1"
  spec.authors       = ["James Ma"]
  spec.email         = ["jamesmawm@gmail.com"]
  spec.summary       = %q{Fluentd plugin to collect Docker container stats}
  spec.homepage      = "https://github.com/jamesmawm/fluent-plugin-docker-stats"
  spec.license       = "Apache License, Version 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "fakefs"
  spec.add_development_dependency "test-unit", "~> 3.1"
  spec.add_development_dependency "minitest", "~> 5.8"
  spec.add_runtime_dependency "fluentd"
  spec.add_runtime_dependency "docker-api"
end
