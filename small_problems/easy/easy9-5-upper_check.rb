=begin

Understand the Problem
----------------------
  Input:  String of characters
  Output: True/false representing whether all chars are uppercase
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Non-alphabetic chars are ignored

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string as input, write a method that evaluates each of the 
    alphabetic characters in the string and returns true if all characters
    are uppercase and false if not.


Examples
--------
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true


  Edge Cases:
  

Data Structure
--------------
String input and comparison
Array to contain and transform for comparison


Algorithm
---------
Create variable upper as empty str
Split characters into array. For each character
  - Uppercase each char
  - Rejoin the array to str (assigned to variable)
Evaluate if start string == mapped string

  Helper Methods:


  
Code with Intent
----------------
=end

def uppercase?(str)
  upper = str.chars.map { |char| char.upcase }.join('')
  str == upper
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# Further Exploration - should empty str return false?
# I can't think of a case where you'd want to return false with an empty
# string. It almost seems like a type of input validation, which I don't think
# is necessary for empty strings exclusively. I think you would want to check
# more facets of the input than just that.
