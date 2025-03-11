#CHALLENGE G: Arrays. Optimize the Stranger Things and Seven Nation Army using loops + arrays!
# Seven Nation Army by The White Stripes

use_bpm 120
use_synth :fm
use_synth_defaults sustain: 0.25

notesList = [:e3, :e3, :g3, :e3, :r, :d3, :c3, :b2]
sleepList = [1.5, 0.5, 0.75, 0.25, 0.5, 0.5, 2, 2]


live_loop :white_stripes do
  n = 0
  s = 0
  8.times do
    play notesList[n]
    sleep sleepList[s]
    n = n + 1
    s = s + 1
  end
  
end

=begin

# Stranger Things Main Theme

use_bpm 160
use_synth :saw

noteList = [:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2]

live_loop :main_theme do
  n = 0
  with_fx :distortion do
    8.times do
      play noteList[n]
      sleep 0.5
      n = n + 1
    end
  end
end

=end
