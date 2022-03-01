=begin

Understand the Problem
----------------------
  Input:  Integer representing nth sequece in fibonacci
  Output: Integer representing the number of that fibonacci sequence
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Use recursion
    Fibonacci number is the sum of the last 2 digits in sequence

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an integer representing the nth fibonacci sequence, write a recursive method
    that returns the value of that fibonacci sequence.


Examples
--------
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

  Edge Cases:
  

Data Structure
--------------
Integers for mathematic operations


Algorithm
---------
Start recursive math.
  - Return 1 if n == 1 or n == 2
  - Math formula is essentially this:
  - (n - 1) + (n - 2)

  Helper Methods:


  
Code with Intent
----------------
=end

def fibonacci(n)
  return 1 if n == 1 || n == 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(10) #
p fibonacci(11)
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765

# Further Exploration - Problems with solution
# According to info from LS, it's not very fast or optimized. It also
# doesn't handle negative numbers.
