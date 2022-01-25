=begin

Understand the Problem
----------------------
  Input:  2 arrays as args
  Output: 1 array containing all values from 2 input arrays with no duplicates
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    No duplicates should be included

    -- Implicit Requirements --

  Questions:
    1. Any sorting needed?
    2. Assume correct input?
    3. Returning new array or one or other originals?
    4. Use Array#merge method?

  Mental Model:
    - Given two arrays passed as arguments, write a method that outputs a single
    array containing all the values from the original 2, with duplicates removed.


Examples
--------
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

  Edge Cases:
  

Data Structure
--------------
Array should be sufficient


Algorithm
---------
Given 2 arrays as input...
Merge the arrays
Remove duplicates

  Helper Methods:


  
Code with Intent
----------------
=end

def arr_merge(arr1, arr2)
  arr1.append(arr2).flatten.uniq
end

# p arr_merge([1, 3, 5], [3, 6, 9]) # == [1, 3, 5, 6, 9]

# Further Exploration - other methods?
def arr_merge2(arr1, arr2)
  count = 0
  new_arr = arr1
  while count < arr2.size
    new_arr << arr2[count]
    count += 1
  end

  p new_arr.uniq
end

p arr_merge2([1, 3, 5], [3, 6, 9]) # == [1, 3, 5, 6, 9]
