=begin

Understand the Problem
----------------------
  Input:  String
  Output: Array of strings starting with first char of
    input str containing all substrings, ordered shortest
    to longest
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string as input, write a method that returns
    an array containing all the substrings of the original string
    starting with the first character. The array should be sorted
    from shortest to longest substring


Examples
--------
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

  Edge Cases:
  

Data Structure
--------------
String for input, array ouput and char iteration


Algorithm
---------
Given a string as input...
Initialize an empty array variable
Iterate through chars in string with index. For each char...
  - Add string range of index 0 - current index to array

  Helper Methods:


  
Code with Intent
----------------
=end

def leading_substrings(str)
  substrings = []

  str.chars.each_with_index do |_, index|
    substrings << str[0..index]
  end

  substrings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
