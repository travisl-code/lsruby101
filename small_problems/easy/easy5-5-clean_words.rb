=begin

Understand the Problem
----------------------
  Input:  String of lowercase words and non-alphabetic chars
  Output: String with non-aphabetic chars replaced by spaces
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Replace all non-alphabetic characters with spaces
    If multiple non-alphabetic chars are in a row, use 1 space
      - Result never has consecutive spaces
    
    -- Implicit Requirements --

  Questions:
    1. Return mutated string? "returns that string"
    2. 
    3. 

  Mental Model:
    - Given a string of all lowercase words and any number of non-alphabetic
    characters, write a method that replaces the non-alphabetic characters with
    a space. Never have more than 1 consecutive space.


Examples
--------
"---what's my +*& line?" => ' what s my line '

  Edge Cases:
  

Data Structure
--------------
Need array to replace non-alphabetic chars and only use 1 space


Algorithm
---------
Create an array of lowercase letters a - z
Iterate through all characters in the string
  - If character is in array, next iteration
  - If character is not in array, replace with space
Store first char in array to variable
Iterate through array again...
  - Evaluate current char
    - Select if previous char was not a space
    - Set "first" to current char

  Helper Methods:


  
Code with Intent
----------------
=end
CHARS = ('a'..'z').to_a

def remove_consecutive_spaces(characters)
  evaluator = characters.first
  clean = evaluator

  for character in characters
    if character != ' '
      clean << character
    else
      clean << character unless evaluator == ' '
    end
    
    evaluator = character
  end

  clean
end

def cleanup(mess)
  cleaner = mess.chars.map do |char|
    CHARS.include?(char) ? char : ' '
  end
  
  # Simpler version with RegEx, commented out:
  # cleaner.join('').gsub(/\s+/, ' ')
  remove_consecutive_spaces(cleaner)
end

p cleanup("---what's my +*& line?")
