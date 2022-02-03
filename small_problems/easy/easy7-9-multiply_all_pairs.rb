=begin

Understand the Problem
----------------------
  Input:  2 arrays containing list of numbers
  Output: New array containing product of all pairs of numbers
    that can be formed between elements of arrays; sorted ascending
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Neither array is empty

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given two arrays containing lists of numbers, write a method that returns
    a new array containing the product of every pair of numbers from multiplying
    elements between the arrays. Sort the returned array.


Examples
--------
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

  Edge Cases:
  

Data Structure
--------------
Arrays as input and for return value


Algorithm
---------
Given two arrays containing numbers...
Create an empty array variable
Iterate through the array. For each number...
  - Set a counter variable to 0
  - Multiply number by array2[counter]
    - Place number in new array
  - Increment the counter
  - Break if counter is equal to array2 size
Sort new array

  Helper Methods:


  
Code with Intent
----------------
=end

def multiply_all_pairs(arr1, arr2)
  products = []

  arr1.each do |num|
    counter = 0
    loop do
      products << num * arr2[counter]
      counter += 1
      break if counter >= arr2.size
    end
  end

  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
