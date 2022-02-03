=begin

Understand the Problem
----------------------
  Input:  String as arg
  Output: New string, uppercase letters lower and lowercase letters upper
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --
    Preserve spaces and punctuation

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string as an argument, write a method that returns a
    new string with the same as the input except with uppercase letters
    lowercased and lowercase letters uppercased.


Examples
--------
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

  Edge Cases:
  

Data Structure
--------------
String will need to be examined character by character 
as an array


Algorithm
---------
Create constant with array of uppercase chars
Given a string, separate chars from string into array
Iterate through array. For each char...
  - If char in constant, downcase it
  - If char not in constant, upcase it

  Helper Methods:


  
Code with Intent
----------------
=end

UPPER = ('A'..'Z').to_a

def swapcase(str)
  str.chars.map do |char|
    UPPER.include?(char) ? char.downcase : char.upcase
  end.join('')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
