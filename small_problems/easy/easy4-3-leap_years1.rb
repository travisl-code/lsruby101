=begin

Understand the Problem
----------------------
  Input:  Integer (year) greater than 0
  Output: Boolean for if year is a leap year
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Assume input is a number greater than 0
    Any year evenly divisble by 4 is leap year
      - EXCEPT if year is also divisible by 100
        - If divisible by 4 and 100 evenly, only leap year if divisible by 400
    Evaluate whether input year is leap year (true or false)

    -- Implicit Requirements --

  Questions:
    1. Input validation? 
    2. 
    3. 

  Mental Model:
    - Given a year as input, evaluate if the year is evenly visible by 4. If no,
    return false. If yes, also determine if divisible by 100. If no, return true. If yes,
    determine if year is also divisible by 400. If yes, return true. If no, false.


Examples
--------
2016 => true
2015 => false
2100 => false
2400 => true

  Edge Cases:
  1 => false

Data Structure
--------------
Integer for mathematic operations


Algorithm
---------
Given an integer as a year...
Evaluate if year % 4 is 0
  - IF no, return false
  - IF yes...
    - Evaluate if year % 100 is 0
      - IF no, return true
      - IF yes...
        Evaluate if year % 400 is 0
          - IF yes, return true
          - IF no, return false

  Helper Methods:


  
Code with Intent
----------------
=end


# My method met the further exploration criteria
# but it lacked the compactness of the provided solution
def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      year % 400 == 0 ? true : false
    else
      true
    end
  else
    false
  end
end

p leap_year?(2016)
p leap_year?(2015)
p leap_year?(2100)
p leap_year?(2400)
p leap_year?(1)
