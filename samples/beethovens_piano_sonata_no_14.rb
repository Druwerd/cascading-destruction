# Beethoven's Piano Sonata No. 14 (Moonlight Sonata)

use_synth :piano
use_synth_defaults hard: 0.25, stereo_width: 0.33, vel: 0.22

use_bpm 68

# quarter note is 1 beat
define :play_quarter_note do |note_name|
  with_fx :reverb, room: 0.9 do
    play note_name, attack: 0.1, decay: 0.1, sustain: 0.2, release: 0.6
  end
end

# 1 & 1/2
define :play_dotted_quarter_note do |note_name|
  with_fx :reverb, room: 0.9 do
    play note_name, attack: 0.1, decay: 0.1, sustain: 0.3, release: 1
  end
end

# 2 beats
define :play_half_note do |note_name|
  with_fx :reverb, room: 0.9 do
    play note_name, attack: 0.25, decay: 0.25, sustain: 0.5, release: 1
  end
end

# 3 beats
define :play_dotted_half_note do |note_name|
  with_fx :reverb, room: 0.9 do
    play note_name, attack: 0.25, decay: 0.25, sustain: 1, release: 1.5
  end
end

# whole note is 4 beats
define :play_whole_note do |note_name|
  with_fx :reverb, room: 0.9 do
    play note_name, attack: 0.25, decay: 0.25, sustain: 1, release: 2.5
  end
end

# Treble clef (C# minor)
# C♯, D♯, E, F♯, G♯, A, and B
in_thread do
  # 1st & 2nd measures
  24.times do
    # G#, C#, E
    play_quarter_note (ring 56, 61, 64).tick
    sleep 0.5
  end
  
  # 3rd measure
  6.times do
    # A, C#, E
    play_quarter_note (ring 57, 61, 64).tick
    sleep 0.5
  end

  6.times do
    # A, D, F#
    play_quarter_note (ring 57, 62, 66).tick
    sleep 0.5
  end
  
  # 4th measure
  3.times do
    # G#, B#, F
    play_quarter_note (ring 56, 60, 65).tick
    sleep 0.5
  end
  
  3.times do
    # G#, C#, E
    play_quarter_note (ring 56, 61, 64).tick
    sleep 0.5
  end
  
  3.times do
    # G#, C#, D#
    play_quarter_note (ring 56, 61, 63).tick
    sleep 0.5
  end
  
  3.times do
    # F, B#, D#
    play_quarter_note (ring 54, 60, 63).tick
    sleep 0.5
  end
  
  # 5th measure
  3.times do
    # E, G#, C#
    play_quarter_note (ring 52, 56, 61).tick
    sleep 0.5
  end
  
  3.times do
    # G#, C#, E
    play_quarter_note (ring 56, 61, 64).tick
    sleep 0.5
  end

  3.times do
    # G#, C#, E
    play_quarter_note (ring 56, 61, 64).tick
    sleep 0.5
  end

  play_dotted_quarter_note 67+1 # G#
  3.times do
    # G#, C#, E
    play_quarter_note (ring 56, 61, 64).tick
    sleep 0.5
  end
  play_dotted_quarter_note 67+1 # G#
  sleep 0.5
  
  # 6th measure
  play_dotted_half_note 67+1 # G#  
  6.times do
    # G#, D#, F#
    play_quarter_note (ring 56, 63, 66).tick
    sleep 0.5
  end

  3.times do
    # G#, D#, F#
    play_quarter_note (ring 56, 63, 66).tick
    sleep 0.5
  end

  play_dotted_quarter_note 67+1 # G#
  3.times do
    # G#, D#, F#
    play_quarter_note (ring 56, 63, 66).tick
    sleep 0.5
  end
  play_dotted_quarter_note 67+1 # G#
  sleep 0.5
  
  # 7th measure
  play_half_note 67+1 # G#
  3.times do
    # G#, C#, E
    play_quarter_note (ring 56, 61, 64).tick
    sleep 0.5
  end

  3.times do
    # G#, C#, E
    play_quarter_note (ring 56, 61, 64).tick
    sleep 0.5
  end
  
  play_half_note 69 # A
  6.times do
    # A, C#, F#
    play_quarter_note (ring 57, 61, 66).tick
    sleep 0.5
  end
  
  # 8th measure
  play_half_note 67+1 # G#
  6.times do
    # G#, B, E
    play_quarter_note (ring 56, 59, 64).tick
    sleep 0.5
  end
  
  play_quarter_note 65+1 # F#
  3.times do
    # A, B, D#
    play_quarter_note (ring 57, 59, 63).tick
    sleep 0.5
  end
  
  play_quarter_note 71 # B
  3.times do
    # A, B, D#
    play_quarter_note (ring 57, 59, 63).tick
    sleep 0.5
  end
  
  # 9th measure
  play_quarter_note 64 # E
  12.times do
    # G#, B, E
    play_quarter_note (ring 56, 59, 64).tick
    sleep 0.5
  end
  
  # 10th measure
  9.times do
    # G, B, E
    play_quarter_note (ring 55, 59, 64).tick
    sleep 0.5
  end
  
  play_dotted_quarter_note 67 # G
  3.times do
    # G, B, E
    play_quarter_note (ring 55, 59, 64).tick
    sleep 0.5
  end
  play_dotted_quarter_note 67 # G
  sleep 0.5
  
  # 11th measure
  play_dotted_half_note 67 # G
  9.times do
    # G, B, F
    play_quarter_note (ring 55, 59, 65).tick
    sleep 0.5
  end
  
  play_dotted_quarter_note 67 # G
  3.times do
    # G, B, F
    play_quarter_note (ring 55, 59, 65).tick
    sleep 0.5
  end
  play_dotted_quarter_note 67 # G
  sleep 0.5
  
  # 12th measure
  play_half_note 67 # G
  3.times do
    # G, C, E
    play_quarter_note (ring 55, 60, 64).tick
    sleep 0.5
  end
  
  3.times do
    # G, B, E
    play_quarter_note (ring 55, 59, 64).tick
    sleep 0.5
  end
  
  3.times do
    # G, B#, E
    play_quarter_note (ring 55, 60, 64).tick
    sleep 0.5
  end
  
  play_quarter_note 65+1 # F#
  3.times do
    # F#, C#, E
    play_quarter_note (ring 54, 61, 64).tick
    sleep 0.5
  end

  # 13th measure
  play_half_note 66 # F#
  6.times do
    # F#, A, D
    play_quarter_note (ring 54, 57, 62).tick
    sleep 0.5
  end

  play_quarter_note 67 # G
  3.times do
    # G, B, C#
    play_quarter_note (ring 55, 59, 61).tick
    sleep 0.5
  end

  play_quarter_note 64 # E
  3.times do
    # E, B, C#
    play_quarter_note (ring 52, 59, 61).tick
    sleep 0.5
  end

  # 14th measure
  play_half_note 66 # F#
  6.times do
    # F#, A, D
    play_quarter_note (ring 54, 57, 62).tick
    sleep 0.5
  end

  play_half_note 66 # F#
  6.times do
    # F#, A#, C#
    play_quarter_note (ring 54, 58, 61).tick
    sleep 0.5
  end
