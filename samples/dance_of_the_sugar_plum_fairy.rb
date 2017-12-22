use_synth :piano
use_bpm 60
use_synth_defaults hard: 0.25, vel: 0.3
define :thirty_second_note do |note|
  with_fx :reverb, room: 0.9 do
    play note, attack: 0.0125, decay: 0.0125, sustain: 0.03125, release: 0.0625
  end
end
define :sixteenth_note do |note|
  with_fx :reverb, room: 0.9 do
    play note, attack: 0.025, decay: 0.025, sustain: 0.0625, release: 0.125
  end
end
define :eighth_note do |note|
  with_fx :reverb, room: 0.9 do
    play note, attack: 0.05, decay: 0.05, sustain: 0.125, release: 0.25
  end
end
define :quarter_note do |note|
  with_fx :reverb, room: 0.9 do
    play note, attack: 0.1, decay: 0.1, sustain: 0.25, release: 0.5
  end
end
in_thread do
  # 1
  sleep 0.5
  eighth_note 62
  eighth_note 57
  eighth_note 53
  sleep 1
  eighth_note 64
  eighth_note 59
  eighth_note 55
  sleep 1
  # 2
  eighth_note 65
  eighth_note 59
  eighth_note 55+1
  sleep 1
  eighth_note 60+1
  eighth_note 59-1
  eighth_note 55
  sleep 1
  # 3
  eighth_note 62
  eighth_note 57
  eighth_note 53
  sleep 1
  eighth_note 64
  eighth_note 59
  eighth_note 55
  sleep 1
  # 4
  eighth_note 65
  eighth_note 59
  eighth_note 56
  sleep 1
  eighth_note 61
  eighth_note 58
  eighth_note 55
  sleep 1
  #5 
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
  sleep 1
  #13
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
  sleep 1
  #18
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
  sleep 1
  #19
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
  sleep 1
  #20
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
end