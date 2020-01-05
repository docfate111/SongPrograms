# Welcome to Sonic Pi v3.1
use_synth :piano
l=[:E, :D, :E, :A]
def makeMajChord(l)
  return [l, l.map {|x| x+4}, l.map {|x| x+7} ]
end
def MajChord(twod)
  final=[]
  for i in 0..((twod[0]).length-1)
    eachMajor=[]
    for j in 0..(twod.length-1)
      eachMajor.push(twod[j][i])
    end
    final.push(eachMajor)
  end
  return final
end
def genchords(x)
  return MajChord(makeMajChord(x))
end
cds=genchords([65, 54, 89, 78, 67])
print(cds)
loop do
  play (cds[4]).choose
  sleep 0.25
end
loop do
  play ([51, 48, 55, 58]).choose
  sleep 0.25
end