=begin

Understand the Problem
----------------------
  Input:  Positive integer
  Output: Integer with digits reversed
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Ignore leading 0s in returns (octal numbers)

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an integer as an argument, write a method that returns
    a new integer with the digits reversed.


Examples
--------
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

  Edge Cases:
  

Data Structure
--------------
String converstion and reverse methods


Algorithm
---------
Given an integer as input...
Conver the int to string
Reverse the string
Convert to int

  Helper Methods:


  
Code with Intent
----------------
=end

def reversed_number(int)
  int.to_s.reverse.to_i
end

# p reversed_number(12345) == 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) == 21 # No leading zeros in return value!
# p reversed_number(12003) == 30021
# p reversed_number(1) == 1

# 2nd method... Algorithm:
# Separate integer into array of digits
# Reverse the array
# Rejoin the numbers

def reversed_number2(int)
  int.digits.join.to_i
end

# p reversed_number2(12345) == 54321
# p reversed_number2(12213) == 31221
# p reversed_number2(456) == 654
# p reversed_number2(12000) == 21 # No leading zeros in return value!
# p reversed_number2(12003) == 30021
# p reversed_number2(1) == 1


# 3rd method... Algorithm
# Given an integer...
# Initialize a result variable 0
# Start a loop...
#   - Use divmod by 10
#   - Add index[1] object to result
#   - Break if index[0] is 0
# Return result

def reversed_number3(int)
  result = 0
  place = ('1' + ('0' * (int.digits.length-1))).to_i

  loop do
    int, div = int.divmod(10)
    result += place * div
    place /= 10
    break if int == 0
  end

  result
end

p reversed_number3(12345) == 54321
p reversed_number3(12213) == 31221
p reversed_number3(456) == 654
p reversed_number3(12000) == 21 # No leading zeros in return value!
p reversed_number3(12003) == 30021
p reversed_number3(1) == 1
