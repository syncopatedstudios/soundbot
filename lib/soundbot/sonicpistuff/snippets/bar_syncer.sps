# key: syncer
# point_line: 1
# point_index: 0
# --
set_mixer_control! hpf: 21

# beat time at start of bar n
define :bar do |n| return 4 * n end

# print bar(1) = 4,8,12,16,20,24,28,32,
print bar(45)

live_loop :tick do
  use_bpm 120

  print current_bpm
  puts beat
  puts bt(1)
  #use_arg_bpm_scaling true
  puts current_beat_duration
  sleep bt(1)
end

# Sync 2-bar patterns
live_loop :two_bars, autocue: false do
  sync :tick
  cue :every_two_bars
  sample :elec_blip, amp: 0.001, rate: 1
  sleep 8
end

# Synch 4-bar patterns
live_loop :four_bars, autocue: false do
  sync :tick
  cue :every_four_bars
  sample :elec_blip, amp: 0.001, rate: 2.0
  sleep 16
end
