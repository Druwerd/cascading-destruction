#    ____________________________
#  /|............................|
# | |:   Cascading Destruction  :|
# | |:       "Destroy It"       :|
# | |:     ,-.   _____   ,-.    :|
# | |:    ( `)) [_____] ( `))   :|
# |v|:     `-`   ' ' '   `-`    :|
# |||:     ,______________.     :|
# |||...../::::o::::::o::::\.....|
# |^|..../:::O::::::::::O:::\....|
# |/`---/--------------------`---|
# `.___/ /====/ /=//=/ /====/____/
#      `--------------------'

use_bpm 120 # beats per minute
duration = 60 # total beats
destruction_time = 55
destruction_level = 11 # goes to eleven

# Cascade thread
live_loop :cascade_loop do
  sync :cascade # blocks until cued
  sample :ambi_drone, rate: -1, amp: 2
  cue :destruction
end

# Destruction thread
live_loop :destruction_loop do
  sync :destruction
  if one_in(2) # returns true or false with a specified probability
    sample :bass_hard_c, decay: 5
  else
    sample :bass_drop_c, decay: 5
  end
end

# Chords
live_loop :chords_loop do
  sync :chords
  play chord(:D, :major)
  play chord(:E, :minor)
  play chord(:A, :major)
end

# Pretty sounds
live_loop :fx_loop do
  sync :fx
  sample :ambi_piano, sustain: 5
  sample :ambi_dark_woosh, rate: 0.5
  sample :guit_e_slide, rate: 0.5
  play rrand(50, 95) # produces a float between the supplied min and max values
end

# Drums
live_loop :drums_loop do
  sync :drum
  sample :drum_heavy_kick, rate: 0.5
end

# secondary thread loop; cues on every half beat
in_thread do
  (duration * 2).times do
    cue :fx
    sleep 0.5
  end
end

# main thread loop; cues on every beat
in_thread do
  duration.times do
    cue :drum
    sleep 1
  end
end

# cues on every other beat
in_thread do
  (duration / 2).times do
    cue :chords
    sleep 2
  end
end

at destruction_time do # start cascading destruction!
  destruction_level.times do
    cue :cascade
    sleep 1
  end
end
