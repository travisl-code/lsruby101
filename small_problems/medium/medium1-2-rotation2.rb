=begin

Understand the Problem
----------------------
  Input:  2 Integers (1: number to rotate, 2: which digit to rotate from the right)
  Output: Rotated integer
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Can use the rotate method from last time

    -- Implicit Requirements --

  Questions:
    1. Assume input always valid? 2 integers?
    2. Assume the number to rotate is always accurate? Test cases = yes
    3. 

  Mental Model:
    - 


Examples
--------
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917


  Edge Cases:
  

Data Structure
--------------
Integers passed, array for splitting
Integers for index


Algorithm
---------
Split digits into array, reverse
Delete the digit from index specified
  - Place digit at end of array
Rejoin array

  Helper Methods:


  
Code with Intent
----------------
=end

def rotate_rightmost_digits(number, digit)
  rotated = number.digits.reverse
  rotated << rotated.delete(rotated[-digit])
  rotated.join.to_i
end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

num = 735291
p rotate_rightmost_digits(num, 5)
p num
