=begin

Understand the Problem
----------------------
  Input:  2 arrays passed as args
  Output: New array with all elements alternating
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Arrays are not empty.
    Arrays have same number of elements

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given 2 arrays as arguments, write a method that returns
    a single array containing all the elements from both input 
    arrays, but with elements in alternating order.


Examples
--------
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

  Edge Cases:
  

Data Structure
--------------
Arrays passed to method as args, array as output



Algorithm
---------
Given 2 arrays as arguments
Initialize an empty array as variable
Set a counter variable to 0
Start a loop...
  Move arr1[0] into empty array
  Move arr2[0] into empty array
  Increment counter
  Break from loop if counter >= input arr size
Return array

  Helper Methods:


  
Code with Intent
----------------
=end

def interleave(arr1, arr2)
  mixed = []
  counter = 0

  loop do
    mixed << arr1[counter]
    mixed << arr2[counter]
    counter += 1
    break if counter >= arr1.size
  end

  mixed
end

# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Further Exploration - Rewrite using Array#zip
def interleave2(arr1, arr2)
  mixed = []
  arr1.zip(arr2) do |sub|
    mixed << sub
  end
  mixed.flatten
end

# p interleave2([1, 2, 3], ['a', 'b', 'c'])


# Simpler way...
def interleave3(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave3([1, 2, 3], ['a', 'b', 'c'])
