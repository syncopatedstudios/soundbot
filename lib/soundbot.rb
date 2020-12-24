require "soundbot/version"
require "soundbot/config"
require "soundbot/database"
require "soundbot/cli"

module Soundbot
  class Error < StandardError; end
end

config = Config.load

# if the config file doesn't exist, set defaults and write the file
unless config.exist?
  config.set(:library, value: '')
  config.set(:editor, value: ENV['EDITOR'])
  config.write
end

settings = config.read
prompt = TTY::Prompt.new

if settings.fetch("library").empty?

  input = prompt.ask("provide directory path to sound library location",
        convert: :path, required: true, default: "#{ENV['HOME']}/Studio/library")

  library_path = input.sub(/~/, ENV['HOME']).cleanpath.to_s

  config.set(:library, value: "#{library_path}")

  config.write(force: true)
end
