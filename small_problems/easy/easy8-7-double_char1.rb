=begin

Understand the Problem
----------------------
  Input:  String
  Output: New string with every char doubled
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --
    Empty should still return empty string

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string as input, write a method that returns a new
    string where every character is repeated twice (doubled).


Examples
--------
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

  Edge Cases:
  

Data Structure
--------------
String into array of chars


Algorithm
---------
Given a string as input...
Create an empty string variable result
Create an array of chars from input string
Iterate through array. For each char...
  - Move 2 of the current chars into the result string
Return result string

  Helper Methods:


  
Code with Intent
----------------
=end

def repeater(str)
  result = ''
  str.chars.each { |char| result << char * 2 }
  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
