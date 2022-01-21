=begin

Understand the Problem
----------------------
  Input:  String of numeric characters
  Output: Integer representing string number
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Cannot use String#to_i
    Cannot use Integer()
    Ignore invalid characters and/or + and - signs

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Convert a string of numeric characters from string format to
    integer format. Ignore character validation and/or +/- signs


Examples
--------
'4321' => 4321
'570' => 570

  Edge Cases:
  

Data Structure
--------------
Array to hold values during conversion


Algorithm
---------
Given a string of numeric characters
Initialize a total variable to 0
Initialize a count variable to 1
Split the string into an array (variable)
Evaluate each character in the array to find its integer equivalent
  - Convert str numbers to int numbers
Reverse the array of integer numbers
Iterate through array
  - Add the first number to total
  - Increment the count variable to * 10 (for places)
Return total


  Helper Methods:
  Create a case statement for different number values

  
Code with Intent
----------------
=end
def case_nums(num)
  case num
  when '1' then 1
  when '2' then 2
  when '3' then 3
  when '4' then 4
  when '5' then 5
  when '6' then 6
  when '7' then 7
  when '8' then 8
  when '9' then 9
  when '0' then 0
  end
end

def string_to_integer(num_string)
  int_arr = []
  total = 0
  place = 1
  num_string.chars.each {|char| int_arr << case_nums(char)}
  
  int_arr.reverse.each do |num|
    total += num * place
    place *= 10
  end

  total
end

# p string_to_integer('4')
# p string_to_integer('4321')
# p string_to_integer('570')

# Further Exploration: Hexadecimal string to integer value
# '4D9f' => 19871
HEX = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
  '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11, 'C' => 12,
  'D' => 13, 'E' => 14, 'F' => 15
}

def hexadecimal_to_integer(num)
  int_array = num.chars.map {|char| HEX[char.upcase]}
  
  total = 0
  int_array.each do |num|
    total += 15 * total + num
  end

  total
end

p hexadecimal_to_integer('4D9f')
