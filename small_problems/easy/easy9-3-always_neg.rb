=begin

Understand the Problem
----------------------
  Input:  Integer positive, negative, or 0
  Output: Negative value of number
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    0 returns 0

    -- Implicit Requirements --

  Questions:
    1. Can integer be signed +?
    2. 
    3. 

  Mental Model:
    - Given an integer n as an argument, write a method that returns
    the negative representation of n (similar to absolute value, it should
    always be negative, except if n is 0)


Examples
--------
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

  Edge Cases:
  

Data Structure
--------------
Integer operations should be enough



Algorithm
---------
Check to see if n is greater than 0
  - If no, return n
  - If yes, subtract n from itself twice

  Helper Methods:


  
Code with Intent
----------------
=end

def negative(n)
  n > 0 ? (n - n - n) : n
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

# Further exploration - using Numeric#abs method
# I considered absolute values in the original PECAC examination/algorith. However, I'm not 
# sure if the `-n.abs` method would be superior (from a technical or performance 
# perspective). I do think that it may not necessarily need to be its own method if
# if were used though. It's so shorthanded that it could be slipped into usage quite
# easily on its own.
