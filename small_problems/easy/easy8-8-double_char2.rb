=begin

Understand the Problem
----------------------
  Input:  String
  Output: New string with all consonants doubled
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Vowels, digits, punctuation, whitespace should not be doubled

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string as input, write a method that evaluates the string's
    characters to see if they are alphabetic consonants and if so, double them
    (have them occur twice) and return a new string.


Examples
--------
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""


  Edge Cases:
  

Data Structure
--------------
String chars separated into array for iterations


Algorithm
---------
Given a string as input...
Create empty string variable result
Create an array of the characters from the string
Iterate through the array. For each char...
  - IF char is consonant, move * 2 to the result
  - IF char is not consonant, move char to result
Return result

  Helper Methods:


  
Code with Intent
----------------
=end

def double_consonants(str)
  result = ''

  str.chars.each do |char|
    if char.count("A-Za-z", "^AEIOUaeiou") > 0
      result << char * 2
    else
      result << char
    end
  end

  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
