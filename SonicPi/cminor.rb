# Welcome to Sonic Pi v3.1
synth :dark_ambience
x=0
while x<20
  play chord(:c, :minor)
  sleep 0.25
  x+=1
end