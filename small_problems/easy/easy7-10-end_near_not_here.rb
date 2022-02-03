=begin

Understand the Problem
----------------------
  Input:  String containing at least 2 words
  Output: String, 2nd to last word from input
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Word = any sequence of non-blank characters

    -- Implicit Requirements --
    Division of string based on spaces

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string containing at least 2 words separated by spaces,
    write a method that returns the 2nd to last word.


Examples
--------
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

  Edge Cases:
  

Data Structure
--------------
Split string into array


Algorithm
---------
Given a string with at least 2 words...
Split the string into an array by spaces
Return the 2nd to last element

  Helper Methods:


  
Code with Intent
----------------
=end

def penultimate(str)
  str.split[-2]
end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

# Further Exploration - Edge cases:
# Retrieve word from middle of sentence
# 1) Empty string passed
# 2) String with even number of words (no definitive middle)

def middle_word(str)
  word = ''
  return word if str.empty? # Return empty string if input empty
  
  words = str.split
  
  if words.size.even?
    word = words.slice(words.size/2 - 1, 2).join(' ')
  else 
    word = words[words.size / 2]
  end

  word
end

p middle_word('')
p middle_word('Two words')
p middle_word('Not edge case')
