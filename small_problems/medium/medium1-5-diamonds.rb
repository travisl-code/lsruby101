=begin

Understand the Problem
----------------------
  Input:  Odd integer n
  Output: Display of diamonds (*) in n * n grid
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Input integer is always odd

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an odd integer n as an argument, write a method that displays
    a diamond shape using asterisks (*) in an n * n grid.


Examples
--------
diamond(3)

 *
***
 *

 diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

  Edge Cases:
  

Data Structure
--------------
Integer input, with math operations for positions
and blank space. Strings/string interpolation for *s


Algorithm
---------
Create a hash lines
Initialize hash keys as 1 - n, values as empty string
line_keys as array of keys
times to iterate = (n / 2) + 1
  - Use 
  - lines[line_keys[1]]
  - lines[line_keys[-1]]



Divide start integer by 2 to variable spaces
Start a loop to iterate n times...
  - Stars is n - (spaces * 2)
  - Display spaces + stars + spaces
  - Spaces -= 1

  Helper Methods:


  
Code with Intent
----------------
=end
require 'pry'

def initialize_lines(n)
  hsh = Hash.new
  n.times { |iteration| hsh[iteration + 1] = '' }
  hsh
end

def make_line(iter, spaces)
  stars = '*' * iter
  blanks = ' ' * spaces
  line = "#{blanks}#{stars}#{blanks}"
end

def update_lines_hash!(num, lines)
  line_keys = lines.keys
  spaces = num / 2
  stars = 1
  1.upto((num / 2) + 1) do |iteration|
    lines[line_keys[iteration - 1]] = make_line(stars, spaces)
    break if iteration == (num / 2) + 1
    lines[line_keys[-iteration]] = make_line(stars, spaces)
    spaces -= 1
    stars += 2
  end
end

def diamond(n)
  lines = initialize_lines(n)
  update_lines_hash!(n, lines)
  lines.values.each { |line| puts line }
end

# diamond(1)
# diamond(3)
# diamond(9)

# Further Exploration - Modify to print outline of diamond
# Each line should contain 1 (on the first and last lines) or 2 stars
# For first and last lines:
#   - line should be n length with '*' in center position
#   - spaces = ' ' * ((n - 1) / 2)

# For inner lines:
  # - Lines contain 2 stars
  # - Stars begin at center -1 and center +1 positions
  # - Increment the offcenter
  # Start a loop... For each iteration
  #   - Populate 2nd, and 2nd to last values, then 3rd and 3rd to last, etc
  #   - Use iteration number to create first half of string
  #   - Second half of string separately, and concat

def make_first_and_last!(n, hsh)
  spaces = ' ' * ((n - 1) / 2)
  hsh[hsh.keys.first] = "#{spaces}*#{spaces}"
  hsh[hsh.keys.last] = "#{spaces}*#{spaces}"
end

def make_middle_line!(n, hsh)
  str = ' ' * n
  str[0] = '*'
  str[-1] = '*'
  hsh[((n - 1) /2) + 1] = str
end

def make_inner_lines!(n, hsh, iteration)
  half = (n - 1) / 2
  front = ' ' * half
  back = ' ' * half
  front[-(iteration - 1)] = '*'
  back[iteration - 2] = '*'
  str = "#{front} #{back}"
  hsh[iteration] = str
  hsh[hsh.keys[-iteration]] = str
end

def diamond_outline(n)
  lines = initialize_lines(n)
  make_first_and_last!(n, lines)
  
  1.upto((n - 1) / 2) do |iteration|
    next if iteration == 1 # First/last lines already created
    make_inner_lines!(n, lines, iteration)
  end

  make_middle_line!(n, lines)

  lines.values.each { |line| puts line }
end

diamond_outline(3)
diamond_outline(5)
diamond_outline(9)
diamond_outline(1)
