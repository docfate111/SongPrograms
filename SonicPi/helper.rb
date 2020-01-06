class CreateChord
    attr_accessor :l
    def initialize(new_l)
        @l=new_l
    end
    def setChord(new_l)
        @l=new_l
    end
    def makeMajChord()
        #major triad
        return [@l, (@l).map {|x| x+4}, (@l).map {|x| x+7} ]
    end
    #minor triad
    def makeMinChord()
      return [(@l), l.map {|x| x+3}, l.map {|x| x+7} ]
    end
    def majortriads()
        twod=makeMajChord(@l)
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
    def majortriads()        
        twod=makeMinChord(@l)
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
end
def is_numeric?(s)
    begin
      Float(s)
    rescue
      false # not numeric
    else
      true # numeric
    end
end

class SheetMusic
    attr_accessor :songstr
    #takes in a string representing sheet music
    #A is note a 
    #A2 means play A as a half note, A4 play A as a quarter note,
    #A8 means play A as a 
    def sheetlisten()
        n=0.5
        i=0
        while i<@songstr.length-1
            case @songstr[i]
                when 'a' 
                    play :a
                when 'b' 
                    play :b
                when 'c' 
                    play :c
                when 'd' 
                    play :d
                when 'e' 
                    play :e
                when 'f' 
                    play :f
                when 'g' 
                    play :g
                else
                    if(!is_numeric?(@songstr[i]))
                        puts("invalid char")
                    end
                end
                if(!is_numeric?(@songstr[i+1]))
                    sleep 0.5
                else
                    case @songstr[i+1]
                    when '2' 
                        #for halfnote at regular speed: sleep 1
                        n=1
                    when '8' 
                        #for eighth
                        n=0.25
                    when '6' 
                        #for sixteenth note
                        n=0.125
                    end
                    sleep n
                    i+=1
                end
                i+=1
            end
        end 
    end