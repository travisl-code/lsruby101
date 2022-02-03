=begin

Understand the Problem
----------------------
  Input:  Non-empty string
  Output: Middle character or characters from string
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    If an odd number of elements in string, return 1 char
    If an even number of elements, return 2 chars

    -- Implicit Requirements --
    1 element still returns 1 element

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a non-empty string as an argument, write a method that
    returns a string containing the middle character (if the string 
    contains an odd number of elements) or middle 2 characters
    (if string contains even number of elements).


Examples
--------
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'


  Edge Cases:
  

Data Structure
--------------
String separation into array


Algorithm
---------
Given a non-empty string as empty...
# NOT needed - Create an array containing the characters from string
Conditional...
  IF array contains odd number of elements
    Divide array length by 2 for 1 element
  IF array contains even number of elements
    Divide array length by 2, subtract 1, return 2 elements

  Helper Methods:


  
Code with Intent
----------------
=end

def center_of(str)
  if str.length.odd?
    result = str[str.length/2]
  else
    result = str[str.length/2-1, 2]
  end
  result
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
