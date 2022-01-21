=begin

Understand the Problem
----------------------
  Input:  2 strings
  Output: Short string + long string + short string
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Strings are of different lengths.
    
    -- Implicit Requirements --
    Empty string arg is essentially the long string returned

  Questions:
    1. Assume we always get a string?
    2. Return new string?
    3. 

  Mental Model:
    - Given 2 strings as an argument, write a method that evaluates the lengths of
    both strings. Then concatenate the short string, the long string, then the short one again.
    Return the concatenated string.


Examples
--------
'abc', 'defgh' ==> 'abcdefghabc'

  Edge Cases:
  '', 'xyz' => 'xyz'

Data Structure
--------------
String evaluation and concatenation


Algorithm
---------
Given 2 strings of different lengths...
Evaluate the length of the 2 strings
Concatenate short_str with long_str with short_str

  Helper Methods:


  
Code with Intent
----------------
=end

def short_long_short(str1, str2)
  s_l_s = ''
  if str1.size < str2.size
    s_l_s << str1 << str2 << str1
  else
    s_l_s << str2 << str1 << str2
  end
  s_l_s
end

p short_long_short('abc', 'defgh') == 'abcdefghabc'
p short_long_short('', 'xyz') == 'xyz'
p short_long_short('longer', 'x')
p short_long_short('long', '')
