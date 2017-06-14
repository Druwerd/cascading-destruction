# Scales

major_c_scale = (scale :C, :major) # scales are rings

# loop through the scale
8.times do
  play major_c_scale[beat]
  sleep 1
end

# play each note in the scale
play_pattern major_c_scale, sustain: 0

# all the available scales
puts scale_names

blues = (scale :C, :blues_minor)
2.times do
  play_pattern blues
end
