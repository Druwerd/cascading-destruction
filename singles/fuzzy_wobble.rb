# Fuzzy Wobble

live_loop :fuzzy_wobble, sync: :beat do
  with_fx :wobble do
    sample :elec_fuzz_tom, rate: 0.25
  end
  sleep 1
end

live_loop :beat do
  play 35
  sleep 1
end

at 6 do
  16.times do
    with_fx :echo do
      play (scale :C, :harmonic_major).tick
    end
    sleep 0.5
  end
end

at 14 do
  16.times do
    with_fx :echo do
      play (scale :D, :harmonic_minor).tick
    end
    sleep 0.5
  end
end

at 22 do
  16.times do
    with_fx :echo do
      play (scale :G, :iwato).tick
    end
    sleep 0.5
  end
end