#!/usr/bin/env ruby

require 'tty-command'
require 'tty-prompt'

# start jack and/or pulse audio

# dps device 'hw:PCH,3' \
def start_jack
  cmd = TTY::Command.new(printer: :pretty)
  cmd.run("jack_control start \
                dps device 'hw:0' \
                dps rate 48000 \
                dps period 1024 \
                dps nperiods 3 \
                dps midi-driver seq \
                dps monitor true \
                eps driver alsa \
                eps realtime True \
                eps realtime-priority 90 \
                eps verbose False \
                eps client-timeout 1000")

  sleep 1

  cmd.run('a2j_control start')
end

def set_alsa
  cmd = TTY::Command.new(printer: :pretty)
  # set master, headphone and PCM, make sure they're not muted and
  # mute the speaker
  cmd.run('amixer -D hw:0 sset Master,0 58 unmute')
  cmd.run('amixer -D hw:0 sset Headphone,0 0 mute')
  cmd.run('amixer -D hw:0 sset Front,0 58 unmute')
  cmd.run('amixer -D hw:0 sset Surround,0 58 unmute')
  cmd.run('amixer -D hw:0 sset Side,0 0 mute')
  cmd.run('amixer -D hw:0 sset Center,0 0 mute')
  cmd.run('amixer -D hw:0 sset LFE,0 0 mute')
  cmd.run('amixer -D hw:0 sset Capture,0 0 mute')
  cmd.run('amixer -D hw:0 set PCM 90%')
end

def load_virt_midi
  cmd = TTY::Command.new(printer: :pretty)
  cmd.run('sudo modprobe snd_virmidi midi_devs=1')
end

def start_pulse
  cmd = TTY::Command.new(printer: :pretty)
  cmd.run('systemctl --user start pulseaudio.service')
end

def stop_pulse
  cmd = TTY::Command.new(printer: :pretty)
  cmd.run('systemctl --user stop pulseaudio.service')
  cmd.run('systemctl --user stop pulseaudio.socket')
end

stop_pulse
sleep 0.5
set_alsa
start_jack
