# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flash-message-conductor/version'

Gem::Specification.new do |gem|
  gem.name          = "flash-message-conductor"
  gem.version       = FlashMessageConductor::VERSION
  gem.authors       = ["Robby Russell", "Carlos Rodriguez"]
  gem.email         = ["robbyrussell@planetargon.com", "carlos@planetargon.com"]
  gem.description   = %q{A simple pattern for managing flash messages in your Ruby on Rails application}
  gem.summary       = %q{Conduct your Flash Messages in Rails}
  gem.homepage = %q{http://github.com/planetargon/flash-message-conductor}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "rails", '>= 3.0.0'
end
