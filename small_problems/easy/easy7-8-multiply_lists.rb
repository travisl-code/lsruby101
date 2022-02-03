=begin

Understand the Problem
----------------------
  Input:  Two arrays containing list of numbers (same number of elements)
  Output: New array containing product of each pairr of numbers at same index
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given two arrays of integers containing the same number of elements, write a 
    method that multiplies the numbers at each index and returns a new array with
    the product in each index.


Examples
--------
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

  Edge Cases:
  

Data Structure
--------------
Array iteration and return


Algorithm
---------
Given two arrays with equal numbers of elements...
Create an empty array variable
Create a counter variable as 0
Start a loop...
  - Multiple array1[counter] by array2[counter]
  - Move that product into the array

  Helper Methods:


  
Code with Intent
----------------
=end

def multiply_list(arr1, arr2)
  products = []
  counter = 0

  loop do
    products << arr1[counter] * arr2[counter]
    counter += 1
    break if counter >= arr1.size
  end

  products
end

# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Further Exploration - Array#zip for 1-line solution

def multiply_list2(arr1, arr2)
  arr1.zip(arr2).map {|sub| sub[0] * sub[1]}
end

p multiply_list2([3, 5, 7], [9, 10, 11]) # == [27, 50, 77]
