=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: 1 integer number (negative, 0 or positive)
-  Output: true (for odd numbers) or false (for even numbers)

---

**Problem Domain:**

--- Absolute value: the positive value of a number (|-5| = 5)

**Implicit Requirements:**

--- N/A

**Clarifying Questions:**

1. Is 0 considered an odd number? NO
2.
3.

---

**Mental Model:**

--- Write a method that takes a number as an arguments,
and return true if the absolute value of that number (the positive
  equivalent of it) is odd. Return false for even numbers and 0.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: 2
  -  Output: false
-  Example 2
  -  Inputs: 5
  -  Output: true

---

_Your Test Cases:_

-  Example 3
  -  Inputs: -17
  -  Output: true

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: 0 
  -  Output: false

---

Data Structure
--------------

--- numbers/ints

Algorithm
---------

Given a number x...
IF x is 0, return false
ELSE take absolute value of x
CALCULATE if |x| divided by 2 has a remainder == 0
  - if yes, return false
  - if no, return true

Code
----

=end

def is_odd?(number)
  return false if number == 0
  abs_number = number.abs
  abs_number % 2 != 0
end

puts is_odd?(1)
puts is_odd?(-1)
puts is_odd?(0)
puts is_odd?(-17)
puts is_odd?(24)
