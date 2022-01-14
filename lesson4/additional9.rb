=begin

Understand the Problem
----------------------
  Input:  String of words
  Output: String with first character of each word capitalized
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --
    Probably should downcase all other chars.
    "Creates a string" implies this is nondestructive.

  Questions:
    1. 
    2. 
    3. 


Data Structure
--------------
Array of words from string, string methods



Algorithm
---------
Given a string of words...
Create empty string variable
Split the words of the string into an array
Iterate through the array
  - Downcase all chars
  - Capitalize first char

  Helper Methods:


  
Code with Intent
----------------
=end

def titleize(str)
  titleized = ''
  words = str.split

  words.map! { |word| word.downcase.capitalize }
  titleized = words.join(' ')
end

words = "the flintstones rock"
p titleize(words)
