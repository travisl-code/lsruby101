=begin

Understand the Problem
----------------------
  Input:  String representing word
  Output: Boolean true/false representing if word can be spelled using blocks
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    13 blocks
    Each block contains 2 letters
    Only one letter can be used per block
    Each block only used once

    -- Implicit Requirements --
    Case insensitive

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a serties of 'blocks' that contain 2 letters each, and each block
    only being able to be used once, write a method that takes a string as input
    and returns a boolean true/false representing whether the word can be spelled
    using the blocks.


Examples
--------
These are the blocks:
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

  Edge Cases:
  

Data Structure
--------------
Boolean return
String input
String characters represented as either side of block
Seems like array of hashes may work.
  - Example:
  [{letters: ['B', 'O']}] or
  [{letters: 'BO'}]
  [{block: 'BO', used: false}]
  Or simple array:
  ['BO', 'XK', 'DQ', etc.]


Algorithm
---------
Initialize array of hashes where each hash is a 'block' and has a key for if used
Separate the input string into array, upcase letters
Iterate through array. For each character...
  - Find the character in the blocks array
  - If the :used key is false, set to true, continue
  - If the :used key is true, return false
Return true 

  Helper Methods:


  
Code with Intent
----------------
=end
BLOCKS = ['BO', 'XK', 'DQ', 'CP', 'NA', 'GT', 'RE',
  'FS', 'JW', 'HU', 'VI', 'LY', 'ZM']

def initialize_blocks
  result = []
  BLOCKS.each do |block|
    result << {block: block, used: false }
  end
  result
end

def block_word?(word)
  blocks = initialize_blocks
  word_arr = word.upcase.chars
  block_word = true
  word_arr.each do |char|
    blocks.each do |block|
      if block[:block].include?(char)
        block[:used] == false ? block[:used] = true : block_word = false
      end
    end
  end
  block_word
end

p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true
