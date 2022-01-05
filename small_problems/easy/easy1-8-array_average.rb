=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: An array of positive integers (never empty array)
-  Output: The average of all the numbers in the array

---

**Problem Domain:**

--- Average - sum of all elements divided by the # of elements

**Implicit Requirements:**

--- Return should be integer division, not floats

**Clarifying Questions:**

1. N/A
2.
3.

---

**Mental Model:**

--- Given an array of positive integers that will never be an empty array,
calculate the average of all the elements in the array and return it as an integer
using integer division.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: [1, 6]
  -  Output: 3
-  Example 2
  -  Inputs: [1, 5, 87, 45, 8, 8]
  -  Output: 25

---

_Your Test Cases:_

-  Example 3
  -  Inputs: [50, 50]
  -  Output: 50

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: [1, 0]
  -  Output: 0

---

Data Structure
--------------

--- Array given and operated on with integer math

Algorithm
---------

Given an array of positive integers...
Create an accumulating variable = 0
Iterate through the array, adding each element to the accumulator
Divide the accumulator by the number of elements in the array


Code
----

=end

def average(arr)
  accumulator = 0
  arr.each { |num| accumulator += num }
  accumulator / arr.size
end

puts average([1, 6]) == 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([50, 50]) == 50
puts average([1, 0]) == 0

# Further exploration - Return float for more accurate quotient
def average2(arr)
  sum = arr.reduce { |sum, num| sum += num }
  sum.to_f / arr.size.to_f
end

puts average2([1, 6])
puts average2([1, 5, 87, 45, 8, 8])
puts average2([50, 50])
puts average2([1, 0])
