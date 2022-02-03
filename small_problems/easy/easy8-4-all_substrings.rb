=begin

Understand the Problem
----------------------
  Input:  String
  Output: Array containing all substrings of string. List should
    be ordered by where substring begins and in increasing length
    from each substring index
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Can use the leading_substrings method from last time

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string, write a method that returns all of the substrings
    from the given string. Each substring should start as index 0 and encompass
    all substrings possible from that index, then go to index 1 and get all
    substrings, then index 2, etc.


Examples
--------
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

  Edge Cases:
  

Data Structure
--------------
Array necessary for return value and iteration


Algorithm
---------
Given a string as input...
Initialize an empty array
Initialize a counter variable to 0
Create substring for counter index through range
  - Store in array
Flatten array

  Helper Methods:
  leading_substrings(start index, str)
  Initialize empty array
  Separate chars into array with index...
    - Iterate throgh chars array beginning at start index-range
    - Add each substring into array
  Return array


  
Code with Intent
----------------
=end

def substrings(str)
  all_substrings = []
  counter = 0

  loop do
    all_substrings << leading_substrings(counter, str)
    counter += 1
    break if counter >= str.size
  end

  all_substrings.flatten
end

def leading_substrings(start_index, str)
  substrings = []

  str.chars.each_with_index do |_, index|
    substring = str[start_index..index]
    substrings << substring unless substring.empty?
  end
  substrings
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
