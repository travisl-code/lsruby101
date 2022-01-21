=begin

Understand the Problem
----------------------
  Input:  Integer number
  Output: Integer number that is the sum of multiples of 3 and 5 between 1 and input number
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Output the sum of numbers
    Multiples of 3 and 5 between 1 and input number

    -- Implicit Requirements --
    Duplicate multiples should only be counted once
    The target (input) number is inclusive

  Questions:
    1. Assume valid input and number > 0?
    2. What happens if input is < 3?
    3. 

  Mental Model:
    - 


Examples
--------
3 => 3
5 => 8
10 => 33
1000 => 234168

  Edge Cases:
  

Data Structure
--------------
Arrays should work well to hold multiples and for summing
multisum(8) => 14
[3, 5, 6]

Algorithm
---------
Given an integer target as input...
Create an empty array multiples
Create counter variable initialized to 3
Create a loop starting with counter
  - IF counter is less than or equal to target
    - Add to multiples array
    - Increment by 3
  - IF greater, break
Reassign counter to 5
Create loop starting with counter
  - IF counter is less than or equal to target
    - Add to multiples array
    - Increment by 5
  - IF greater, break
Remove duplicate entries from multiples array
Sum of multiples array (return)

  Helper Methods:
  

  
Code with Intent
----------------
=end
require 'pry'

def multisum(target)
  multiples = []
  counter = 3

  loop do
    multiples << counter if counter <= target
    counter += 3
    break if counter > target
  end

  counter = 5
  loop do
    multiples << counter if counter <= target
    counter += 5
    break if counter > target
  end

  multiples.uniq.sum
end

# p multisum(3)
# p multisum(5)
# p multisum(10)
# p multisum(1000)

# Rewrite with helper?
def incrementer(target, num)
  start_num = num
  multiples = []
  loop do
    multiples << num if num <= target
    num += start_num
    break if num > target
  end
  multiples
end

def multisum2(target)
  multiples = []
  multiples += incrementer(target, 3)
  multiples += incrementer(target, 5)
  multiples.uniq.sum
end

# p multisum2(3)
# p multisum2(5)
# p multisum2(10)
# p multisum2(1000)

# Further Exploration - Using Enumerable#inject
def multiple?(num, divisor)
  num % divisor == 0
end
  
def multisum3(target)
  (1..target).inject(0) do |sum, num|
    # binding.pry
    multiple?(num, 3) ? sum + num : sum + 0
    # binding.pry
  end
end

# def multisum3(target)
#   (1..target).select {|num| multiple?(num, 3) || multiple?(num, 5)}.inject(:+)
# end

p multisum3(3)
p multisum3(5)
p multisum3(10)
p multisum3(1000)
