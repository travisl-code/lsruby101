=begin

Understand the Problem
----------------------
  Input:  Array of strings
  Output: Same array with all strings shortened to 3 chars
  (Should output return same object?)
    - Yes

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 


Data Structure
--------------
Array for iteration, and then string modification


Algorithm
---------
Given an array of strings...
Iterate through the array
  - Modify the strings in the array
Return the same array object

  Helper Methods:


  
Code with Intent
----------------
=end

# Solution 1...
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts "flinstones object ID #{flintstones.object_id}"

flintstones.map! do |name|
  name = name[0, 3] # Did not need reassignment
end

p flintstones
puts "flinstones object ID #{flintstones.object_id}"

# Solution 2...
flintstones2 = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts "flinstones2 object ID before: #{flintstones2.object_id}"
counter = 0

loop do
  flintstones2[counter] = flintstones[counter[0, 3]]

  counter += 1
  break if counter >= flintstones2.size
end

p flintstones2
puts "flinstones2 object ID after: #{flintstones2.object_id}"
