=begin

Understand the Problem
----------------------
  Input:  Array
  Output: Array with 1st and last elements swapped
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Do not modify original array

    -- Implicit Requirements --
    Single element array should return exactly the same

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an array, write a method that does not mutate the original array, but
    that returns a new array with the 1st and last elements swapped.


Examples
--------
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true


  Edge Cases:
  

Data Structure
--------------
Array for input and output
Might use hash for holding first and second values

Algorithm
---------
### Misread requirements -- only first element should move; last element does not
move to the front ###

Initialize hash with first and last keys
Initialize a copy of the array to new variable
  - From copy, pop to last hash key
  - From copy, shift to first hash key
Evaluate if values are nil
  - If NOT nil, prepend/append to copied array

  Helper Methods:


  
Code with Intent
----------------
=end
require 'pry'

def rotate_array(arr)
  hsh = { first: nil }
  copy = arr.dup
  hsh[:first] = copy.shift
  copy.append(hsh[:first]) unless hsh[:first] == nil
  copy
end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true

# Further Exploration - Rotate string
# Can use the rotate_array method from above
def rotate_str(str)
  rotate_array(str.chars).join
end

# p rotate_str('hello world') == 'ello worldh'

# For ints
def rotate_int(int)
  rotate_array(int.digits.reverse).join.to_i
end

p rotate_int(12345) == 23451
