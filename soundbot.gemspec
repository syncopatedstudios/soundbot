require_relative 'lib/soundbot/version'

Gem::Specification.new do |spec|
  spec.name          = "soundbot"
  spec.version       = Soundbot::VERSION
  spec.authors       = ["b08x"]
  spec.email         = ["rwpannick@gmail.com"]

  spec.summary       = %q{sorting sound with semantics}
  spec.description   = %q{organize, view and select sound samples based on various criteria}
  spec.homepage      = "https://syncopatedstudios.org/soundbot"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/syncopatedstudios/soundbot"
  spec.metadata["changelog_uri"] = "https://github.com/syncopatedstudios/soundbot/blob/master/CHANGELOG.md"

  spec.files         = ['bin/soundbot']
  spec.bindir        = "bin"
  spec.executables   = ['soundbot']
  spec.require_paths = ["lib"]


  spec.add_dependency 'tty-config', '~> 0.4.0'
  spec.add_dependency 'tty-editor', '~> 0.5'
  spec.add_dependency 'tty-pager',  '~> 0.13'
  spec.add_dependency 'tty-prompt', '~> 0.21'
  spec.add_dependency 'tty-screen', '~> 0.7'
  spec.add_dependency 'tty-which',  '~> 0.4'
  spec.add_dependency 'tty-file',  '~> 0.8'
  spec.add_dependency 'sequel', '~> 5.33.0'
  spec.add_dependency 'commander', '~> 4.5.2'
  spec.add_dependency 'yaml', '~> 0.1.0'

  spec.add_development_dependency "bundler", "~> 2.1.0"
  spec.add_development_dependency "rake", "~> 13.0.1"
  spec.add_development_dependency "minitest", "~> 5.12.0"
  spec.add_development_dependency "pry", "~> 0.13.0"
  spec.add_development_dependency "pry-doc", "~> 1.1.0"
end
