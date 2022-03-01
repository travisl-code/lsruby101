=begin

Understand the Problem
----------------------
  Input:  Nested array (2D) where each subarray contains str (grocery item) and int (quantity)
  Output: Flattened array where quantity of each item determines how many times it's listed
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --
    Output array should be sorted based on original list

  Questions:
    1. New array? Wording "converts it"
    2. 
    3. 

  Mental Model:
    - Given a 2D array containing a string (type of grocery item) and int (quantity),
    write a method that returns a new array where each item is listed q times in a flat
    array (where q represents the quantity integer)


Examples
--------
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

  Edge Cases:
  

Data Structure
--------------
Nested arrays and flat array for output


Algorithm
---------
Iterate through Array of arrays. For each array...
  - Create an empty array
  - Int number of times, move item into empty array
  - Return empty array from method
Flatten the array

  Helper Methods:


  
Code with Intent
----------------
=end

def buy_fruit(groceries)
  groceries.map do |subarr|
    temp = []
    subarr.last.times { temp << subarr.first }
    temp
  end.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
