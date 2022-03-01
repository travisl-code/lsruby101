=begin

Understand the Problem
----------------------
  Input:  Integer > 0
  Output: Array of integers between 1 and input num
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a positive integer greater than 0, write a method that
    returns an array of integers between 1 and the input number


Examples
--------
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

  Edge Cases:
  

Data Structure
--------------
Integer input, range/array for for output


Algorithm
---------
Create range from 1 to input (inclusive)
Convert range to array

  Helper Methods:


  
Code with Intent
----------------
=end

def sequence(n)
  (1..n).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# Further exploration - handling negatives?
# Since 1 is the start point, I think we don't handle 0 cases
# and instead start with -1 for negative inputs

def sequence2(n, sign='+')
  sign = '-' if n < 0
  (1..n.abs).to_a.map { |num| (sign + num.to_s).to_i }
end

p sequence2(-5)
p sequence2(-3)
p sequence2(-1)
