=begin

Understand the Problem
----------------------
  Input:  Array of integers between 0 - 19 (inclusive)
  Output: Array of those ints sorted based on English alphabetical order
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Sort the integers provided based on alphabetic order
    E.g. [8, 7, 9] => [8, 9, 7] # eight, nine, seven

    -- Implicit Requirements --
    19 inclusive

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an array of integers between 0 - 19 inclusive, write a method
    that sorts those integers alphabetically (not numerically) and returns
    an array of the sorted integers.


Examples
--------
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

  Edge Cases:
  

Data Structure
--------------
A hash to hold the k-v association between ints and string representation


Algorithm
---------
Given an array of integers between 0 - 19...
Create a hash of keys (integers) and values (string representation of number)
Using the given array...
  - Lookup the keys:values based on the array values
  - Sort the returned hash values alphabetically
  - return the keys associated with the sorted hash values

  Helper Methods:


  
Code with Intent
----------------
=end

WORDS = %w(zero one two three four five six seven eight nine ten
eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def make_hash
  test = {}
  20.times do |num|
    test[num] = WORDS[num]
  end
  test
end

ALPHANUM = make_hash()

def alphabetic_number_sort(numbers)
  values = []
  sorted = []

  numbers.each do |num|
    values << ALPHANUM[num]
  end
  
  values.sort!

  values.each do |value|
    sorted << ALPHANUM.key(value)
  end

  sorted
end

p alphabetic_number_sort([8, 7, 9])
p alphabetic_number_sort((0..19).to_a)

# Further Exploration - already used sort
