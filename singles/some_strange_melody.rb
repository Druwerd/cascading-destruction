# Some Strange Melody

use_bpm 60
duration = 30

in_thread do
  loop do
    sync :strange_sounds
    with_fx :reverb, room: 1 do
      sample :elec_ping, rate: 0.5, amp: 2
      sample :ambi_soft_buzz, rate: 2, amp: 1
      sample :guit_e_slide, rate: -1, amp: 2
    end
  end
end

define :fx_chord do |chord_name|
  with_fx :echo, decay: 2 do
    play chord(chord_name, :major), release: 1
  end
end

in_thread do
  loop do
    sync :melody
    [:C, :F, :G].each do |chord_name|
      fx_chord(chord_name)
      sleep 2
    end
  end
end

in_thread do
  loop do
    sync :beat
    sample :bd_pure, amp: 10
  end
end

# half beat
in_thread do
  (duration * 2).times do
    cue :beat
    sleep 0.5
  end
end

# whole beat
in_thread do
  duration.times do
    cue :strange_sounds
    sleep 1
  end
end

# start melody
at 5 do
  (duration - 10).times do
    cue :melody
    sleep 1
  end
end