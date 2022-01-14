=begin

Understand the Problem
----------------------
  Input:  Hash of string:int, k = name, v = age
  Output: Hash with k:v removed if v > 100
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    
    -- Implicit Requirements --

  Questions:
    1. Return same hash?
    2. 
    3. 


Data Structure
--------------

Hash iteration, hash return

Algorithm
---------
IF new Hash needed:
Given a hash name:age k:v pairs...
Create an empty hash
Iterate through hash
  - If v <= 100
    - Add k:v to new hash

IF modify existing hash:
Iterate through hash
  - Delete on conditional v > 100

  Helper Methods:


  
Code with Intent
----------------
=end

# Solution 1...
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
young_munsters = {}
for k, v in ages
  young_munsters[k] = v if v <= 100
end

p young_munsters

# Solution 2... (destructive)
ages.delete_if {|name, age| age > 100}

p ages
