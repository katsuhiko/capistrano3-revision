# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano3/revision/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano3-revision"
  spec.version       = Capistrano3::Revision::VERSION
  spec.authors       = ["katsuhiko"]
  spec.email         = ["katsuhiko.nagashima@gmail.com"]

  spec.summary       = 'Write current revision for capistrano-3.x'
  spec.description   = 'Write current revision for capistrano-3.x'
  spec.homepage      = 'https://github.com/katsuhiko/capistrano3-revision'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end