=begin

Understand the Problem
----------------------
  Input:  2 integers (1st = count, 2nd = 1st num of multiples)
  Output: Array of integers where numbers are the multiples of 2nd input arg
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    1st number passed is count (how many numbers to return in array)
    2nd number is first in sequence of multiples

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given two integers as arguments -- the first being a count representing how many
    elements, and the 2nd representing the first number in a sequence of multiples -- 
    write a method that returns array of n1 elements of multiples of n2, starting with n2.


Examples
--------
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []


  Edge Cases:
  

Data Structure
--------------
Integers for input, array for output


Algorithm
---------
Create an empty array results variable
Initialize copy of n2
Start a loop n1 times
  - Move copy of n2 into the results
  - Add n2 to itself
  - Return to beginning of loop
Return results

  Helper Methods:


  
Code with Intent
----------------
=end

def sequence(count, start)
  results = []
  copy = start
  count.times do
    results << copy
    copy += start
  end
  results
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
