=begin

Understand the Problem
----------------------
  Input:  String
  Output: Hash of chars in string and their occurrence count
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --
Ignore spaces (I think). Caps counted separated

  Questions:
    1. Anything other than string?
    2. What to do with spaces? Nothing?
    3. 


Data Structure
--------------
Array of characters in string
Hash after iterating through string


Algorithm
---------
Given a string...
Create empty hash with a default value of 0
Drop the spaces from the string
Split the string into an array of individual characters
Iterate through the array of characters
  - Set the current character as the Hash key
  - Set value += 1

  Helper Methods:
  

  
Code with Intent
----------------
=end

statement = "The Flintstones Rock"
chars = Hash.new(0)
arr = statement.gsub(' ', '').chars

arr.each do |char|
  chars[char] += 1
end

p chars
