# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "honkhonk"
  spec.version       = "0.0.1"
  spec.required_ruby_version = ">= 2.5.0"
  spec.authors       = ["Jon Rowe"]
  spec.email         = ["hello@jonrowe.co.uk"]
  spec.description   = %q{Honk!}
  spec.summary       = %q{Honk!}
  spec.homepage      = "https://github.com/JonRowe/honk"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", '~> 13.0'
  spec.add_development_dependency "bundler"
end
