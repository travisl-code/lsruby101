=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: 2 positive integers from prompt (no input validation)
-  Output: Addition, subtraction, product, quotient, remainder, power arithmetic operations

---

**Problem Domain:**

--- N/A

**Implicit Requirements:**

--- The actual arithmetic expression/formula should be displayed also,
not just the results

**Clarifying Questions:**

1. N/A
2.
3.

---

**Mental Model:**

--- Prompt user to enter a number twice. Perform arithmetic
operations on those numbers as operands and display the formula and result.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: 23, 17
  -  Output: 23 + 17 = 40, 23 - 17 = 6, 23 * 17 = 391, 23/17 = 1, 23%17 = 6, 23**17=numbers!
-  Example 2
  -  Inputs:
  -  Output:

---

_Your Test Cases:_

-  Example 3
  -  Inputs:
  -  Output:

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: 1, 1
  -  Output: 1+1=2, 1-1 = 0, 1*1 = 1, 1/1=1, 1%1=0, 1**1=1

---

Data Structure
--------------

---

Algorithm
---------
Prompt the user to enter two numbers
  - Store numbers in variable
Display and calculate arithmetic results

Code
----

=end

puts "Enter the first positive integer:"
first = gets.chomp.to_i
puts "Enter the second positive integer:"
second = gets.chomp.to_i

puts "#{first} + #{second} = #{first + second}"
puts "#{first} - #{second} = #{first - second}"
puts "#{first} * #{second} = #{first * second}"
puts "#{first} / #{second} = #{first / second}"
puts "#{first} % #{second} = #{first % second}"
puts "#{first} ** #{second} = #{first ** second}"

# Discussion - edge cases with input validation?
# If we did input validation, we could allow 0 as the 2nd number
# for all of the math operations except % and / -- these would have
# to be handled by a conditional or rescue statement.

# If we wanted to allow floats instead of just integers, we would
# just have to convert user input to Floats using to_f. My understanding
# is that some calculations may not be completely accurate with floats.
