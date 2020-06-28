#!/usr/bin/env ruby

require_relative 'soundbot/config'

module Soundbot
  class Error < StandardError; end
  #puts "#{VERSION}"
  # load config
  # initialize database
end




program :name, 'soundbot'
program :version, '0.1.0'
program :description, 'organize, search, group and select sound files'

command :config do |c|
  c.syntax = 'soundbot config'
  c.description = 'Displays config'
  #using --no- will return false otherwise will return true
  c.option '--[no-]display', 'displays current config'
  #if the option is passed as a string then anything after a string with be an arg
  c.option '--generate', 'generates default config'
  #c.option '--jack STRING', String, ''
  c.action do |args, options|

    # TODO: error handling. if display is selected before generate, we get a file not found message:
    # home/b08x/Workspace/soundbot/lib/soundbot/config.rb:34:in `initialize': No such file or directory @ rb_sysopen - /home/b08x/.config/soundbot/config.yml (Errno::ENOENT)


    if options.generate
      say "setting default config"
      Soundbot::Config.set_default_config
      puts "#{Soundbot::Config.load_config}"
    elsif options.display
      p options.display
      puts "#{Soundbot::Config.load_config}"
    end



  end
end

command :start do |c|
  c.syntax = 'soundbot start'
  c.description = 'starts jackdbus & a2jmididbus'
  #using --no- will return false otherwise will return true
  c.option '--[no-]display', 'displays current config'
  #if the option is passed as a string then anything after a string with be an arg
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