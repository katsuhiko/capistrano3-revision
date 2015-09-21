# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano3/revision/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano3-revision"
  spec.version       = Capistrano3::Revision::VERSION
  spec.authors       = ["Katsuhiko Nagashima"]
  spec.email         = ["katsuhiko.nagashima@gmail.com"]

  spec.summary       = %q{Write current revision to file for capistrano-3.x}
  spec.description   = %q{Write current revision to file for capistrano-3.x}
  spec.homepage      = "https://github.com/katsuhiko/capistrano3-revision"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano', '>= 3.1.0'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
