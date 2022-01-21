=begin

Understand the Problem
----------------------
  Input:  Positive or negative integer
  Output: String representation of integer
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Convert integers to signed string
    Can use separate metho from last exercise
    Unsigned positive integers should be signed as str

    -- Implicit Requirements --
    Zero should not be signed

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a positive or negative integer, write a method that converts
    the integer to a signed string representation of the integer. Positive
    unsigned values should be signed in their string format, and 0 should not
    be signed.


Examples
--------
4321 => '+4321'
-123 => '-123'
0 => '0'

  Edge Cases:
  

Data Structure
--------------
Array can be used this time for digits


Algorithm
---------

  Helper Methods:
  integer_to_string

  
Code with Intent
----------------
=end

DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(int)
  string = ''
  
  loop do
    number, remainder = int.divmod(10)
    string.prepend(DIGITS[remainder])
    int = number
    break if number == 0
  end

  string
end

def signed_integer_to_string(int)
  return DIGITS[0] if int.zero?
  int > 0 ? '+' + integer_to_string(int) : '-' + integer_to_string(int.abs)
end

# p signed_integer_to_string(4321)
# p signed_integer_to_string(-123)
# p signed_integer_to_string(0)
 
# Further Exploration - Refactor to call integer_to_string once
def signed_integer_to_string2(int)
  return '0' if int == 0
  new_int = int.abs
  unsigned = integer_to_string(new_int)
  int < 0 ? unsigned.prepend('-') : unsigned.prepend('+')
  unsigned
end

p signed_integer_to_string2(4321)
p signed_integer_to_string2(-123)
p signed_integer_to_string2(0)
