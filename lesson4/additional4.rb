=begin

Understand the Problem
----------------------
  Input:  Hash of strings:ints with k = name, v = age
  Output: Integer of minimum age
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
Hash input, array of values for output


Algorithm
---------
Given hash of names:ages...
Create empty array variable
Create variable equal to 0
Iterate through hash
  - store values in array
Store 1st value from array in int variable
Iterate through array
  - Compare current value to stored value
  - If current value < stored value
    - Stored equal current value
  - Else continue to next iteration


  Helper Methods:


  
Code with Intent
----------------
=end

# Solution 1 (manual)
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages_arr = []
youngest = 0
counter = 0

for k, v in ages
  ages_arr << v
end

youngest = ages_arr.first

loop do
  current_age = ages_arr[counter]
  youngest = current_age if current_age < youngest

  counter += 1
  break if counter >= ages_arr.size
end

p youngest

# Solution 2...
p ages.values.min

# Solution 3...
youngest2 = ages.values.first
ages.each {|name, age| youngest2 = age if age < youngest2}

p youngest2
