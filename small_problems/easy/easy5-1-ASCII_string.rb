=begin

Understand the Problem
----------------------
  Input:  String value as method arg
  Output: Integer representing ASCII value of all chars
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Evaluate the ASCII value of each string char
    Sum all the values of chars

    -- Implicit Requirements --
    Empty string should be 0
    Return should be an integer

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string as an argument, find the ASCII value
    of all characters, and take the sum of all values


Examples
--------
'Four score' => 984
'Launch School' => 1251
'a' => 97
'' => 0

  Edge Cases:
  

Data Structure
--------------
Array should hold each string char and allow iteration


Algorithm
---------
Given a string as an argument...
Split all characters in the string into an array
Iterate through array...
  - Evaluate ASCII value of each string
Take sum of all ASCII values

  Helper Methods:


  
Code with Intent
----------------
=end

def ascii_value(string)
  string.chars.map do |char|
    char.ord
  end.sum
end

p ascii_value('Four score')
p ascii_value('Launch School')
p ascii_value('a')
p ascii_value('')

# Further Exploration - mystery method
# Looks like the mystery method is supposed to be
# Integer#chr and it returns the character representation
# of an encoded ASCII number.
