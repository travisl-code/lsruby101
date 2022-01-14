=begin

Understand the Problem
----------------------
  Input:  Hash with string:int, k = name : v = age
  Output: Integer as sum of all values
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
Pull values to array, get sum from array


Algorithm
---------
Given a hash consisting of names:ages
Create empty array variable
Create total variable as 0
Iterate through the Hash
  - Store values in array
Iterate through array
  - Add integers from array to total variable

  Helper Methods:


  
Code with Intent
----------------
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages_arr = ages.values
total = 0
counter = 0

loop do
  current_age = ages_arr[counter]
  total += current_age

  counter += 1
  break if counter >= ages_arr.size
end

p total


# Solution 2...
p ages.values.sum
