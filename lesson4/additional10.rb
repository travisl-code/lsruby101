=begin

Understand the Problem
----------------------
  Input:  Hash of k=string, v=nested hash
  Output: Hash with the inner hashes containing an extra k-v pair
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    'kid' = age 0 - 17
    'adult' = age 18 - 64
    'senior' = 65+
    Original hash should be modified

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 


Data Structure
--------------
Hashes and nested hashes


Algorithm
---------
Given a hash with string:hash k-v
Loop through k-v pairs (v is hash)
  For hashes v:
    - Add new 'age_group' key
    - Evaluate the age of Munster
    - Set value from evaluation

  Helper Methods:
  age_group

  
Code with Intent
----------------
=end

def age_group(age)
  if age >= 0 && age <= 17
    'kid'
  elsif age > 17 && age <= 64
    'adult'
  else
    'senior'
  end
end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.map do |munster, info|
  munsters[munster]['age_group'] = age_group(munsters[munster]['age'])
end

p munsters
