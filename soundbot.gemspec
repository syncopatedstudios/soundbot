require_relative 'lib/soundbot/version'

Gem::Specification.new do |spec|
  spec.name          = "soundbot"
  spec.version       = Soundbot::VERSION
  spec.authors       = ["b08x"]
  spec.email         = ["rwpannick@gmail.com"]

  spec.summary       = %q{sorting sound with semantics}
  spec.description   = %q{organzie, view and select sound samples based on various criteria}
  spec.homepage      = "https://syncopatedstudios.org/soundbot"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/b08x/soundbot"
  spec.metadata["changelog_uri"] = "https://github.com/b08x/soundbot/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
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
