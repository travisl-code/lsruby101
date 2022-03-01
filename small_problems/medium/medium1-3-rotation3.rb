=begin

Understand the Problem
----------------------
  Input:  Integer
  Output: Integer representing maximum rotation of number
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Can use the rotate_rightmost_digits method from previous

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an integer, perform digit rotation from left to right in a loop
    so that the maximum rotation of the original number takes place


Examples
--------
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845


  Edge Cases:
  

Data Structure
--------------
Integer input, integer output
Array of digits for manipulations of data


Algorithm
---------
Initialize a counter variable to the size of the number's digits
Start a loop...
  - Call the rotate helper method, 2nd arg is -counter
  - Increment the counter
  - Break the loop when the counter is 0

  Helper Methods:


  
Code with Intent
----------------
=end
require 'pry'

def rotate_rightmost_digits(number, digit)
  rotated = number.digits.reverse
  rotated << rotated.delete(rotated[-digit])
  rotated.join.to_i
end

def max_rotation(int)
  counter = int.digits.size
  loop do
    # binding.pry
    int = rotate_rightmost_digits(int, counter)
    counter -= 1
    break if counter == 0
  end
  int
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# Further Exploration - pieces vs whole
# This problem would have been incredibly difficult by itself as a whole, but taken
# in pieces, it's very manageable. The problems come from whether or not I'd be able
# to break apart the whole problem if presented to me by itself. I feel like it would
# have been a bit too overwhelming and I may not have been able to see a solution for
# how big the problem seemed. 

# To handle the edge case of multiple zeros, I think you'd have to keep the integer
# as a string. Otherwise, the 0s are stripped, or the 0s represent an octal (I think).
