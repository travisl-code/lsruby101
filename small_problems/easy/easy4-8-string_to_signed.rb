=begin

Understand the Problem
----------------------
  Input:  A string of number characters optionally preceeded by + or -
  Output: Integer representing string (positive or negative)
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    String always valid number
    String may or may not use + or -
    If 1st char of string is + or -, return int is positive or negative

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string of numeric characters, write a method that
    converts the string into an integer. If 1st char is +, result 
    is positive; if 1st character is -, return is negative.


Examples
--------
'4321' => 4321
'-570' => -570
'+100' => 100

  Edge Cases:
  

Data Structure
--------------
Array for containing characters from str
Hash for mapping string chars to integer representations


Algorithm
---------
Given a string as an argument to the method...
Create empty string variable sign
Map string digits to integer counterparts using hash
Evaluate 1st character of string;
  - IF +, shift to sign variable
  - IF -, shift to sign variable
Set place variable to 1
Set result variable to 0
Reverse array and iterate through nums
  - Subtract from result num * place
  - Place * 10
If string variable contains '+', take abs value

  Helper Methods:


  
Code with Intent
----------------
=end

DIGITS = {
  '+' => '+', '-' => '-',
  '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0
}

#I didn't realize I was supposed to use the method from last time
def string_to_signed_integer(number)
  sign = ''
  num_arr = number.chars.map { |char| DIGITS[char]}
  sign = num_arr.shift if (num_arr[0] == '+' || num_arr[0] == '-')
  
  result = 0
  num_place = 1
  num_arr.reverse.each do |num|
    result -= num_place * num
    num_place *= 10
  end
  
  sign.include?('-') ? result : result.abs
end

# p string_to_signed_integer('4321')
# p string_to_signed_integer('-570')
# p string_to_signed_integer('+100')

# Further Exploration - Use helper methods, refactor example
def string_to_integer(num)
  int_array = num.chars.map {|char| DIGITS[char]}

  total = 0
  int_array.each do |num|
    total = total * 10 + num
  end

  total
end

# def string_to_signed_integer2(num)
#   case num[0]
#   when '+' then string_to_integer(num[1..-1])
#   when '-' then -string_to_integer(num[1..-1])
#   else string_to_integer(num)
#   end
# end

# Not an ideal solution because num is mutated during method
def string_to_signed_integer3(num)
  sign = num.slice!(0) if num[0] == '+' || num[0] == '-'
  case sign
  when '-' then -string_to_integer(num)
  else string_to_integer(num)
  end
end

p string_to_signed_integer3('4321')
p string_to_signed_integer3('-570')
p string_to_signed_integer3('+100')
