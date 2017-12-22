use_synth :piano

use_bpm 60

use_synth_defaults hard: 0.25, vel: 0.3

# 1/8 beat
define :thirty_second_note do |note_name|
  with_fx :reverb, room: 0.9 do
    play note_name, attack: 0.0125, decay: 0.0125, sustain: 0.03125, release: 0.0625
  end
end

# 1/4 beat
define :sixteenth_note do |note_name|
  with_fx :reverb, room: 0.9 do
    play note_name, attack: 0.025, decay: 0.025, sustain: 0.0625, release: 0.125
  end
end

# 1/2 beat
define :eighth_note do |note_name|
  with_fx :reverb, room: 0.9 do
    play note_name, attack: 0.05, decay: 0.05, sustain: 0.125, release: 0.25
  end
end

# 1 beat
define :quarter_note do |note_name|
  with_fx :reverb, room: 0.9 do
    play note_name, attack: 0.1, decay: 0.1, sustain: 0.25, release: 0.5
  end
end

in_thread do
  # 1-4
  4.times do
    eighth_note 50
    sleep 1
    eighth_note 50
    sleep 1
  end
  
  #5
  eighth_note 50
  sleep 0.5
  eighth_note 57
  eighth_note 53
  sleep 0.5

  eighth_note 50
  sleep 0.5
  eighth_note 57
  eighth_note 53
  sleep 0.5
  
  #6
  eighth_note 50
  sleep 0.5
  eighth_note 59+1
  eighth_note 55+1
  sleep 0.5
  
  eighth_note 50
  sleep 0.5
  eighth_note 60
  eighth_note 57
  sleep 0.5

  #7
  eighth_note 50
  sleep 0.5
  eighth_note 62
  eighth_note 59
  sleep 0.5

  eighth_note 50
  sleep 0.5
  eighth_note 64
  eighth_note 60+1
  sleep 0.5

  #8
  eighth_note 65
  eighth_note 62
  sleep 0.5

  eighth_note 64
  eighth_note 62
  sleep 0.5

  eighth_note 65
  eighth_note 62
  sleep 0.5

  thirty_second_note 50
  sleep 0.125
  thirty_second_note 48
  sleep 0.125
  thirty_second_note 47-1
  sleep 0.125
  thirty_second_note 45
  sleep 0.125

  #9
  eighth_note 43+1
  sleep 0.5
  eighth_note 59
  eighth_note 53
  eighth_note 50
  sleep 0.5

  eighth_note 43
  sleep 0.5
  eighth_note 59
  eighth_note 52
  eighth_note 48+1

  #10
  eighth_note 41
  sleep 0.5
  eighth_note 57
  eighth_note 53
  eighth_note 50
  sleep 0.5

  eighth_note 40
  sleep 0.5
  eighth_note 55+1
  eighth_note 52
  sleep 0.5

  #11
  eighth_note 52
  sleep 0.5
  eighth_note 57
  eighth_note 53
  sleep 0.5

  eighth_note 52
  sleep 0.5
  eighth_note 59
  eighth_note 55+1
  sleep 0.5

  #12
  eighth_note 57
  eighth_note 52
  eighth_note 45
  sleep 0.5
  eighth_note 55+1
  eighth_note 52
  eighth_note 47
  sleep 0.5

  eighth_note 57
  eighth_note 52
  eighth_note 45
  sleep 0.5
  thirty_second_note 45
  sleep 0.125
  thirty_second_note 43
  sleep 0.125
  thirty_second_note 41
  sleep 0.125
  thirty_second_note 40
  sleep 0.125

  #13
  eighth_note 38
  sleep 0.5
  eighth_note 57
  eighth_note 53
  sleep 0.5

  eighth_note 50
  sleep 0.5
  eighth_note 57
  eighth_note 55
  sleep 0.5

  #14
  eighth_note 50
  sleep 0.5
  eighth_note 59
  eighth_note 55+1
  sleep 0.5

  eighth_note 50
  sleep 0.5
  eighth_note 60
  eighth_note 57
  sleep 0.5

  #15
  eighth_note 50
  sleep 0.5
  eighth_note 62
  eighth_note 59
  sleep 0.5

  eighth_note 50
  sleep 0.5
  eighth_note 64
  eighth_note 60+1
  sleep 0.5

  #16
  eighth_note 65
  eighth_note 62
  sleep 0.5

  eighth_note 64
  eighth_note 62
  sleep 0.5

  eighth_note 65
  eighth_note 62
  sleep 0.5
  thirty_second_note 65
  sleep 0.125
  thirty_second_note 64
  sleep 0.125
  thirty_second_note 62
  sleep 0.125
  thirty_second_note 60
  sleep 0.125

  #17
  eighth_note 59
  sleep 0.5
  eighth_note 59
  eighth_note 52
  sleep 0.5

  eighth_note 59
  eighth_note 52
  sleep 0.5
  thirty_second_note 64
  sleep 0.125
  thirty_second_note 62
  sleep 0.125
  thirty_second_note 60+1
  sleep 0.125
  thirty_second_note 59
  sleep 0.125

  #18
  eighth_note 57
  sleep 0.5
  eighth_note 57
  eighth_note 50
  sleep 0.5

  eighth_note 57
  eighth_note 50
  sleep 0.5
  thirty_second_note 62
  sleep 0.125
  thirty_second_note 60
  sleep 0.125
  thirty_second_note 59
  sleep 0.125
  thirty_second_note 57
  sleep 0.125

  #19
  eighth_note 55
  sleep 0.5
  eighth_note 55
  eighth_note 48
  sleep 0.5

  eighth_note 55
  eighth_note 48
  sleep 0.5
  thirty_second_note 60
  sleep 0.125
  thirty_second_note 59-1
  sleep 0.125
  thirty_second_note 57
  sleep 0.125
  thirty_second_note 55
  sleep 0.125

  #20
  eighth_note 53
  sleep 0.5
  eighth_note 55
  eighth_note 52
  sleep 0.5

  eighth_note 53
  eighth_note 50
  sleep 0.5
  eighth_note 45
  eighth_note 32
  sleep 0.5
end