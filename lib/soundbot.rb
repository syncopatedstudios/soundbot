#!/usr/bin/env ruby

require_relative 'config'

module Soundbot
  class Error < StandardError; end
  #puts "#{VERSION}"
  puts "hey"
  # load config
  # initialize database
end


module OcdFileUtil
  module_function

  def globfiles(directory)
    Dir.glob(
      "#{Pathname.new(directory).cleanpath}/**/*.{wav,flac,mp3,opus,mkv,sf2,sfz}"
    )
  end
end
