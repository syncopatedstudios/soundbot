#!/usr/bin/env ruby

$configdir = File.join(ENV['HOME'], '.config', 'soundbot')

module Config
  module_function

  require 'yaml'
  require 'fileutils'

  def initialize
    @config = File.join($configdir, 'config.yaml')

    default_config = File.join(File.expand_path(__dir__) + '/config.default.yaml')

    FileUtils.mkpath($configdir) unless Dir.exist?($configdir)
    FileUtils.cp(default_config, @config)

  end

  def set(*args); end

  def load
    YAML.load(File.open(@config))
  end

end # end Config module

Config.initialize
