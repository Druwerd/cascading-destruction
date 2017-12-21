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
  # 1
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
  
  # 2
  sleep 0.5
  eighth_note 65
  eighth_note 59
  eighth_note 55+1
  sleep 0.5
  
  sleep 0.5
  eighth_note 60+1
  eighth_note 59-1
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
  sixteenth_note 89
  sixteenth_note 81
  sleep 0.25
  sixteenth_note 86
  sixteenth_note 77
  sleep 0.25

  eighth_note 89
  eighth_note 81
  sleep 0.5
  eighth_note 88
  eighth_note 79
  sleep 0.5

  #6
  eighth_note 84+1
  eighth_note 76
  sleep 0.5
  eighth_note 86
  eighth_note 77
  sleep 0.5

  sixteenth_note 84
  sixteenth_note 77+1
  sixteenth_note 76-1
  sleep 0.25
  sixteenth_note 84
  sixteenth_note 77+1
  sixteenth_note 76-1
  sleep 0.25
  eighth_note 84
  eighth_note 77+1
  eighth_note 76-1
  sleep 0.5

  #7
  sixteenth_note 83
  sixteenth_note 81-1
  sixteenth_note 77
  sixteenth_note 74
  sleep 0.25
  sixteenth_note 83
  sixteenth_note 81-1
  sixteenth_note 77
  sixteenth_note 74
  sleep 0.25
  eighth_note 83
  eighth_note 81-1
  eighth_note 77
  eighth_note 74
  sleep 0.5

  sixteenth_note 83-1
  sixteenth_note 79
  sixteenth_note 76
  sixteenth_note 72+1
  sleep 0.25

  sixteenth_note 83-1
  sixteenth_note 79
  sixteenth_note 76
  sixteenth_note 72+1
  sleep 0.25

  eighth_note 83-1
  eighth_note 79
  eighth_note 76
  eighth_note 72+1
  sleep 0.5

  #8
  sixteenth_note 81
  sixteenth_note 77
  sleep 0.25
  sixteenth_note 86
  sixteenth_note 74
  sleep 0.25
  sixteenth_note 83
  sixteenth_note 79
  sleep 0.25
  sixteenth_note 86
  sixteenth_note 74
  sleep 0.25

  eighth_note 81
  eighth_note 77
  sleep 0.5

  #9
  sleep 0.5
  sixteenth_note 77
  sixteenth_note 71
  sleep 0.25
  sixteenth_note 74
  sixteenth_note 65
  sleep 0.25

  eighth_note 77
  eighth_note 71
  sleep 0.5
  eighth_note 76
  eighth_note 71
  sleep 0.5

  #10
  eighth_note 83
  eighth_note 76
  eighth_note 72+1
  sleep 0.5
  eighth_note 81
  eighth_note 77
  eighth_note 74
  sleep 0.5

  sixteenth_note 85
  sixteenth_note 83
  sixteenth_note 81
  sixteenth_note 79+1
  sleep 0.25
  sixteenth_note 85
  sixteenth_note 83
  sixteenth_note 81
  sixteenth_note 79+1
  sleep 0.25
  eighth_note 85
  eighth_note 83
  eighth_note 81
  eighth_note 79+1
  sleep 0.5

  #11
  sixteenth_note 88
  sixteenth_note 84
  sixteenth_note 81
  sixteenth_note 77+1
  sleep 0.25
  sixteenth_note 88
  sixteenth_note 84
  sixteenth_note 81
  sixteenth_note 77+1
  sleep 0.25
  eighth_note 88
  eighth_note 84
  eighth_note 81
  eighth_note 77+1
  sleep 0.5

  sixteenth_note 86
  sixteenth_note 83
  sixteenth_note 79+1
  sixteenth_note 76
  sleep 0.25
  sixteenth_note 86
  sixteenth_note 83
  sixteenth_note 79+1
  sixteenth_note 76
  sleep 0.25
  eighth_note 86
  eighth_note 83
  eighth_note 79+1
  eighth_note 76
  sleep 0.5

  #12
  sixteenth_note 84+1
  sixteenth_note 81
  sleep 0.25
  sixteenth_note 88
  sleep 0.25
  sixteenth_note 86
  sixteenth_note 79+1
  sleep 0.25
  sixteenth_note 88
  sleep 0.25

  eighth_note 84
  eighth_note 81
  sleep 0.5

  #13
  sleep 0.5
  sixteenth_note 89
  sixteenth_note 81
  sleep 0.25
  sixteenth_note 86
  sixteenth_note 77
  sleep 0.25

  eighth_note 89
  eighth_note 81
  sleep 0.5
  eighth_note 88
  eighth_note 79
  sleep 0.5

  #14
  eighth_note 84+1
  eighth_note 76
  sleep 0.5
  eighth_note 86
  eighth_note 77
  sleep 0.5

  sixteenth_note 84
  sixteenth_note 77+1
  sixteenth_note 76-1
  sleep 0.25
  sixteenth_note 84
  sixteenth_note 77+1
  sixteenth_note 76-1
  sleep 0.25
  eighth_note 84
  eighth_note 77+1
  eighth_note 76-1
  sleep 0.5

  #15
  sixteenth_note 83
  sixteenth_note 81-1
  sixteenth_note 77
  sixteenth_note 74
  sleep 0.25
  sixteenth_note 83
  sixteenth_note 81-1
  sixteenth_note 77
  sixteenth_note 74
  sleep 0.25
  eighth_note 83
  eighth_note 81-1
  eighth_note 77
  eighth_note 74
  sleep 0.5

  sixteenth_note 83-1
  sixteenth_note 79
  sixteenth_note 76
  sixteenth_note 72+1
  sleep 0.25
  sixteenth_note 83-1
  sixteenth_note 79
  sixteenth_note 76
  sixteenth_note 72+1
  sleep 0.25
  eighth_note 83-1
  eighth_note 79
  eighth_note 76
  eighth_note 72+1
  sleep 0.5

  #16
  sixteenth_note 81
  sixteenth_note 77
  sleep 0.25
  sixteenth_note 86
  sixteenth_note 74
  sleep 0.25
  sixteenth_note 83-1
  sixteenth_note 79
  sleep 0.25
  sixteenth_note 86
  sixteenth_note 74
  sleep 0.25

  eighth_note 81
  eighth_note 77
  sleep 0.5

  #17
  sleep 0.5
  sixteenth_note 74
  sixteenth_note 67+1
  sleep 0.25
  sixteenth_note 71
  sixteenth_note 64
  sleep 0.25

  eighth_note 74
  eighth_note 67+1
  sleep 0.5
  eighth_note 72+1
  eighth_note 69
  eighth_note 67
  sleep 0.5

  #18
  sleep 0.5
  sixteenth_note 72
  sixteenth_note 65+1
  sleep 0.25
  sixteenth_note 69
  sixteenth_note 59
  sleep 0.25

  eighth_note 72
  eighth_note 65+1
  sleep 0.5
  eighth_note 71
  eighth_note 67
  eighth_note 65
  sleep 0.5

  #19
  sleep 0.5
  sixteenth_note 71-1
  sixteenth_note 64
  sleep 0.25
  sixteenth_note 67
  sixteenth_note 60
  sleep 0.25

  eighth_note 71-1
  eighth_note 64
  sleep 0.5
  eighth_note 69
  eighth_note 65
  sleep 0.5

  #20
  sleep 0.5
  thirty_second_note 69
  sleep 0.125
  thirty_second_note 72+1
  sleep 0.125
  thirty_second_note 76
  sleep 0.125
  thirty_second_note 81
  sleep 0.125

  eighth_note 74
  sleep 0.5
  eighth_note 57
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