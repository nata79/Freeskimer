# -*- encoding: utf-8 -*-
require File.expand_path('../lib/freeskimer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["André Barbosa"]
  gem.email         = ["albmail88@gmail.com"]
  gem.description   = %q{Save and retrieves objects from a database with no schema.}
  gem.summary       = %q{Serializes model attributes and saves them into the database in any string column.}
  gem.homepage      = "https://github.com/nata79/freeskimer"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "freeskimer"
  gem.require_paths = ["lib"]
  gem.version       = Freeskimer::VERSION
  
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'supermodel'  
end
