# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rake/stretcher/version'

Gem::Specification.new do |spec|
  spec.name          = "rake-stretcher"
  spec.version       = Rake::Stretcher::VERSION
  spec.authors       = ["tjinjin"]
  spec.email         = ["tjinjinprogram@gmail.com"]

  spec.summary       = %q{rake task for stretcher}
  spec.description   = %q{rake task for stretcher}
  spec.homepage      = "https://github.com/tjinjin/rake-stretcher"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rake", "~> 10.0"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rspec"
end
