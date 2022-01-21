=begin

Understand the Problem
----------------------
  Input:  Integer (year)
  Output: Boolean of whether year is leap year or not
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    1752 is year of Gregorian adoption
      - Before 1752, any year evenly divisible by 4 is a leap year
      - After, follow standard leap year rules

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - 


Examples
--------
# Gregorian examples:
2016 => true
2015 => false
2100 => false
2400 => true 

  Edge Cases:
  1 => false
  #Julian
  1752 => true
  1700 => true

Data Structure
--------------
Integers for math operations


Algorithm
---------
Given an integer representing a year
IF year is <= 1752, follow Julian rules
IF year > 1752, follow Gregorian rules

  Helper Methods:
  julian_leap?
  if year is evenly divisible by 4, return true

  gregorian_leap?
  if year % 400 == 0 return true
  if year % 4 == 0 and year % 100 != 0 return true
  
Code with Intent
----------------
=end

def leap_year?(year)
  year <= 1752 ? julian_leap?(year) : gregorian_leap?(year)
end

def julian_leap?(year)
  year % 4 == 0 ? true : false
end

def gregorian_leap?(year)
  return true if year % 400 == 0
  year % 4 == 0 && year % 100 != 0
end

p leap_year?(2016)
p leap_year?(2015)
p leap_year?(2100)
p leap_year?(2400)
p leap_year?(1)
p leap_year?(1752)
p leap_year?(1700)
