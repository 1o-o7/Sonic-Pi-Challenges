# CHALLENGE D: Use functions to optimize the SpongeBob theme!

use_bpm 136
use_synth :piano

#Measures 3,4 and 6
define :sponge do
  play :r
  sleep 1
  play:E5
  play:Gs4
  play:B4
  sleep 1
  play:B4
  sleep 1
  play:E5
  play:Gs4
  sleep 1
end

#Measures 2 and 8
define :bob do
  play:E4
  sleep 1
  play:E5
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
end

#Measures 5 and 7
define :square do
  play:B4
  sleep 0.75
  play:As4
  sleep 0.25
  play:Gs4
  play:B4
  sleep 0.75
  play:Cs5
  sleep 0.25
  play:B4
  sleep 1
  play:Gs4
  play:E5
  sleep 1
end

#do NOT change this live loop
  live_loop:background_notes do
    play:E3, amp: 0.25
    sleep 1
    play:B3, amp: 0.25
    play:E4, amp: 0.25
    sleep 1
    play:B3, amp: 0.25
    sleep 1
    play:E4, amp: 0.25
    sleep 1
    
    play:E3, amp: 0.5
    sleep 1
    play:B3, amp: 0.5
    play:E4, amp: 0.5
    sleep 1
    play:B3, amp: 0.5
    sleep 1
    play:E4, amp: 0.5
    sleep 1
    
    play:E3, amp: 0.75
    sleep 1
    play:B3, amp: 0.75
    play:E4, amp: 0.75
    sleep 1
    play:B3, amp: 0.75
    sleep 1
    play:E4, amp: 0.75
    sleep 1
    
    5.times do
      play:E3, amp: 1
      sleep 1
      play:B3, amp: 1
      play:E4, amp: 1
      sleep 1
      play:B3, amp: 1
      sleep 1
      play:E4, amp: 1
      sleep 1
    end
    stop
  end
  
  #new layer
  live_loop :layer_new do
    16.times do
      sample :drum_tom_hi_soft, amp: 0.8
      sleep 1
      sample :drum_cymbal_soft, amp: 0.3
      sleep 1
    end
    stop
  end
  
  #optimize the 8 measures below with FUNCTIONS!
  
  
  # Measure 1
  play :r
  sleep 1
  play:E4
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
  
  # Measure 2
  bob
  
  # Measure 3
  sponge
  
  # Measure 4
  sponge
  
  # Measure 5
  square
  
  # Measure 6
  sponge
  
  # Measure 7
  square
  
  # Measure 8
  bob
  
  #End!
  play:B3, sustain: 3, amp: 2
  play:E4, sustain: 3, amp: 2
  
