=begin

Understand the Problem
----------------------
  Input:  Number representing nth number in fibonacci sequence
  Output: The number representation at that fibonacci sequence digit
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Procedural, not recursive solution.

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - 


Examples
--------
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501

  Edge Cases:
  

Data Structure
--------------
Integers for math


Algorithm
---------
Set a start1 variable to 0
Set a start2 variable to 1
Set a result variable to 0
Start a loop... n number of times
  - result is start1 + start2
  - start1 = start2
  - start2 is result
Return result variable

  Helper Methods:


  
Code with Intent
----------------
=end

def fibonacci(n)
  result = 0
  start1 = 0
  start2 = 1
  (n - 1).times do
    result = start1 + start2
    start1 = start2
    start2 = result
  end
  result
end

p fibonacci(20) #== 6765
p fibonacci(100) #== 354224848179261915075
p fibonacci(1)
p fibonacci(2)
p fibonacci(100_001)
