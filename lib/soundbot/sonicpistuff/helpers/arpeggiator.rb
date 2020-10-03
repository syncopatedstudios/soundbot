define :arpeggiate do |prog, tonic, mode=:major, pattern=[0, 1, 2, 3], reps=2|
  sc = scale(tonic, mode, num_octaves: 4)
  prog.each do |deg|
    puts "prog", prog
    reps.times do
      with_synth :pluck do
        play sc[deg-1] - 12, sustain: 0.9, amp: 1.5
      end
      t = 1.0 / pattern.length
      pattern.each do |i|
        n = sc[deg - 1 + 2*i + (i+1) / 4]
        #puts "n", n
        with_fx :lpf, cutoff: 50 do
          with_synth :beep do
            play n, sustain: 1.5 * t, amp: 0.8
          end
        end

        sleep t
      end
    end
  end
end

define :arp_to_midi do |prog, tonic, mode=:major, pattern=[0, 1, 2, 3], reps=2|
  sc = scale(tonic, mode, num_octaves: 4)
  prog.each do |deg|
    puts "prog", prog
    reps.times do

      midi sc[deg-1] - 12, sustain: 0.9

      t = 1.0 / pattern.length
      pattern.each do |i|
        n = sc[deg - 1 + 2*i + (i+1) / 4]
        #puts "n", n
        midi n, sustain: 1.5 * t

        sleep t
      end
    end
  end
end
