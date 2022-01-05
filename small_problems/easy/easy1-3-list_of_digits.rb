=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: positive integer
-  Output: list of digits in the passed integer

---

**Problem Domain:**

--- N/A

**Implicit Requirements:**

--- N/A

**Clarifying Questions:**

1. Why is the return value of examples true?
2.
3.

---

**Mental Model:**

--- Given a positive integer, append each digit of the integer
as its own element in an array.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: 12345
  -  Output: [1, 2, 3, 4, 5]
-  Example 2
  -  Inputs: 7
  -  Output: [7]

---

_Your Test Cases:_

-  Example 3
  -  Inputs: 5001
  -  Output: [5, 0, 0, 1]

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: 0
  -  Output: [0]

---

Data Structure
--------------

--- Array

Algorithm
---------

Given a positive integer number...
Create an empty array
Conver the number to a string
Iterate through each digit in the passed number
- Append each digit from number to the array
- convert each string digit back to integer
Return the array

Code
----

=end

def digit_list(number)
  number.to_s.chars.map { |char| char.to_i } # could use &:to_i for syntactic sugar!
end

p digit_list(12345)
puts digit_list(7) == [7]
puts digit_list(5001)
puts digit_list(0)
