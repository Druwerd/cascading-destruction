# Some Strange Melody

use_bpm 60 # each beat is 1 second
duration = 30 # seconds

live_loop :sounds_loop do
  sync :strange_sounds
  with_fx :reverb, room: 1 do
    sample :elec_ping, rate: 0.5, amp: 2
    sample :ambi_soft_buzz, rate: 2, amp: 1
    sample :guit_e_slide, rate: -1, amp: 2
  end
end

define :fx_chord do |chord_name|
  with_fx :echo, decay: 2 do
    play chord(chord_name, :major), release: 1
  end
end

live_loop :melody_loop do
  sync :melody
  [:C, :F, :G].each do |chord_name|
    fx_chord(chord_name)
    sleep 2
  end
end

live_loop :rhythm_loop do
  sync :rhythm
  sample :bd_pure, amp: 10
end

# main rhythm
in_thread do
  (duration * 2).times do
    cue :rhythm
    sleep 0.5 # on every half beat
  end
end

at 5 do # new thread starts on beat 5
  (duration - 5).times do
    cue :strange_sounds
    sleep 1 # on every beat
  end
end

# melody comes in on beat 9
at 9 do
  (duration - 13).times do
    cue :melody
    sleep 1
  end
end