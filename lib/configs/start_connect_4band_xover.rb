#!/usr/bin/env ruby

require 'tty-command'

# constants for jack_connect/disconnect commands
JCONNECT = "/usr/bin/jack_connect"
JDISCONNECT = "/usr/bin/jack_disconnect"

module JackConnect
  module_function

  @cmd = TTY::Command.new(printer: :pretty)

  def disconnect(connection_hash)
    connection_hash.each { |port1, port2|
      @cmd.run("'#{JDISCONNECT}' '#{port1}' '#{port2}'")
    }
  end

  def connect(connection_hash)
    connection_hash.each { |port1, port2|
      @cmd.run("'#{JCONNECT}' '#{port1}' '#{port2}'")
    }
  end

end

# so, the idea here is to call the run command in as few places
# as possible. making this sort of getter/builder method/class

#
module CommandBuilder

  def run_me(bin, *args)


  end

end

module ZitaXover
  module_function

  @cmd = TTY::Command.new(printer: :pretty)

  def zita_xover(bands)
    case bands
    when 3
      CommandRunner::run_me("zita-lrx", filevariable)
    when 4

    end


  end


end
