=begin

Understand the Problem
----------------------
  Input:  Array of numbers
  Output: Sum of sums of each leading sequence from array
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Array always contains at least 1 number

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an array of numbers, write a method that takes the sum
    of each subsequent set of numbers from the array


Examples
--------
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

  Edge Cases:
  

Data Structure
--------------
Array input and iteration


Algorithm
---------
Given an array of numbers...
Initialize a total variable at 0
Iterate through array. For each number...
  - Range of indexes from 0 to current of array:
    - Add sum of those numbers
    - Save to total
Return total

  Helper Methods:


  
Code with Intent
----------------
=end

def sum_of_sums(array)
  total = 0

  array.each_with_index do |num, index|
    total += array[0..index].sum
  end

  total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
