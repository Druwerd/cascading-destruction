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
in_thread do
  loop do
    sync :cascade # blocks until cued
    sample :ambi_drone, rate: -1, amp: 10
    cue :destruction
  end
end

# Destruction thread
in_thread do
  loop do
    sync :destruction
    if one_in(2)
      sample :bass_hard_c, decay: 5, amp: 5
    else
      sample :bass_drop_c, decay: 5, amp: 5
    end
  end
end

# Chords
in_thread do
  loop do
    sync :chords
    play chord(:D, :major)
    play chord(:E, :minor)
    play chord(:A, :major)
  end
end

# Pretty sounds
in_thread do
  loop do
    sync :fx
    sample :ambi_piano, sustain: 5, amp: 5
    sample :ambi_dark_woosh, rate: 0.5
    sample :guit_e_slide, rate: 0.5
    play rrand(50, 95)
  end
end

# Drums
in_thread do
  loop do
    sync :drum
    sample :drum_heavy_kick, rate: 0.5, amp: 5
  end
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
  tick_set 1
  duration.times do
    cue :drum
    cue :chords if (beat % 2) == 0
    sleep 1
  end
end

at destruction_time do # start cascading destruction!
  destruction_level.times do
    cue :cascade
    sleep 1
  end
end
