#!/usr/bin/env ruby

require 'tty-config'
require 'pathname'

CONFIG = Pathname.new(File.join(ENV['HOME'], '.config', 'soundbot'))

FileUtils.mkpath(CONFIG.realdirpath) unless CONFIG.realdirpath.exist?

class LoadConfig
  attr_reader :config

  def initialize
    @soundbot = TTY::Config.new
    @soundbot.filename = 'soundbot'
    @soundbot.extname = '.yaml'
    @soundbot.append_path CONFIG.realdirpath.to_s
  end

  def self.config
    @soundbot ||= self.class.new.config
  end

end
