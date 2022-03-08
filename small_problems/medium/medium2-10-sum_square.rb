=begin

Understand the Problem
----------------------
  Input:  Positive integer n
  Output: Integer representing difference of 2 nums
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Take difference between 2 numbers
    Num 1: sum of square of first n digits -- (1 + 2 + 2)**2
    Num 2:sum of squares of first n positive nums -- (1**2 + 2**2 + 3**2)

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an integer n as an argument, write a method that returns an 
    integer representing the difference between 2 numbers (the square of sum
    of 1 - n) and the num of squares of first n numbers.


Examples
--------
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

  Edge Cases:
  

Data Structure
--------------
Integer input/output
Integer calculations/math operations
Range methods, possibly array methods


Algorithm
---------
Calculate First Num:
  - Get sum of ints 1 - n
  - Square number
Calculate Second Num:
  - Create array of nums 1 - n
  - Iterate transformatively
  - num ** 2
  - Take sum of all nums in array returned
Calculate difference between nums

  Helper Methods:


  
Code with Intent
----------------
=end

def sum_square_difference(n)
  ((1..n).reduce(&:+) ** 2) -
  ((1..n).map { |num| num ** 2 }.sum)
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
