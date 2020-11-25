#!/usr/bin/env ruby

require 'tty-command'
require 'tty-which'

vamp_plugin_files = File.join(File.dirname(__FILE__), '..', 'annotator')

annotator = TTY::Which.which("sonic-annotator")

#generate n3 files
#sonic_annotator -l
cmd = TTY::Command.new(printer: :progress, binmode: true)

result = cmd.run("#{annotator} -l ")
result.each do |plugin|
  plugin_name = plugin.lines(":")[1] + plugin.lines(":").last
  plugin_name.gsub!(/:/,'_')
  cmd.run ("#{annotator} -s #{plugin} > '#{vamp_plugin_files}/#{plugin_name}.n3' ")
end

#cmd.run(:echo, "hello", chdir: "/var/tmp")

# sonic-annotator -t ~/Workspace/soundbot/lib/annotator/vamp-example-plugins_logcentroid.n3 \
# -S mode --summary-only -w csv --csv-append *.flac
