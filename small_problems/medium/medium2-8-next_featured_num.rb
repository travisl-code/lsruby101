=begin

Understand the Problem
----------------------
  Input:  Integer
  Output: Integer representing next featured num
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    3 characteristics: 1) odd, 2) multiple of 7, 3) digits not repeated
    Error message if no next ft. number

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an integer as an argument, write a method that returns the next
    featured number (multiple of 7, no repeating digits, odd number)


Examples
--------featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


  Edge Cases:
  

Data Structure
--------------
Integers for math (multipls and odd calc)
Possibly array for digits


Algorithm
---------
Initialize iterator variable
Start loop. Each iteration...
  - See if number is featured
  - If yes, return
  - If no, number += 1 (could perform better + 7)
  - Break if no possible numbers
    - 10 digits means all numbers

  Helper Methods:


  
Code with Intent
----------------
=end

NUM = 7
def is_featured?(int)
  int.odd? && int % NUM == 0 && int.digits == int.digits.uniq
end

def featured(int)
  int += 1
  until int % NUM == 0
    int += 1
  end

  loop do
    return int if is_featured?(int)
    int += NUM
    break if int.digits.size >= 11
  end

  "There is no number that fulfills those requirements."
end

p featured(12) #== 21
p featured(20) #== 21
p featured(21) #== 35
p featured(997) #== 1029
p featured(1029) #== 1043
p featured(999_999) #== 1_023_547
p featured(999_999_987) #== 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
