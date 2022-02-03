=begin

Understand the Problem
----------------------
  Input:  Array of integers
  Output: String containing float w/ 3 decimals, which is the result
    of multiplying all array values and dividing by number of entries in array
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Round to nearest 3 decimals
    Array is never empty

    -- Implicit Requirements --
    The method displays output in this form:
      "The result is #{result}"

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an array of integers, write a method that multiplies
    all the integers in the array together and divides that value by
    the number of elements in the array. Round the result to 3 decimal
    places and output the result in string format.


Examples
--------
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

  Edge Cases:
  

Data Structure
--------------
Working with array and integers and float


Algorithm
---------
Given an array of integers as input...
Create a total variable initialized to 1
Iterate through the array. For each int...
  - Multiply each element by total
Result is total divided by array size
Format result to 3 decimals as string

  Helper Methods:


  
Code with Intent
----------------
=end

def show_multiplicative_average(arr)
  total = 1.0
  arr.each { |num| total *= num }
  
  result = format("%.3f", (total / arr.size))
  puts "The result is #{result}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# Further Exploration - Result of not using float?
# The first line of the method requires that 1 be a float because if it's not,
# it will be an integer still when division happens later for the result (because
# the array consists of integers). The integer division will not allow for decimals
# to be included in the answer (rounds to nearest whole number).
