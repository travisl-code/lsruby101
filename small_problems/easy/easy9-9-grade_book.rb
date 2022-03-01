=begin

Understand the Problem
----------------------
  Input:  3 integers between 0 - 100 representing grades
  Output: String %w(A B C D F) representing grades
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    90 <= score <= 100	'A'
    80 <= score < 90	'B'
    70 <= score < 80	'C'
    60 <= score < 70	'D'
    0 <= score < 60	'F'

    -- Implicit Requirements --
    3 grades are passed as individual args, not in array


  Questions:
    1. Will there always be 3 ints passed?
    2. 
    3. 

  Mental Model:
    - Given 3 integers representing numeric grades, write a method that
    returns a single-character (A B C D F) as a string representing the 
    grade after taking the average of the 3 integers.


Examples
--------
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

  Edge Cases:
  

Data Structure
--------------
Integers for addition/multiplication
String for grade


Algorithm
---------
Add the 3 grades together and divide by 3 for avg
When grades are in a certain range, return specific string

  Helper Methods:


  
Code with Intent
----------------
=end

def get_grade(g1, g2, g3)
  g_avg = (g1 + g2 + g3) / 3
  case g_avg
  when (90..100) then 'A'
  when (80...90) then 'B'
  when (70...80) then 'C'
  when (60...70) then 'D'
  else 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

# Further Exploration -- extra credit for 100+
# I think the best way to handle extra credit would be to continue letting
# the same average happen and then just add another case statement for averages
# over 100 to be an A+
