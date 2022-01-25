=begin

Understand the Problem
----------------------
  Input:  Integer representing number of digits of a number in fibonacci sequence
  Output: Integer representing index of 1st number that w/ the specified number of digits
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an integer representing a number digits, write a method
    that returns the index of the first number in the fibonacci sequence
    that makes the input number of digits.


Examples
--------
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

  Edge Cases:
  

Data Structure
--------------
Integers needed and possibly array (or counter variable)


Algorithm
---------
Given an integer as an argument...
Create an array variable with [1, 1]
Start a loop
  - append item to array equal to [-1] and [-2]
  - break if the number of digits in arr[-1] is >= input number

  Helper Methods:


  
Code with Intent
----------------
=end

def find_fibonacci_index_by_length(digits)
  fib_numbers = [1, 1]
  loop do
    fib_numbers << (fib_numbers[-2] + fib_numbers[-1])
    break if fib_numbers.last.digits.count >= digits
  end
  fib_numbers.size
end

p find_fibonacci_index_by_length(2) # == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) # == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) # == 45
p find_fibonacci_index_by_length(100) # == 476
p find_fibonacci_index_by_length(1000) # == 4782
p find_fibonacci_index_by_length(10000) # == 47847
