=begin

Understand the Problem
----------------------
  Input:  Array of strings
  Output: Return same strings with vowels removed
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Remove vowels from strings in array

    -- Implicit Requirements --
    Both capital and lowercase vowels should be removed

  Questions:
    1. Mutate strings? Mutate array?
    2. Should Y ever count as vowel?
    3. 

  Mental Model:
    - Given an array of strings, write a method that returns an array
    containing the same strings, except that vowels should be removed
    from each string object.


Examples
--------
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

  Edge Cases:
  

Data Structure
--------------
Array given for problem, array needed for iterations


Algorithm
---------
Given an array of strings...
Iterate through array for each string:
  - Delete vowels from strings
Return new array

  Helper Methods:


  
Code with Intent
----------------
=end

def remove_vowels(string_array)
  string_array.map {|string| string.gsub(/[AEIOUaeiou]/, '')}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Further Exploration - explaining solution
# I actually used the gsub method with RegEx to solve this instead of the 
# delete method (which may have been easier). Both methods also allow for 
# easy adjustments to make either (or both) the array or strings modified
# destructively.
