# -*- encoding: utf-8 -*-
require File.expand_path('../lib/dm-do-adapter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = [ "Dan Kubb" ]
  gem.email         = [ "dan.kubb@gmail.com" ]
  gem.summary       = "DataObjects Adapter for DataMapper"
  gem.description   = gem.summary
  gem.homepage      = "http://datamapper.org"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {spec}/*`.split("\n")
  gem.extra_rdoc_files = %w[LICENSE README.rdoc]

  gem.name          = "dm-do-adapter"
  gem.require_paths = [ "lib" ]
  gem.version       = DataMapper::DoAdapter::VERSION

  gem.add_runtime_dependency(%q<data_objects>, ["~> 0.10.6"])
  gem.add_runtime_dependency(%q<dm-core>, ["~> 1.3.0.beta"])

  gem.add_development_dependency(%q<rake>, ["~> 0.9.2"])
  gem.add_development_dependency(%q<rspec>, ["~> 1.3.2"])
end
