# frozen_string_literal: true

require 'tty-prompt'

module Soundbot
  # Handle the application command line parsing
  # and the dispatch to various command objects
  #
  # @api public
  class CLI
    def self.start
      prompt = TTY::Prompt.new
      prompt.say("hey")
    end

  end

end
