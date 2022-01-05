=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: N/A
-  Output: Even numbers 1 - 99 printed on separate lines

---

**Problem Domain:**

--- Even numbers = evenly divisible by 2

**Implicit Requirements:**

--- N/A

**Clarifying Questions:**

1. N/A
2.
3.

---

**Mental Model:**

--- Print even numbers from 1 - 99 on lines by themselves.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: N/A
  -  Output: 2, 4, 6, ... 98
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
  -  Inputs:
  -  Output:

---

Data Structure
--------------

--- Range; I may use arrays to do this a different way

Algorithm
---------
Using a range of numbers 1 - 99
If number is even, print it to a line

Code
----

=end

def display_evens
  1.step(by: 1, to: 99) { |num| puts num if num.even? }
end

display_evens
