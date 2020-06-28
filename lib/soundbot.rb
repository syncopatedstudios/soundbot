require "soundbot/version"
require "commander/import"

module Soundbot
  class Error < StandardError; end
  puts "#{VERSION}"
end



program :name, 'soundbot'
program :version, '0.1.0'
program :description, 'organize, search, group and select sound files'

command :config do |c|
  c.syntax = 'soundbot config'
  c.description = 'Displays config'
  c.option '--[no-]display', 'displays current config'
  c.option '--generate STRING', String, 'generates default config'
  c.action do |args, options|
    say "#{options.display} #{args}"
    say "#{options.generate} #{args}"
  end
end

command :bar do |c|
  c.syntax = 'soundbot bar [options]'
  c.description = 'Display bar with optional prefix and suffix'
  c.option '--prefix STRING', String, 'Adds a prefix to bar'
  c.option '--suffix STRING', String, 'Adds a suffix to bar'
  c.action do |args, options|
    options.default :prefix => '(', :suffix => ')'
    say "#{options.prefix}bar#{options.suffix}"
  end
end
