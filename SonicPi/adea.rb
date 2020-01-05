use_synth :piano
use_synth_defaults attack: 0, decay: 0, sustain: 0, release: 1
x=0
use_bpm 80
s=[:A, :D, :E, :A]
sample :vinyl_rewind, rate: 2, amp: 0.2
play_pattern_timed s, [0.5]
sleep 0.5
play_pattern_timed s, [0.25]
sleep 0.25
while x<50
  if x%12==0 then
    play_pattern_timed s, [0.15]
  end
  play chord(:g4, :m11).choose
  sleep 0.25
  play chord(:e4, :m7).choose
  sleep 0.25
  x+=1
end
play_pattern_timed s, [0.05]
play_pattern_timed s, [0.15]
