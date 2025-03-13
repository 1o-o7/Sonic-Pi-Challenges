#CHALLENGE H: Parameterized Functions. Optimize the Mortal Kombat theme using parameterized functions!

use_bpm 120
use_synth :chiplead

define :notes do |noteOne, noteTwo|
  play noteOne
  play noteTwo
  sleep 0.5
end

# MEASURE 1 ---------------------------
notes :a4, :a5

notes :a4, :a5

notes :c5, :c6

notes :a4, :a5


notes :d5, :d6

notes :a4, :a5

notes :e5, :e6

notes :d5, :d6

# MEASURE 2 ---------------------------
notes :c5, :c6

notes :c5, :c6

notes :e5, :e6

notes :c5, :c6

notes :g5, :g6

notes :c4, :c5

notes :e5, :e6

notes :c4, :c5

# MEASURE 3 ---------------------------
notes :g4, :g5

notes :g4, :g5

notes :b4, :b5

notes :g4, :g5

notes :c5, :c6

notes :g4, :g5

notes :d5, :d6

notes :c5, :c6

# MEASURE 4 ---------------------------
notes :f4, :f5

notes :f4, :f5

notes :a4, :a5

notes :f4, :f5

notes :c5, :c6

notes :f4, :f5

notes :c5, :c6

notes :b4, :b5
