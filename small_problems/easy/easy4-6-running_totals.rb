=begin

Understand the Problem
----------------------
  Input:  Array of numbers with n elements
  Output: Array of numbers with n elements; each element = running total
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Array of numbers given (no input validation requested)
    Return array with same number of elements
    Array returned should have each element keeping running total

    -- Implicit Requirements --
    Empty array should return empty array

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an array of numbers with n elements, return an array with n elements
    where each element is the sum total of the elements before it.


Examples
--------
[3] => [3]
[2, 5, 13] => [2, 7, 20]
[14, 11, 7, 15, 20] => [14, 25, 32, 47, 67]

  Edge Cases:
  

Data Structure
--------------
Arrays needed for input and return and iteration


Algorithm
---------
Given an array of numbers.
Create array variable
Iterate through array. On each iteration (current_num)
  - Check the value of the last element in the new array
  - Add a new element equal to current_num + last element
Return new array

  Helper Methods:


  
Code with Intent
----------------
=end

def running_total(arr)
  totals = []
  
  arr.each do |current_num|
    totals.empty? ? totals << current_num : totals << totals.last + current_num
  end

  totals
end

# p running_total([3])
# p running_total([2, 5, 13])
# p running_total([14, 11, 7, 15, 20])
# p running_total([])

# Further Exploration - use Enum#each_with_object or #inject
def running_total2(arr)
  arr.each_with_object([]) do |current_num, a|
    a.empty? ? a.push(current_num) : a.push(current_num + a.last)
  end
end

# p running_total2([3])
# p running_total2([2, 5, 13])
# p running_total2([14, 11, 7, 15, 20])
# p running_total2([])

# def running_total3(arr)
#   arr.inject([0]) {|sum, num|  sum.push(num + sum.last)}[1..-1]
# end
def running_total3(arr)
  total = 0
  new_arr = arr.inject([]) do |array, item|
    array << total += item
  end
end

p running_total3([3])
p running_total3([2, 5, 13])
p running_total3([14, 11, 7, 15, 20])
p running_total3([])