end

# Bass clef (C# minor)
# C♯, D♯, E, F♯, G♯, A, and B
in_thread do
  # 1st measure
  play_whole_note 48+1 # C#
  play_whole_note 36+1 # C#
  sleep 6
  
  # 2nd measure
  play_whole_note 47 # B
  play_whole_note 35 # B
  sleep 6
  
  # 3rd measure
  play_half_note 45 # A
  play_half_note 33 # A
  sleep 3
  
  play_half_note 41+1 # F#
  play_half_note 29+1 # F#
  sleep 3
  
  # 4th measure
  2.times do
    play_half_note 43+1 # G#
    play_half_note 31+1 # G#
    sleep 3
  end
  
  # 5th measure
  play_whole_note 48+1 # C#
  play_whole_note 43+1 # G#
  play_whole_note 36+1 # C#
  sleep 6.5
  
  # 6th measure
  play_whole_note 47+1 # B#
  play_whole_note 43+1 # G#
  play_whole_note 35+1 # B#
  sleep 6.5
  
  # 7th measure
  play_half_note 48+1 # C#
  play_half_note 36+1 # C#
  sleep 3
  
  play_half_note 41+1 # F#
  play_half_note 29+1 # F#
  sleep 3
  
  # 8th measure
  2.times do
    play_half_note 47 # B
    play_half_note 35 # B
    sleep 3
  end
  
  # 9th measure
  play_whole_note 52 # E
  play_whole_note 40 # E
  sleep 6
  
  # 10th measure
  play_whole_note 52 # E
  play_whole_note 40 # E
  sleep 6.5
  
  # 11th measure
  play_whole_note 50 # D
  play_whole_note 38 # D
  sleep 6.5
  
  # 12th measure
  2.times do
    play_quarter_note 48 # C
    play_quarter_note 36 # C
    sleep 1.5
  end
  
  play_half_note 47+1 # B#
  play_half_note 35+1 # B#
  sleep 3

  # 13th measure
  play_half_note 47 # B
  play_half_note 35 # B
  sleep 3

  play_quarter_note 40 # E
  sleep 1.5

  play_quarter_note 43 # G
  sleep 1.5

  # 14th measure
  play_half_note 42 # F#
  sleep 3

  play_half_note 42 # F#
  play_half_note 30 # F#
  sleep 3
end
