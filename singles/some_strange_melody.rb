# Welcome to Sonic Pi v2.11.1

live_loop :sounds do
  with_fx :reverb, room: 1 do
    sample :elec_ping, rate: 0.5, amp: 2
    sample :ambi_soft_buzz, rate: 2, amp: 1
    sample :guit_e_slide, rate: -1, amp: 2
    sleep 1
  end
end

live_loop :chords do
  with_fx :echo, decay: 2 do
    play chord(:C, :major), amp: 5
    sleep 2
    play chord(:F, :major), amp: 5
    sleep 2
    play chord(:G, :major), amp: 5
    sleep 2
  end
end

live_loop :beat do
  sample :bd_pure, amp: 10
  sleep 0.5
end