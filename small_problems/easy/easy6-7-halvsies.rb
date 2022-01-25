=begin

Understand the Problem
----------------------
  Input:  Array as argument
  Output: Nested array with 2 subarrays, each containing half the elements
  from the original array
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    If there is an odd number of elements in the array,
    the middle element should go into the 1st subarray.

    -- Implicit Requirements --
    A single element in array follows same rule (goes in first subarray),
    but a 2nd empty subarray should still be included in return
    Empty array input results in 2 empty subarrays

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an array of elements, split the arrays elements in half and
    return the first half into a subarray and the 2nd half into a 2nd
    subarray. Place the middle element into 1st subarray if odd number of
    elements.


Examples
--------
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

  Edge Cases:
  

Data Structure
--------------
Array input, array output requires array usage


Algorithm
---------
Given an array as input...
Create new empty array
Divide the length of the array by 2 into new subarray
  If odd number, slice halfway + 1
  If even number, slice halfway
Put 2nd half of array into 2nd subarray
Return nested array

  Helper Methods:


  
Code with Intent
----------------
=end

def halvsies(array)
  nested = []
  case array.length % 2
  when 0
    halfway = array.length / 2
    first = array[0, halfway]
    second = array.slice(halfway..-1)
  else
    halfway = (array.length / 2) + 1
    first = array[0, halfway]
    second = array.slice(halfway..-1)
  end

  nested = [first, second]
end

p halvsies([1, 2, 3, 4]) # == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) # == [[1, 5, 2], [4, 3]]
p halvsies([5]) # == [[5], []]
p halvsies([]) # == [[], []]

# Further Exploration 
# The LS solution used 2.0 instead of 2 because integer division
# would always result in an integer quotient. If you took the length of an array
# of 4 element / 2, that would be 2; and an array of 5 elements
# / 2 would also be 2 (5 / 2.0 would be 2.5). My solution accounted for
# this by using the % operator.
