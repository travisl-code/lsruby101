=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: Positive or negative integer
-  Output: Squared int (Number * Number)

---

**Problem Domain:**

--- Square - n1 * n1

**Implicit Requirements:**

--- Negative ints are ok

**Clarifying Questions:**

1.
2.
3.

---

**Mental Model:**

--- Given a positive or negative number passed as an argument,
use the multiply method from easy3-4 to square the passed number

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: 5
  -  Output: 25
-  Example 2
  -  Inputs: -8
  -  Output: 64

---

_Your Test Cases:_

-  Example 3
  -  Inputs:
  -  Output:

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: 0
  -  Output: 0

---

Data Structure
--------------

--- Numbers (Int/Float)

Algorithm
---------
Given a positive or negative number as a method arg...
Pass the arg to the multiply method from easy3-4 as both args
Return result (not print)

Code
----

=end

def multiply(num1, num2)
  num1 * num2
end

def square(number)
  multiply(number, number)
end

puts square(5) == 25
puts square(-8) == 64
puts square(0) == 0

# Further explore - Generalize for any power
def exponent(num, exponent=2)
  exponent.times do
    result = 1
    multiply(result, num)
    puts result
  end
end

puts exponent(5)
puts exponent(5, 3)
