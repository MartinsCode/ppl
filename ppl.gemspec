# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name        = 'ppl'
  spec.version     = '3.0.3'
  spec.date        = '2018-01-03'

  spec.required_ruby_version = '>= 2.4.9' # no security maintenance before that

  spec.summary     = 'The command line address book'
  spec.description = 'ppl is a command-line address book using vCard & git for storage and synchronisation'
  spec.license     = 'MIT'

  spec.add_dependency('colored', '1.2')
  spec.add_dependency('inifile', '3.0.0')
  spec.add_dependency('mail', '~> 2.7.1')
  spec.add_dependency('morphine', '0.1.1')
  spec.add_dependency('rugged', '~> 0.28.0')
  spec.add_dependency('vpim', '13.11.11')

  spec.add_development_dependency('cucumber')
  spec.add_development_dependency('fakefs')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('simplecov')

  spec.authors     = ['Henry Smith']
  spec.email       = 'henry@henrysmith.org'

  spec.executables = 'ppl'

  spec.files        = `git ls-files`.split("\n")
  spec.require_path = 'lib'
  spec.homepage     = 'https://github.com/MartinsCode/ppl/'
end
