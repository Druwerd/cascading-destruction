# Rings

use_synth :beep

r1 = (ring 60, 62, 64, 65) # takes any index

8.times do
  puts beat
  play r1[beat]
  sleep 1
end

# create a new ring
r2 = r1.shuffle.take(3)
puts r2

6.times do
  puts beat
  play r2[beat]
  sleep 1
end

sleep 2

# Immutable
puts r1
8.times do
  puts beat
  play r1[beat]
  sleep 1
end