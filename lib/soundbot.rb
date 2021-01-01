#!/usr/bin/env ruby
# frozen_string_literal: true

require 'sequel'

require "soundbot/version"
require "soundbot/config"
require "soundbot/database"

module Soundbot
  class Error < StandardError; end

    def self.config_dir
      File.join(Dir.home, '.config', 'soundbot')
    end

    def self.studio_dir
      File.join(Dir.home, 'Studio')
    end

    def self.recordings_dir
      File.join(studio_dir, 'recordings')
    end

end

puts "or...git@github.com:YellowApple/bales.git":
puts "hey...https://cmdparse.gettalong.org/tutorial.html"
