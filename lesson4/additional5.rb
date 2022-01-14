=begin

Understand the Problem
----------------------
  Input:  Array of strings
  Output: Integer index of first name beginning with 'Be'
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 


Data Structure
--------------
Iteration through array for index


Algorithm
---------
Given array of strings...
Create counter variable equal to 0
Iterate through array
  - Return counter if string begins with 'Be'

  Helper Methods:


  
Code with Intent
----------------
=end

# Solution 1 (manual)...
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
NAME_SEARCH = 'Be'
counter = 0
index = nil

loop do
  current_name = flintstones[counter]
  if current_name.start_with?(NAME_SEARCH)
    index = counter
    break
  end

  counter += 1
  break if counter >= flintstones.size
end

p index

# Solution 2...
index2 = nil
flintstones.each_with_index do |name, i|
  index2 = i if name[0, 2] == NAME_SEARCH
end

p index2

# Solution 3...
p flintstones.index {|name| name.start_with?(NAME_SEARCH)}
