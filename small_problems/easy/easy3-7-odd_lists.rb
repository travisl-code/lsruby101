=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: Array as argument to method
-  Output: Array with 1st, 3rd, 5th, etc. elements returned

---

**Problem Domain:**

--- N/A

**Implicit Requirements:**

--- Empty array should still return empty

**Clarifying Questions:**

1. Should array of arrays show every other sub-array, or elements of sub-arrays?
2.
3.

---

**Mental Model:**

--- Given an array as an argument, return an array containing every even index
in the original array.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: [2, 3, 4, 5, 6]
  -  Output: [2, 4, 6]
-  Example 2
  -  Inputs: [1, 2, 3, 4, 5, 6]
  -  Output: [1, 3, 5]

---

_Your Test Cases:_

-  Example 3
  -  Inputs: %w(a b c d e f g)
  -  Output: [a, c, e, g]

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: []
  -  Output: []

---

Data Structure
--------------

--- Arrays passed in, array returned

Algorithm
---------

Given an array as an argument to a method...
Iterate through the array
  - Select the first element and every other elements
Return new array

Code
----

=end


# This has a fault... relies on unique indexes. [1, 2, 3, 1] would return [1, 3, 1]
def oddities(array)
  array.select do |item|
    item if array.index(item).even?
  end
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(%w(a b c d e f g)) == ['a', 'c', 'e', 'g']
puts oddities([]) == []

# Further explore - 2nd, 4th, etc. elements
def oddities2(array)
  evens = []
  count = 1
  loop do
    evens.append(array[count])
    count += 2
    break if count >= array.size
  end
  evens
end

p oddities2([2, 3, 4, 5, 6])# == [3, 5]
p oddities2([1, 2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities2(%w(a b c d e f g)) #== ['b', 'd', 'f']
p oddities2([])# == []
