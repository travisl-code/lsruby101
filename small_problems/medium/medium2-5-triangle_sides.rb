=begin

Understand the Problem
----------------------
  Input:  3 integers representing the lengths of each side of a triangle
  Output: One of four symbols (equilateral, isosceles, scalene, invalid)
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    equilateral - all sides equal
    isosceles = 2 sides equal, 3rd diff
    scalene = 3 sides diff
    invalid if l1 + l2 <= l3
    invalid if any side = 0

    -- Implicit Requirements --
    Float lengths can be included
    Not in array, 3 individual number args

  Questions:
    1. Always 3 integers
    2. 
    3. 

  Mental Model:
    - Given 3 numbers as arguments representing sides of a triangle, write a method that returns a symbol representing
    the type of triangle based on the lengths of each side of the triangle.


Examples
--------
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

  Edge Cases:
  

Data Structure
--------------
Numbers passed as arguments
Numbers used for comparisons of sides
Symbols used as return values

Algorithm
---------
Check to see if triangle sides are invalid
Check to see if all values = each other
Check to see if all values unique

  Helper Methods:
  is_invalid?(s1, s2, s3)
  Either number == 0
  Sort into array. 
    Index 0 + Index 1 < Index 2


  
Code with Intent
----------------
=end
def is_invalid?(side_array)
  return true if side_array.any?(0)
  side_array[0] + side_array[1] < side_array[2]
end

def triangle(side1, side2, side3)
  triangle_arr = [side1, side2, side3].sort
  return :invalid if is_invalid?(triangle_arr)
  if triangle_arr.all?(triangle_arr.first) then :equilateral
  elsif triangle_arr.uniq.size == triangle_arr.size then :scalene
  elsif triangle_arr.uniq.size == 2 then :isosceles
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
