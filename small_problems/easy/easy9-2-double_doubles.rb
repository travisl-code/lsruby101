=begin

Understand the Problem
----------------------
  Input:  Integer number n (possibly a 'double number')
  Output: Input number n if n is double number, else n * 2
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Double number = num with w/ even number of digits where left-side are same as right-side

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an integer n as an argument, write a method that will check if n is a 
    double number. If it is, return n; if it is not, return n * 2


Examples
--------

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

  Edge Cases:
  

Data Structure
--------------
Integer as input, array for digits of n


Algorithm
---------
Check to see if n is_double_num?
  - If yes, return n
  - If no, return n * 2

  Helper Methods:
  is_double_num?(n)
  return false if digit length is odd
  If digit length even, split numbers of n into array of digits
  Evaluate if first half of digits is same as second half
  - Slice array in half using length / 2 (first half and 2nd)


  
Code with Intent
----------------
=end

def is_double_num?(n)
  return false if n.digits.length.odd?
  digits = n.digits.reverse
  halfsize = digits.length / 2
  digits[0, halfsize] == digits[halfsize, halfsize]
end

def twice(n)
  is_double_num?(n) ? n : n * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
