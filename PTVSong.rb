use_bpm 73

define :pierce do |insertFX|
  with_fx insertFX do
    sleep 0.25
    play :G3
    sleep 0.25
    play :Ab3
    sleep 0.25
    play :Eb4
    sleep 0.25
    play :Bb3, sustain: 3
    sleep 3
  end
end

define :veil do |addFX|
  with_fx addFX do
    sleep 0.25
    play :F3
    sleep 0.25
    play :G3
    sleep 0.25
    play :Eb4
    sleep 0.25
    play :Bb3, sustain: 3
    sleep 3
  end
end

define :para do |sound1, sound2, sound3, sound4, sound5, sound6, sound7|
  play sound1
  sleep 0.5
  play sound2
  sleep 0.5
  play sound3
  sleep 0.5
  play sound4
  sleep 1
  play sound5
  sleep 0.5
  play sound6
  sleep 0.5
  play sound7
  sleep 0.5
end

define :repeat do
  play :Bb3, amp: 1.5
  sleep 0.5
  play :Bb3, amp: 1.5
  sleep 0.5
  play :Eb4, amp: 1.5
  sleep 0.5
  play :F4, amp: 1.5
  sleep 0.5
end

drums_sample = "C:/Users/jocelyn_vazquez/Downloads/HOTM- Drums.mp3"
bass_sample = "C:/Users/jocelyn_vazquez/Downloads/bass.mp3"
extra_sample = "C:/Users/jocelyn_vazquez/Downloads/extra-sound.mp3"
drums_2_sample = "C:/Users/jocelyn_vazquez/Downloads/drums2.mp3"

notesList = [:G2, :Ab2, :Eb3, :Bb2, :Ab2, :G2, :Ab2,:Eb3, ]
sleepList = [0.25, 0.25, 0.25, 0.5, 0.5, 0.25, 0.25, 0.25,]

live_loop :hold do
  use_synth :dpulse
  
  pierce :ping_pong
  pierce :krush
  
  veil :ping_pong
  veil :krush
  
  sample :elec_lo_snare
  sleep 1
  sample :elec_lo_snare, amp: 1.5
  sleep 1
  
  use_synth :subpulse
  8.times do
    n = 0
    s = 0
    a = 0.4
    8.times do
      play notesList[n], amp: a
      sleep sleepList[s]
      n = n + 1
      s = s + 1
      a = a + 0.1
    end
    
    play :Bb2, sustain: 1.5, amp: 1
    sleep 1.5
    play :Ab2, amp: 1
    sleep 0.5
  end
  stop
end

sleep 16


live_loop :drums do
  1.times do
    sleep 3
    sample drums_sample, amp: 3
    sleep 32
  end
  stop
end

sleep 4


live_loop :on do
  use_synth :bass_foundation
  1.times do
    with_fx :echo do
      play :Eb4, sustain: 1, amp: 1.5
    end
    with_fx :ping_pong do
      sleep 1.5
      play :F4, amp: 1.5
      sleep 0.5
      play :Eb4, sustain: 2, amp: 1.5
      sleep 2
      
      sleep 1.5
      play :Bb3
      sleep 0.5
      play :Eb4
      sleep 0.5
      play :F4
      sleep 0.5
      play :Eb4
      sleep 0.5
      play :F4
      sleep 1
      
      sleep 0.5
      play :Eb4, amp: 1.5
      sleep 2
      play :Bb3, amp: 1.5
      sleep 0.5
      play :Eb4, amp: 1.5
      sleep 0.5
      play :F4, amp: 1.5
      sleep 0.5
      
      play :Eb4, amp: 1.5
      sleep 0.5
      play :Bb3, amp: 1.5
      sleep 0.5
      repeat
      play :Eb4, amp: 1.5
      sleep 0.5
      with_fx :reverb do
        play :Eb4, sustain: 1.5, amp: 1.5
        sleep 2.5
      end
      
      
      sleep 1
      play :Eb4, amp: 1.5
      sleep 0.75
      play :F4, amp: 1.5
      sleep 0.75
      with_fx :reverb do
        play :Eb4, sustain: 1, amp: 1.5
        sleep 1.5
      end
      
      
      sleep 1
      play :Bb3, amp: 1.5
      sleep 0.5
      play :Bb3, amp: 1.5
      sleep 0.5
      play :Eb4, amp: 1.5
      sleep 0.75
      play :F4, amp: 1.5
      sleep 0.75
      play :F4, amp: 1.5
      sleep 1.5
      
      sleep 1
      repeat
      play :G4, amp: 2
      sleep 0.5
      play :G4, amp: 2
      sleep 0.5
      
      play :F4, amp: 2
      sleep 0.5
      play :G4, amp: 2
      sleep 0.5
      play :F4, amp: 2
      sleep 0.5
      play :Eb3, amp: 2
      sleep 0.5
      play :Bb3, sustain: 1, amp: 2
      sleep 1
      play :G4, amp: 2
      sleep 0.5
      play :Bb4, amp: 2
      sleep 0.5
    end
  end
  stop
end

sleep 12

live_loop :bass do
  x = 0
  y = 0.25
  z = 1.5
  4.times do
    sample bass_sample, start: x, finish: y, amp: z
    sleep 20.738/4
    x = x + 0.25
    y = y + 0.25
    z = z + 0.5
  end
  stop
end

sleep 24

live_loop :extra do
  1.times do
    sample extra_sample, amp: 1.5
    sleep 32
  end
  stop
end


use_synth :dpulse
live_loop :main do
  1.times do
    with_fx :ping_pong do
      play :Ab4
      sleep 0.75
      play :G4
      sleep 0.75
      play :F4
      sleep 1
      play :G4
      sleep 0.5
      play :F4
      sleep 0.5
      play :Eb4
      sleep 0.5
      
      para :F4, :G4, :Ab4, :G4, :Bb3, :Eb4, :F4
      
      para :F4, :G4, :F4, :F4, :Eb4, :Eb4, :Bb4
      
      para :Bb4, :Ab4, :G4, :F4, :Eb4, :Eb4, :F4
      
      play :G4
      sleep 0.5
      play :G4
      sleep 0.75
      play :G4
      sleep 0.75
      play :G4
      sleep 0.25
      play :F4
      sleep 0.25
      play :Eb4
      sleep 0.25
      play :F4
      sleep 0.25
      play :G4
      sleep 0.25
      play :F4
      sleep 0.25
      play :Eb4
      sleep 0.25
      
      play :F4
      sleep 0.5
      play :Eb4
      sleep 0.5
      play :G4, sustain: 1
      sleep 1.5
      play :Eb4
      sleep 0.5
      play :Eb4
      sleep 0.5
      play :Bb4
      sleep 0.5
      
      para :Bb4, :Ab4, :G4, :F4, :G4, :F4, :Eb4
      
      play :F4
      sleep 0.5
      play :F4
      sleep 0.5
      play :Eb4
      sleep 0.5
      play :F4
      sleep 0.5
      play :Eb4
      sleep 1
      play :Bb4
      sleep 1
      
      play :Bb4, sustain: 1.5, amp: 0.5
      play :Eb4, sustain: 1.5, amp: 0.5
      play :F4, sustain: 1.5, amp: 0.5
      
      sleep 2
    end
    stop
  end
end

sleep 16

live_loop :drums_2 do
  1.times do
    sample drums_2_sample, amp: 1.5
    sleep 16
  end
  stop
end
