#!/usr/bin/env ruby

require 'yaml'
require 'pathname'
require 'fileutils'

CONFIG = Pathname.new(File.join(ENV['HOME'], '.config', 'soundbot', 'config.yaml'))

module Soundbot
  class Error < StandardError; end

  module Config
    # create the config directory if needed, then copy the default config if needed
    #
    # @api private
    def set_default_config
      unless CONFIG.exist?
        lib_dir = File.expand_path(__dir__)

        default_config = File.join(lib_dir + '/config.default.yaml')

        FileUtils.mkpath(CONFIG.parent) unless CONFIG.parent.exist?

        FileUtils.cp(default_config, CONFIG)
      end
    end
    module_function :set_default_config

    # open the config file and return the options as hash
    #
    # @api private
    def load_config
      YAML.load(File.open(CONFIG.to_s))
    end
    module_function :load_config
  end
end
