use_synth :piano
use_synth_defaults attack: 2, decay: 0, sustain_level: 30, sustain: 0, release: 2, amp: 50
n=0.5
b=0.25
in_thread do
  count=30
  loop do
    sample :perc_snap
    sleep n
    sample :perc_snap
    sleep n
    if count%2==1
      sample :perc_snap2, rate: 2
      sleep n
    end
    count-=1
    if count==0
      break
    end
  end
end
64.times do
  play chord(:c, :m).choose
  sleep 0.5
end