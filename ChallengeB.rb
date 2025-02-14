#CHALLENGE B: Stranger Things Progression
use_synth :pulse

# Total Sleep = 4 beats (before repeating)
live_loop :notes1 do
  play :C4
  sleep 0.5
  play :E4
  sleep 0.5
  play :G4
  sleep 0.5
  play :B3
  sleep 0.5
  
  play :C2
  sleep 0.5
  play :B3
  sleep 0.5
  play :G3
  sleep 0.5
  play :E3
  sleep 0.5
end

sleep 8 #Wait here so I can hear ONLY the first live_loop

# Total Sleep = 2 beats (before loop repeats)
live_loop :chord do
  play chord(:C3, :major), amp: 1.5
  sleep 2
end

sleep 8 #Wait here

#Total Sleep = 4 beats (before loop repeats)
live_loop :note do
  play :C5
  sleep 0.5
  play :E5
  sleep 0.5
  play :G5
  sleep 0.5
  play :B4
  sleep 0.5
  
  play :C2
  sleep 0.5
  play :B4
  sleep 0.5
  play :G4
  sleep 0.5
  play :E4
  sleep 0.5
end

sleep 8 #Wait here

#Total Sleep = 4 beats (before loop repeats)
live_loop :scratch do
  sample :vinyl_scratch, amp: 0.5
  sleep 4
end
