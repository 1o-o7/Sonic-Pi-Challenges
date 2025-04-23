# Youtube sample link: https://youtu.be/C0ppulkmXPw?si=eoQpkKnG4OCrPLkT
# Music Sheets - https://musescore.com/user/27577043/scores/5655852  https://musescore.com/user/1881141/scores/1335321

use_bpm 135

guitar_sample = "C:/Users/jocelyn_vazquez/Downloads/guitar_samplee.mp3"
drums_sample = "C:/Users/jocelyn_vazquez/Downloads/unravel_Drums.mp3"
guitar_sample2 = "C:/Users/jocelyn_vazquez/Downloads/guitar_sample2.mp3"
extra_drums = "C:/Users/jocelyn_vazquez/Downloads/extra_Drums.mp3"
out_sample = "C:/Users/jocelyn_vazquez/Downloads/out_sample.mp3"

define :rightNotes_m2 do
  play :A3, amp: 0.5
  play :Bb3, amp: 0.5
  play :D5, amp: 0.5
  play :G5, amp: 0.5
end

define :notes_m do |play1, play2, play3|
  play play1
  play play2
  play play3
end

define :m3_notesOne do
  play :D4, amp: 1.5
  play :D5, amp: 1.5
  sleep 0.25
  play :Bb4
  play :Bb5
  sleep 0.5
  play :D4
  play :D5
  sleep 0.25
  play :G4
  play :G5
  sleep 1
end

define :m3_notesTwo do |notes|
  sleep 0.5
  play :D3
  play :Bb4
  play :D4
  sleep 0.5
  play notes
  play :C4
  play :C3
  sleep 0.5
  play :D3
  play :Bb4
  play :D4
  sleep 0.5
end

define :notesThree_m3 do |addFX|
  notesthree_List = [:D2, :G3, :Bb3, :G3, :D2, :Bb2]
  t = 0
  notethree_List = [:C2, :F3, :A3, :F3, :C2, :A2]
  three = 0
  
  with_fx addFX do
    play :G1, amp: 1.5
    play :G2, amp: 1.5
    sleep 0.5
    6.times do
      play notesthree_List[t]
      sleep 0.25
      t = t + 1
    end
    play :F1
    play :F2
    sleep 0.5
    6.times do
      play notethree_List[three]
      sleep 0.25
      three = three + 1
    end
  end
end

define :notesFour_m3 do |insertFX|
  notesfour_List = [:Bb2, :Ds3, :G3, :Ds3, :Bb2, :G2]
  f = 0
  notefour_List = [:A2, :D3, :Fs3, :D3, :A2, :Fs2]
  four = 0
  with_fx insertFX do
    play :Ds1, amp: 1.5
    play :Ds1, amp: 1.5
    sleep 0.5
    6.times do
      play notesfour_List[f]
      sleep 0.25
      f = f + 1
    end
    play :D1
    play :D2
    sleep 0.5
    6.times do
      play notefour_List[four]
      sleep 0.25
      four = four + 1
    end
  end
end

define :notesFive do
  play :Bb5
  sleep 0.75
  play :Bb5
  sleep 0.75
  play :Bb5
  sleep 0.5
  play :Bb5
  sleep 1
  play :Bb5
  sleep 0.5
  play :D5
  sleep 0.5
  
  play :D5
  sleep 0.75
  play :C5
  sleep 0.75
  play :C5
  sleep 0.5
  play :C5
  sleep 1.5
  play :Bb5
  sleep 0.5
end

define :notesSix do |note1, note2, note3, note4|
  play note1
  sleep 1.5
  play note2
  play note3
  play note4
  sleep 1.5
  play note2
  play note3
  play note4
  sleep 1
end

notesList = [:D5, :D4, :G4, :C5, :D4, :G4, :Bb5, :G4,:D5, :D4, :G4, :C5]

sample guitar_sample, amp: 4

sleep 8

