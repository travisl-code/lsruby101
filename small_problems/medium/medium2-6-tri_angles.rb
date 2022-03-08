=begin

Understand the Problem
----------------------
  Input:  3 Integers representing angles of triangle
  Output: Symbol identifying type of triangle
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Right - one 90 degree angle
    Acute - All angles < 90 degrees
    Obtuse - One angle > 90 degrees
    Sum of angles = 180 AND all > 0 or invalid
    Integers (not floats), args are degrees

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given the integer arguments representing the angles of a trianlge, write
    a method that returns a symbol (identifying either the type of the trianlge
    or :invalid).


Examples
--------
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

  Edge Cases:
  

Data Structure
--------------
Integers as input
Integers in math calculations
Array for sorting/containing angles
Symbols as output


Algorithm
---------
Put the angles (args) into an array. Sort
Check to see if triangle is valid
Check to see if largest angle is > 90
Check to see if one angle is 90

  Helper Methods:
  is_invalid?(angle_arr)
  true if any element is 0
  true if sum of elements != 180

  
Code with Intent
----------------
=end

def triangle(angle1, angle2, angle3)
  angle_array = [angle1, angle2, angle3].sort
  if angle_array.any?(0) || angle_array.sum != 180 then :invalid
  elsif angle_array.last > 90 then :obtuse
  elsif angle_array.any?(90) then :right
  elsif angle_array.all? { |a| a < 90 } then :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
