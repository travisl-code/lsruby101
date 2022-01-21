=begin

Understand the Problem
----------------------
  Input:  Integer (year)
  Output: String as century w/ st, nd, rd, or th as appropriate
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Integer input, string output
    String should have concatenated st, nd, rd, or th

    -- Implicit Requirements --


  Questions:
    1. Assume positive integer?
    2. Should we do negative years?
    3. 

  Mental Model:
    - Given an integer as input, write a method that evaluates the year
    and returns the century of the given year. Append the st, nd, rd, or th
    string to the end of the century. Return the concatenated century.


Examples
--------
2000 => '20th'
2001 => '21st'
256 => '3rd'
5 => '1st'
11201 => '113th'

  Edge Cases:
  0 => '1st'

Data Structure
--------------
Integers for math, string concatenation.


Algorithm
---------
Given a integer as a year
See if the year % 100 has a remainder of 0.
  IF yes, divide year / 100 for century
  IF no, divide (year / 100) + 1 for century
Evaluate the last digit of the century
  IF 0, concat th
  IF 1, concat st
  If 2, concat nd
  IF 3, concat rd
  IF 4+, concat th

  Helper Methods:


  
Code with Intent
----------------
=end

def century(year)
  return '1st' if year == 0
  century = year % 100 == 0 ? year / 100 : (year / 100) + 1
  century = century.to_s

  # I forgot to account for 11th, 12th, 13th oddballs
  century = case century[-1]
  when '1' then century + 'st'
  when '2' then century + 'nd'
  when '3' then century + 'rd'
  else century + 'th'
  end
  century
end

p century(2000)
p century(2001)
p century(5)
p century(11201)
p century(0)
