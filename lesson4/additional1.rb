=begin

Understand the Problem
----------------------
  Input:  Array of strings
  Output: Hash (k = names : v = index)
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
Hash for holding new data


Algorithm
---------
Given an array of strings
Create a Hash variable
Loop through the array
  - Store each string into array as key
  - Store the index of the string as the value
Return Hash

  Helper Methods:


  
Code with Intent
----------------
=end

# 1st solution...
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
f_hash = {}

flintstones.each_with_index do |name, index|
  f_hash[name] = index
end

p f_hash

# 2nd solution...
f_hash2 = {}
counter = 0
loop do
  f_hash2[flintstones[counter]] = counter
  counter += 1
  break if counter >= flintstones.size
end

p f_hash2
