use_synth :piano

use_bpm 60

use_synth_defaults hard: 0.25, vel: 0.3

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
  # 1
  2.times do
    sleep 0.5
    eighth_note 62
    eighth_note 57
    eighth_note 53
    sleep 0.5
  end
  
  # 2
  sleep 0.5
  eighth_note 65
  eighth_note 59
  eighth_note 56
  sleep 0.5
  
  sleep 0.5
  eighth_note 61
  eighth_note 58
  eighth_note 55
  sleep 0.5
  
  # 3
  sleep 0.5
  eighth_note 62
  eighth_note 57
  eighth_note 53
  sleep 0.5

  sleep 0.5
  eighth_note 64
  eighth_note 59
  eighth_note 55
  sleep 0.5

  # 4
  sleep 0.5
  eighth_note 65
  eighth_note 59
  eighth_note 56
  sleep 0.5
  
  sleep 0.5
  eighth_note 61
  eighth_note 58
  eighth_note 55
  sleep 0.5
  
  #5 
  sleep 0.5
  sixteenth_note 81
  sixteenth_note 91
  sleep 0.25
  sixteenth_note 77
  sixteenth_note 87
  sleep 0.25

  eighth_note 81
  eighth_note 91
  sleep 0.5
  eighth_note 79
  eighth_note 89
  sleep 0.5

  eighth_note 76
  eighth_note 85
  sleep 0.5
  eighth_note 77
  eighth_note 87
  sleep 0.5

  sixteenth_note 75
  sixteenth_note 79
  sixteenth_note 86
  sleep 0.25
  sixteenth_note 75
  sixteenth_note 79
  sixteenth_note 86
  sleep 0.25
  eighth_note 75
  eighth_note 79
  eighth_note 86
  sleep 0.5

  sixteenth_note 77
  sixteenth_note 74
  sixteenth_note 80
  sixteenth_note 83
  sleep 0.25
  sixteenth_note 77
  sixteenth_note 74
  sixteenth_note 80
  sixteenth_note 83
  sleep 0.25
  eighth_note 77
  eighth_note 74
  eighth_note 80
  eighth_note 83
  sleep 0.5

  sixteenth_note 83
  sixteenth_note 79
  sixteenth_note 75
  sixteenth_note 71
  sleep 0.25

  sixteenth_note 83
  sixteenth_note 79
  sixteenth_note 75
  sixteenth_note 71
  sleep 0.25

  eighth_note 83
  eighth_note 79
  eighth_note 75
  eighth_note 71
  sleep 0.5
end

in_thread do
  4.times do
    eighth_note 50
    sleep 1
    eighth_note 50
    sleep 1
  end
  
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
  
  eighth_note 50
  sleep 0.5
  eighth_note 61
  eighth_note 56
  sleep 0.5
  
  eighth_note 50
  sleep 0.5
  eighth_note 60
  eighth_note 57
  sleep 0.5

  eighth_note 50
  sleep 0.5
  eighth_note 59
  eighth_note 62
  sleep 0.5

  eighth_note 50
  sleep 0.5
  eighth_note 62
  eighth_note 64
  sleep 0.5
end