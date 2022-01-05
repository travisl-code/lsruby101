=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: Two args, a positive int and boolean
-  Output: Number 1/2 of int if bool true, otherwise 0

---

**Problem Domain:**

--- N/A

**Implicit Requirements:**

--- N/A

**Clarifying Questions:**

1. Should a float or int be return? Looks like int
2.
3.

---

**Mental Model:**

--- Given a positive integer and a boolean as arguments, 
return int*.5 if boolean is true and 0 if boolean is false.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: 2800, true
  -  Output: 1400
-  Example 2
  -  Inputs: 1000, false
  -  Output: 0

---

_Your Test Cases:_

-  Example 3
  -  Inputs: 9999, truee
  -  Output: 4999

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: 0, true
  -  Output: 0

---

Data Structure
--------------

--- All that should be needed are numbers/ints

Algorithm
---------

Given a positive integer x and a boolean value...
IF the boolean is false
  - Return 0
ELSE return x / 2

Code
----

=end

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(9999, true) == 4999
puts calculate_bonus(0, true) == 0
