=begin

Understand the Problem
----------------------
  Input:  Positive integer as arg
  Output: Right triangle of * characters with sides equal to input number
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    The hypotenuse should have one end at lower left
    and one end at upper right

    -- Implicit Requirements --

  Questions:
    1. Input validation for positive?
    2. Should 1 just show a single *?
    3. 

  Mental Model:
    - Given a positive integer as an argument, write a method that
    creates a right triangle (right angle in bottom right) where each
    side has the length of the input number. The entire area of the 
    triange should be formed using the * character


Examples
--------
triangle(5)

    *
   **
  ***
 ****
*****

  Edge Cases:
  

Data Structure
--------------
Strings should work for this


Algorithm
---------
Initialize a count variable = arg
Start a loop
  - Print line with spaces and *
  - Decrement the count variable
  - Break when count <= 0

  Helper Methods:
  print_line
  Given a counter and total number,
  ' ' * counter
  '*' * total - counter


  
Code with Intent
----------------
=end

def triange(size)
  counter = size
  loop do
    print_line(counter, size)
    break if counter <= 0
    counter -= 1
  end
end

def print_line(spaces, stars)
  puts "#{' ' * spaces}#{'*' * (stars - spaces)}"
end

# triange(5)

# Further Exploration - upside down
def upper_triangle(size)
  counter = 0
  loop do
    print_line(counter, size)
    break if counter >= size
    counter += 1
  end
end

upper_triangle(5)
