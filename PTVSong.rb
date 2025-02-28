use_bpm 73

define :pierce do
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

define :veil do
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



live_loop :hold do
  use_synth :dpulse
  
  with_fx :ping_pong do
    pierce
  end
  with_fx :krush do
    pierce
  end
  
  with_fx :ping_pong do
    veil
  end
  with_fx :krush do
    veil
  end
  
  sample :elec_lo_snare
  sleep 1
  sample :elec_lo_snare, amp: 1.5
  sleep 1
  
  use_synth :subpulse
  8.times do
    play :G2, amp: 0.8
    sleep 0.25
    play :Ab2, amp: 0.8
    sleep 0.25
    play :Eb3, amp: 0.8
    sleep 0.25
    play :Bb2, amp: 0.8
    sleep 0.5
    play :Ab2, amp: 0.8
    sleep 0.5
    play :G2, amp: 0.8
    sleep 0.25
    play :Ab2, amp: 0.8
    sleep 0.25
    play :Eb3, amp: 0.8
    sleep 0.25
    play :Bb2, sustain: 1.5, amp: 0.8
    sleep 1.5
    play :Ab2, amp: 0.8
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
      play :Bb3, amp: 1.5
      sleep 0.5
      play :Eb4, amp: 1.5
      sleep 0.5
      play :F4, amp: 1.5
      sleep 0.5
      play :Eb4, amp: 1.5
      sleep 0.5
      play :F4, amp: 1.5
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
  1.times do
    sample bass_sample, amp: 3
    sleep 32
  end
  stop
end

sleep 24

use_synth :dpulse

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
play :Eb3
sleep 0.5
