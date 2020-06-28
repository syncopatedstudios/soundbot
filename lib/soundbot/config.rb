#!/usr/bin/env ruby

require 'yaml'
require 'commander/import'

CONFIG=Pathname.new(File.join(ENV['HOME'], '.config', 'soundbot', 'config.yml'))


module Soundbot
  class Error < StandardError; end
  #puts "#{VERSION}"
  # load config
  module Config
    # create the config directory if needed, then copy the default config if needed
    #
    # @api private
    def set_default_config
      unless CONFIG.exist?
        lib_dir = File.expand_path("../../", __FILE__)

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
      config = YAML::load(File.open("#{CONFIG}"))

      return config
    end
    module_function :load_config
  end

end
