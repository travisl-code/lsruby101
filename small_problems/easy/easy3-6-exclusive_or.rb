=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: 2 args w/ boolean object
-  Output: true if exactly 1 arg is truthy; false otherwise

---

**Problem Domain:**

--- 

**Implicit Requirements:**

--- Return should be boolean, NOT a truthy/falsey value

**Clarifying Questions:**

1.
2.
3.

---

**Mental Model:**

--- Given two arguments with a true/false value, return true if exactly
one argument evaluates true, or return false otherwise.


Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: 5.even?, 4.even?
  -  Output: true
-  Example 2
  -  Inputs: 5.odd?, 4.even?
  -  Output: false

---

_Your Test Cases:_

-  Example 3
  -  Inputs:
  -  Output:

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: 5.even?, 4.odd?
  -  Output: false

---

Data Structure
--------------

--- Booleans

Algorithm
---------

Given 2 true/false expressions...
Create variable = 0
Count truthy expressions and increment variable
Return true if variable == 1

Code
----

=end

def xor?(arg1, arg2)
  truth_count = 0
  arg1 ? truth_count += 1 : false
  arg2 ? truth_count += 1 : false
  truth_count == 1 ? true : false
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.even?, 4.odd?) == false

# Further explore - when could it be used?
# For providing drinks to a couple when one has to drive.
# For weather measurements of snow vs rain accumulation (snow
# shouldn't count toward rain totals)

# Does xor perform short circuit operations?
# By its nature, it can't. It must evaluate both conditions because
# it has to ensure only 1 is true and not the other.
