require_relative 'lib/soundbot/version'

Gem::Specification.new do |spec|
  spec.name          = "soundbot"
  spec.license       = "MIT"
  spec.version       = Soundbot::VERSION
  spec.authors       = ["b08x"]
  spec.email         = ["rwpannick@gmail.com"]

  spec.summary       = %q{sorting sound with semantics}
  spec.description   = %q{systematically sort sound with semantics}
  spec.homepage      = "https://syncopatedstudios.org/soundbot"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/syncopatedstudios/soundbot"
  spec.metadata["changelog_uri"] = "https://github.com/syncopatedstudios/soundbot/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'tty', '~> 0.10.0'
  spec.add_dependency 'rom','~> 5.2.4'
  spec.add_dependency 'rom-sql','~> 3.2.0'
  spec.add_dependency 'sqlite3','~> 1.4.2'
  
  spec.add_development_dependency "pry", "~> 0.13.0"
  spec.add_development_dependency "pry-doc", "~> 1.1.0"
end