live_loop :one do
  #measure 1
  2.times do
    n = 0
    a = 0.5
    use_synth :bass_foundation
    with_fx :slicer do
      notes_m :G2, :D2, :G3
      sleep 0.5
      notes_m :F2, :C2, :F3
      sleep 0.5
    end
    
    use_synth :dpulse
    with_fx :ping_pong  do
      12.times do
        play notesList[n], amp: a
        sleep 0.25
        n = n + 1
        a = a + 0.1
      end
    end
  end
  
  #measure 2
  use_synth :dpulse
  with_fx :ping_pong do
    rightNotes_m2
    sleep 0.75
    rightNotes_m2
    sleep 0.75
    
    4.times do
      rightNotes_m2
      sleep 0.5
    end
  end
  
  sample :drum_heavy_kick
  sleep 0.5
  #measures 3-6
  with_fx :pitch_shift do
    m3_notesOne
    m3_notesTwo :Bb4
    
    m3_notesOne
    m3_notesTwo :A4
    
    m3_notesOne
    m3_notesTwo :Bb4
    
    m3_notesOne
    m3_notesTwo :Fs4
  end
  
  stop
end

sleep 8

live_loop :drums do
  1.times do
    sample drums_sample, amp: 3
  end
  stop
end

live_loop :two do
  #measure 2
  use_synth :bass_foundation
  1.times do
    notes_m :G1, :D2, :G2
    sleep 0.25
    notes_m :G1, :D2, :G2
    sleep 0.5
    notes_m :G1, :D2, :G2
    sleep 0.25
    
    4.times do
      notes_m :G1, :D2, :G2
      sleep 0.5
    end
    
    #measures 3-6
    notes_m :G1, :D2, :G2
    sleep 1
    
    2.times do
      notesThree_m3 :bitcrusher
      notesFour_m3  :ping_pong
    end
  end
  stop
end

sleep 20

sample guitar_sample2, amp: 4
sleep 3.7

notesTwo_List = [:A5, :Bb5, :A5, :A5, :F4, :G5,]
sleepList = [1, 0.5, 0.5, 0.5, 1, 0.5]

live_loop :three do
  x = 0
  s = 0
  y = 1
  use_synth :bass_foundation
  1.times do
    with_fx :ping_pong do
      #measures 8&9
      notesFive
      
      #measure 10
      play :C5
      sleep 0.75
      play :C5
      sleep 0.25
      play :Bb5
      sleep 0.5
      play :A5
      sleep 0.5
      play :A5
      sleep 0.5
      play :F4
      sleep 1
      play :D4
      sleep 0.5
      
      #measure 11
      play :D4
      sleep 1.5
      play :D4
      sleep 0.5
      play :C4
      sleep 1.5
      play :A5
      sleep 0.5
      
      #measures 12&13
      notesFive
      
      #measure 14
      6.times do
        play notesTwo_List[x], amp: y
        sleep sleepList[s]
        x = x + 1
        s = s + 1
        y = y - 0.1
      end
    end
    
    #measure 15
    with_fx :echo do
      with_fx :slicer do
      play :G5, amp: 0.5
      sleep 3.5
      play :F3, amp: 0.4
      end
    end
  end
  stop
end

live_loop :Four do
  use_synth :piano
  2.times do
    with_fx :mono do
      notesSix :G2, :G3, :Bb3, :D3
      
      notesSix :E2, :E3, :G3, :Bb3
      
      notesSix :F2, :F3, :A3, :C3
      
      play :Bb2, amp: 1
      sleep 1.5
      play :D2, amp: 1.5
      play :F3, amp: 1.5
      play :A3, amp: 1.5
      sleep 1.5
      play :C2, amp: 1
      sleep 0.5
      play :D2, amp: 1.5
      play :F3, amp: 1.5
      play :A3, amp: 1.5
      sleep 0.5
    end
  end
  stop
end

live_loop :extraDrums do
  1.times do
    sample extra_drums, amp: 4
  end
  stop
end

sleep 32

sample out_sample, amp: 4
sleep 14.845

