=begin

Understand the Problem
----------------------
  Input:  Two integers as args
  Output: Display of number range printed, except
    "Fizz" if number divisible by 3 and "Buzz" if divisible
    by 5, and "FizzBuzz" if divisible by 3 and 5
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --

  Questions:
    1. Assume first number is always low?
    2. 
    3. 

  Mental Model:
    - Given two integers as input, print each number in the range between
    the 2 nums. Print Fizz in place of nums divisible by 3 and Buzz in place
    of nums divisible by 5; FizzBuzz if divisible by both


Examples
--------
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz


  Edge Cases:
  

Data Structure
--------------
Range for iteration through numbers


Algorithm
---------
Given two integers as input...
Create empty array
Determine the lower and higher of the two
From lower to higher number, create a range.
Iterate through the range of nums. For each num
  - IF divisible by 3 & 5, to array FizzBuzz
  - IF divisible by 3 only, to array Fizz
  - IF divisible by 5 only, to array Buzz
  - IF not divisible by either, to array num
Print array joined by ', '

  Helper Methods:


  
Code with Intent
----------------
=end

def fizzbuzz(int1, int2)
  lower, higher = [int1, int2].sort
  to_print = []

  (lower..higher).each do |num|
    if num % 3 == 0 && num % 5 == 0
      to_print << 'FizzBuzz'
    elsif num % 5 == 0
      to_print << 'Buzz'
    elsif num % 3 == 0
      to_print << 'Fizz'
    else
      to_print << num
    end
  end

  puts to_print.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
fizzbuzz(15, 1)
