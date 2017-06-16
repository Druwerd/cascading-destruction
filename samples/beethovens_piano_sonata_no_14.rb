# Beethoven's Piano Sonata No. 14 (Moonlight Sonata)

use_synth :piano

use_bpm 68

# quarter note is 1 beat
define :play_quarter_note do |note_name|
  with_fx :reverb, room: 0.9 do
    play note_name, attack: 0.1, decay: 0.1, sustain: 0.5, release: 0.3
  end
end

# 1 & 1/2
define :play_dotted_quarter_note do |note_name|
  with_fx :reverb, room: 0.9 do
    play note_name, attack: 0.1, decay: 0.1, sustain: 1, release: 0.3
  end
end

# 2 beats
define :play_half_note do |note_name|
  with_fx :reverb, room: 0.9 do
    play note_name, attack: 0.25, decay: 0.25, sustain: 1, release: 0.5
  end
end

# 3 beats
define :play_dotted_half_note do |note_name|
  with_fx :reverb, room: 0.9 do
    play note_name, attack: 0.25, decay: 0.25, sustain: 2, release: 0.5
  end
end

# whole note is 4 beats
define :play_whole_note do |note_name|
  with_fx :reverb, room: 0.9 do
    play note_name, attack: 0.25, decay: 0.25, sustain: 3, release: 0.5
  end
end

# Treble clef (C# minor)
# C♯, D♯, E, F♯, G♯, A, and B
in_thread do
  # 1st & 2nd measures
  8.times do
    play_quarter_note 55+1 # G#
    sleep 0.5
    play_quarter_note 60+1 # C#
    sleep 0.5
    play_quarter_note 64 # E
    sleep 0.5
  end

  # 3rd measure
  2.times do
    play_quarter_note 57 # A
    sleep 0.5
    play_quarter_note 60+1 # C#
    sleep 0.5
    play_quarter_note 64 # E
    sleep 0.5
  end

  2.times do
    play_quarter_note 57 # A
    sleep 0.5
    play_quarter_note 60 # C natural
    sleep 0.5
    play_quarter_note 65+1 # F#
    sleep 0.5
  end

  # 4th measure
  play_quarter_note 55+1 # G#
  sleep 0.5
  play_quarter_note 59+1 # B#
  sleep 0.5
  play_quarter_note 65 # F
  sleep 0.5

  play_quarter_note 55+1 # G#
  sleep 0.5
  play_quarter_note 60+1 # C#
  sleep 0.5
  play_quarter_note 64 # E
  sleep 0.5

  play_quarter_note 55+1 # G#
  sleep 0.5
  play_quarter_note 60+1 # C#
  sleep 0.5
  play_quarter_note 62+1+1 # D##
  sleep 0.5

  play_quarter_note 53+1 # F
  sleep 0.5
  play_quarter_note 59+1 # B
  sleep 0.5
  play_quarter_note 62+1 # D#
  sleep 0.5

  # 5th measure
  play_quarter_note 52 # E
  sleep 0.5
  play_quarter_note 55+1 # G#
  sleep 0.5
  play_quarter_note 60+1 # C#
  sleep 0.5

  play_quarter_note 55+1 # G#
  sleep 0.5
  play_quarter_note 60+1 # C#
  sleep 0.5
  play_quarter_note 64 # E
  sleep 0.5

  2.times do
    play_quarter_note 55+1 # G#
    sleep 0.5
    play_quarter_note 60+1 # C#
    sleep 0.5
    play_quarter_note 64 # E
    sleep 0.5
    play_dotted_quarter_note 67+1 # G#
  end
  sleep 0.5

  # 6th measure
  play_dotted_half_note 67+1 # G#
  
  2.times do
    play_quarter_note 55+1 # G#
    sleep 0.5
    play_quarter_note 62+1 # D#
    sleep 0.5
    play_quarter_note 65+1 # F#
    sleep 0.5
  end

  2.times do
    play_quarter_note 55+1 # G#
    sleep 0.5
    play_quarter_note 62+1 # D#
    sleep 0.5
    play_quarter_note 65+1 # F#
    sleep 0.5
    play_dotted_quarter_note 67+1 # G#
  end
  sleep 0.5

  # 7th measure
  play_half_note 67+1 # G#
  play_quarter_note 55+1 # G#
  sleep 0.5
  play_quarter_note 60+1 # C#
  sleep 0.5
  play_quarter_note 64 # E
  sleep 0.5

  play_quarter_note 55+1 # G#
  sleep 0.5
  play_quarter_note 60+1 # C#
  sleep 0.5
  play_quarter_note 64 # E
  sleep 0.5

  play_half_note 69 # A
  2.times do
    play_quarter_note 57 # A
    sleep 0.5
    play_quarter_note 60+1 # C#
    sleep 0.5
    play_quarter_note 65+1 # F#
    sleep 0.5
  end

  # 8th measure
  play_half_note 67+1 # G#
  2.times do
    play_quarter_note 55+1 # G#
    sleep 0.5
    play_quarter_note 59 # B
    sleep 0.5
    play_quarter_note 64 # E
    sleep 0.5
  end

  play_quarter_note 65+1 # F#
  play_quarter_note 57 # A
  sleep 0.5
  play_quarter_note 59 # B
  sleep 0.5
  play_quarter_note 62+1 # D#
  sleep 0.5
  
  play_quarter_note 71 # B
  play_quarter_note 57 # A
  sleep 0.5
  play_quarter_note 59 # B
  sleep 0.5
  play_quarter_note 62+1 # D#
  sleep 0.5

  # 9th measure
  play_quarter_note 64 # E
  4.times do
    play_quarter_note 55+1 # G#
    sleep 0.5
    play_quarter_note 59 # B
    sleep 0.5
    play_quarter_note 64 # E
    sleep 0.5
  end

  # 10th measure
  3.times do
    play_quarter_note 55 # G
    sleep 0.5
    play_quarter_note 59 # B
    sleep 0.5
    play_quarter_note 64 # E
    sleep 0.5
  end

  play_dotted_quarter_note 67 # G
  play_quarter_note 55 # G
  sleep 0.5
  play_quarter_note 59 # B
  sleep 0.5
  play_quarter_note 64 # E
  sleep 0.5
  play_dotted_quarter_note 67 # G
  sleep 0.5

  # 11th measure
  play_dotted_half_note 67 # G
  3.times do
    play_quarter_note 55 # G
    sleep 0.5
    play_quarter_note 59 # B
    sleep 0.5
    play_quarter_note 65 # F
    sleep 0.5
  end

  play_dotted_quarter_note 67 # G
  play_quarter_note 55 # G
  sleep 0.5
  play_quarter_note 59 # B
  sleep 0.5
  play_quarter_note 65 # F
  sleep 0.5
  play_dotted_quarter_note 67 # G
  sleep 0.5

  # 12th measure
  play_half_note 67 # G
  play_quarter_note 55 # G
  sleep 0.5
  play_quarter_note 60 # C
  sleep 0.5
  play_quarter_note 64 # E
  sleep 0.5

  play_quarter_note 55 # G
  sleep 0.5
  play_quarter_note 59 # B
  sleep 0.5
  play_quarter_note 64 # E
  sleep 0.5

  play_quarter_note 55 # G
  sleep 0.5
  play_quarter_note 59+1 # B#
  sleep 0.5
  play_quarter_note 64 # E
  sleep 0.5

  play_quarter_note 65+1 # F#
  play_quarter_note 53+1 # F#
  sleep 0.5
  play_quarter_note 60+1 # C#
  sleep 0.5
  play_quarter_note 64 # E
  sleep 0.5
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
end
