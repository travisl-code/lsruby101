=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: Integer > 0 from prompted input. Then choice sum or product prompted input.
-  Output: Calculated sum or product of numbers 1 - input

---

**Problem Domain:**

--- Sum (addition), product (multiplication)

**Implicit Requirements:**

--- N/A

**Clarifying Questions:**

1. Is the integer input inclusive? YES
2. If user enters 1, should sum be 1 + 1?
3.

---

**Mental Model:**

--- Prompt the user to input a number greater than 0. Then prompt a choice between
sum or product. Based on choice, calculate the sum or product of numbers 1 - input
inclusive.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: 5, sum
  -  Output: 15
-  Example 2
  -  Inputs: 3, product
  -  Output: 6

---

_Your Test Cases:_

-  Example 3
  -  Inputs:
  -  Output:

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: 1, sum
  -  Output: 1 or 2?

---

Data Structure
--------------

--- Range for the calculations

Algorithm
---------
Prompt user to enter an integer > 0
  - get int
Prompt user to calculate sum or product
  - get choice
IF choice == sum
  - Display sum of 1 - input
IF choice == product
  - Display product of 1 - input


Code
----

=end

puts "Enter an integer greater than 0:"
number = gets.chomp.to_i
puts "Enter 's' to compute sum or 'p' to compute product:"
choice = gets.chomp
case choice
when 's'
  sum = (1..number).sum
  puts "The sum of integers between 1 and #{number} is #{sum}"
when 'p'
  product = (1..number).reduce(:*)
  puts "The product of integers between 1 and #{number} is #{product}"
end

# Futher exploration - use inject (alias for reduce, which I used)
