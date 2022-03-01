=begin

Understand the Problem
----------------------
  Input:  Integer n representing number and number of loops
  Output: Array of integers representing lights ON after all iterations
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    1 argument -- number and iterations
    Each loop is an iteration of multiples
      - Loop 1 (multiples of 1)
      - Loop 2 (multiples of 2)
      - Loop 3 (multiples of 3)
      - Continue to Loop n

    -- Implicit Requirements --

  Questions:
    1. Account for negatives?
    2. 
    3. 

  Mental Model:
    - Given an integer, write a method that returns an array of numbers
    between 1 and n that would "on" after n loops of switching numbers 
    from on/off state.


Examples
--------
light_switch(5) == [1, 4]
light_switch(10) == [1, 4, 9]

  Edge Cases:
  

Data Structure
--------------
Array for iteration, Integer input/counter


Algorithm
---------
Initialize a multiple variable to 1
Initialize results array, 1 - n to start
Start a loop. Up to n...
  - Create temp array from multiple to n by multiple
  - Iterate through results. For each number...
    - Iterate through temp array.
      - If num in temp array, delete
      - If num NOT in temp array, add
  - Sort the results array
  - Increment multiple variable by 1

  Helper Methods:
  switcher(arr, number)
  

Code with Intent
----------------
=end
require 'pry'

def light_switch(n)
  results = (1..n).to_a
  multiple = 2
  n.times do
    temp = []
    multiple.step(by: multiple, to: n) { |i| temp << i }
    temp.each do |num|
      results.include?(num) ? results.delete(num) : results << num
    end
    multiple += 1
  end
  display_lights(results, n)
end

# p light_switch(5) #== [1, 4]
# p light_switch(10) #== [1, 4, 9]
# p light_switch(1000)
# p light_switch(2)

# Further Exploration - why perfect squares?
# Had to read into it. It seems it's related to how many times the light has been
# turned on or off. Looking at first 10 lights, for example, light 9 would be on 
# 1st iteration, off 3rd iteration, on 9th iteration. 8th light would be on
# 1st, off 2nd, on 4th, off 8th. Odd numbered factors (9 is touched 3 times, an odd
# number) are left on at the end.

# Further Exploration - Array instead of hash
# My solution already uses an array, where each iteration, instead of switching a value in a 
# k-v pair, instead adds or removes a number from the results array. 

# Further Exploration - Format output to display lights off and on
# This would be much easier using the hash solution.

def display_lights(on_lights, n)
  offs = []
  1.upto(n) do |iteration|
    offs << iteration if !on_lights.include?(iteration)
  end
  puts "Lights #{joinand(offs)} are now off; #{joinand(on_lights)} are on."
end

def joinand(arr)
  case arr.size
  when 1 then arr[0]
  when 2 then "#{arr.first} and #{arr.last}"
  else arr.map(&:to_s).join(', ').split.insert(-2, 'and').join(' ')
  end
end

light_switch(5) #== [1, 4]
light_switch(10) #== [1, 4, 9]
# light_switch(1000) # commented out due to sheer size...
light_switch(2)
