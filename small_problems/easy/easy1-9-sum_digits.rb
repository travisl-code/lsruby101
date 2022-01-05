=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: One positive integer
-  Output: Sum of the digits in the positive integer

---

**Problem Domain:**

--- N/A

**Implicit Requirements:**

--- N/A

**Clarifying Questions:**

1. N/A
2.
3.

---

**Mental Model:**

--- Given a positive integer, calculate the sum of all the individual digits in the integer.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: 23
  -  Output: 5
-  Example 2
  -  Inputs: 496
  -  Output: 19

---

_Your Test Cases:_

-  Example 3
  -  Inputs: 123
  -  Output: 6

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: 100000
  -  Output: 1

---

Data Structure
--------------

--- Array needed for the splitting of digits

Algorithm
---------

Given a positive integer x...
Split the digits of x into an array
Iterate through the array to sum each of the digits
Return the sum

Code
----

=end

#Challenge without using common iterators
def sum(integer)
  integer.digits.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123) == 6
puts sum(100_000) == 1
