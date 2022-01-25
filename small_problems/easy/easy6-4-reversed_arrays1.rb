=begin

Understand the Problem
----------------------
  Input:  Array as method arg
  Output: Same array object with elements reversed
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Cannot use reverse or reverse!

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an array, reverse the elements of the element while returning
    the same array object. Cannot use the reverse! method.


Examples
--------
['abc'] => ['abc']
[] => []
%w(a b e d c) => %w(c d e b a)

  Edge Cases:
  

Data Structure
--------------
Array for destructive changes


Algorithm
---------
Given an array as an argument...
Set a count variable to 0
For the length of the array (loop)...
  - Move the last element to count index
  - Increment count by 1
  - break when count == length of array

  Helper Methods:


  
Code with Intent
----------------
=end

def arr_reverse!(array)
  original_size = array.length
  high_index = original_size

  array.length.times do |index|
    array.insert(high_index, array[index])
  end

  array.shift(original_size)
end

first = []
second = [1, 2, 3, 4]
third = ['abc']
fourth = %w(a b c d e f)

arr_reverse(first)
arr_reverse(second)
arr_reverse(third)
arr_reverse(fourth)
