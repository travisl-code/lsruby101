=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: Prompt for 6 numbers
-  Output: Display whether 6th num included in first 5

---

**Problem Domain:**

---

**Implicit Requirements:**

--- Display 1st 5 numbers as array

**Clarifying Questions:**

1. N/A
2.
3.

---

**Mental Model:**

--- Prompt the user to enter 6 numbers. The first 5 are stored
in an array, and the 6th number is a test to see if it is included
in the array. Display a message whether 6th is in 5-num array.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: [25, 15, 20, 17, 23], 17
  -  Output: Number 17 appears...
-  Example 2
  -  Inputs: [25, 15, 20, 17, 23], 18
  -  Output: Number 18 does not appear...

---

_Your Test Cases:_

-  Example 3
  -  Inputs:
  -  Output:

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: [1, 1, 1, 1, 1], 1
  -  Output: Number 1 appears...

---

Data Structure
--------------

--- Array for storing first 5 numbers input

Algorithm
---------
Create an empty array
5 times: Prompt the user to enter a number
  - Append the number to the array
Prompt for 6th number
  - Store input as separate variable
Check to see if 6th num is contained in 5-num arr
Display message indicating true/false

Code
----

=end

five_numbers = []
5.times do |x|
  puts "==> Enter number #{x + 1}:"
  five_numbers << gets.chomp.to_i
end
puts "==> Enter number 6:"
check_number = gets.chomp.to_i
if five_numbers.include?(check_number)
  puts "The number #{check_number} appears in #{five_numbers}."
else
  puts "The number #{check_number} does not appear in #{five_numbers}."
end
