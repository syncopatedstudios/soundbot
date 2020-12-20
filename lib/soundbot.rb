require "soundbot/version"
require "soundbot/config"
require "soundbot/cli"

CONFIGPATH = Pathname.new(File.join(ENV['HOME'], '.config', 'soundbot'))

module Soundbot
  class Error < StandardError; end
  # Your code goes here...
  # check if db file exists, if not initialize database

  db = File.join(CONFIGPATH, "soundbot.db")

  unless db.exist?
    say "initializing database!"
    Soundbot::DB.start
  end

end
