# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_js_data/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_js_data"
  spec.version       = SimpleJsData::VERSION
  spec.authors       = ["Bartłomiej Wójtowicz"]
  spec.email         = ["wojtowicz.bartlomiej@gmail.com"]
  spec.summary       = %q{Simple ruby data passing to javascript.}
  spec.description   = %q{Gem was written to support rails 4 as a replacement for Gon gem.}
  spec.homepage      = "https://github.com/b-wojtowicz/simple_js_data"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
