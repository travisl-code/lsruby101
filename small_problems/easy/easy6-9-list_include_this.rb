=begin

Understand the Problem
----------------------
  Input:  Two args: 1) array, 2) search value
  Output: Bool true/false depending on if the search value is in array
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Not able to use Array#include?

    -- Implicit Requirements --

  Questions:
    1. Assume array given and 2nd arg?
    2. 
    3. 

  Mental Model:
    - Given an array and a search value, write a method that returns
    true if the search value is included in the array and false if it 
    is not included.


Examples
--------
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

  Edge Cases:
  

Data Structure
--------------
Array passed in, array for iteration


Algorithm
---------
1...
Use the Array#count method to see if search value in array 1+ times

2...
Set found variable equal to false
Iterate through input array...
  - For item, if item equals input search value
    - Set flag to true and break
Return flag variable

  Helper Methods:


  
Code with Intent
----------------
=end

def include?(arr, search)
  arr.count(search) >= 1
end

# p include?([1,2,3,4,5], 3) # == true
# p include?([1,2,3,4,5], 6) # == false
# p include?([], 3) # == false
# p include?([nil], nil) # == true
# p include?([], nil) # == false

def include2?(arr, search)
  found = false
  arr.each do |element|
    if element == search
      found = true
      break
    end
  end
  found
end

p include2?([1,2,3,4,5], 3) == true
p include2?([1,2,3,4,5], 6) == false
p include2?([], 3) == false
p include2?([nil], nil) == true
p include2?([], nil) == false
