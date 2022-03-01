=begin

Understand the Problem
----------------------
  Input:  String representing person's first + last name with space between
  Output: String with Last, First format
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string representing a person's name in "First Last" format, write
    a method that returns the name as string in "Last, First" format.


Examples
--------
swap_name('Joe Roberts') == 'Roberts, Joe'

  Edge Cases:
  

Data Structure
--------------
String input and output
Conversion to array of words


Algorithm
---------
Split the string into an array of words separated by spaces
Return string of last element + ', ' + first element

  Helper Methods:


  
Code with Intent
----------------
=end

def swap_name(name)
  name_arr = name.split(' ')
  "#{name_arr.last}, #{name_arr.first}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
