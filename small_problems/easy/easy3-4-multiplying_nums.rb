=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: 2 numbers as arguments to method
-  Output: Product of numbers returned (no display)

---

**Problem Domain:**

--- N/A

**Implicit Requirements:**

--- Method should allow for floats since not specified

**Clarifying Questions:**

1. N/A
2.
3.

---

**Mental Model:**

--- Write a method that takes two arguments. The method should return (not
display) the product of those two numbers.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: 5, 3
  -  Output: 15
-  Example 2
  -  Inputs:
  -  Output:

---

_Your Test Cases:_

-  Example 3
  -  Inputs: 3.3, 3
  -  Output: 9.9

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: 0, 0
  -  Output: 0

---

Data Structure
--------------

--- Integers/floats only for simple multiplications

Algorithm
---------

Given two integers as arguments to method
Multiply number1 * number2

Code
----

=end


def multiply(num1, num2)
  num1 * num2
end

puts multiply(5, 3) == 15
puts multiply(3.3, 3)
puts multiply(0, 0) == 0

# Further Exploration - What if 1st arg is array?
# I think it would do one of two things: either 1) Append the same elements
#   of the array num2 times to the end of it, or 2) Multiply each element
#   of the array by num2.

p multiply([5, 3], 5) # I was right with option 1!
