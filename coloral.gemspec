# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coloral/version'

Gem::Specification.new do |spec|
  spec.name          = "coloral"
  spec.version       = Coloral::VERSION
  spec.authors       = ["Patrick Metcalfe"]
  spec.email         = ["git@patrickmetcalfe.com"]
  spec.summary       = "The best way to create, convert, or manipulate colors in Ruby using helpful color functions."
  spec.description   = "A library to manipulate colors. If you have ever worked with colors before in Sass or a photo-editing program then you'll fit right in! RGB, HSV, HSL, and Hex are all supported with more on the way and you can manipulate colors' alpha, saturation, brightness, hue, etc. in an easy and intuitive way."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6.2"
  spec.add_development_dependency "rake", "~> 10.0"
end
