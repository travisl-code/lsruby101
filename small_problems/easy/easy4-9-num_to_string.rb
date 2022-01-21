=begin

Understand the Problem
----------------------
  Input:  Integer number
  Output: String representing integer number
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - 


Examples
--------

  Edge Cases:
  

Data Structure
--------------



Algorithm
---------

  Helper Methods:


  
Code with Intent
----------------
=end

# I used a hash; could have done int division as well
DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(num)
  num.digits.map {|digit| DIGITS[digit]}.join('').reverse
end

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)

# Further Exploration - Mutating String methods w/o !
# insert
# <<
# replace
# setbyte
# clear
# concat

# Arrays:
# <<
# append/push
# concat
# delete, delete_at, delete_if
# fill
# initialize_copy/replace
# insert
# keep_if
# pop, shift, unshift, push

# Hashes:
# clear
# delete_if
# initialize_copy/replace
# keep_if
# rehash
# update (alias of merge!)
