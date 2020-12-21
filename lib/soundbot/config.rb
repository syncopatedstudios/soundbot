#!/usr/bin/env ruby

require "tty-config"
require "tty-prompt"
require "pathname"


CONFIGPATH = Pathname.new(File.join(ENV['HOME'], '.config', 'soundbot'))

DB = Pathname.new(File.join(CONFIGPATH, "soundbot.db"))

#MAIN_CONTAINER = ROM.container(DATABASE_CONFIG)

# create the path to the soundbot config directory unless is already exists
FileUtils.mkpath(CONFIGPATH.realdirpath) unless CONFIGPATH.realdirpath.exist?

module Config
  module_function

  def load
    config = TTY::Config.new
    config.filename = 'soundbot'
    config.extname = '.yaml'
    config.append_path CONFIGPATH.realdirpath.to_s
    return config
  end

end
