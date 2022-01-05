=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: 1 arg, positive integer
-  Output: String of alternating 1s and 0s, starting with 1, matching length of int

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

--- Given a positive integer (number > 0), return a string consisting
of alternating 1s and 0s, starting with 1, the length of the integer

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: 6
  -  Output: '101010'
-  Example 2
  -  Inputs: 4
  -  Output: '1010'

---

_Your Test Cases:_

-  Example 3
  -  Inputs: 11
  -  Output: '10101010101'

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: 1
  -  Output: '1'

---

Data Structure
--------------

--- Strings

Algorithm
---------

Given a positive integer x...
Create empty string variable
Create a loop that iterates x times
  - If odd numbered iteration, write '1' to string
  - If even numbered iteration, write '0' to string

Code
----

=end

def stringy(integer)
  string = ''
  integer.times do |x|
    x % 2 == 0 ? string += '1' : string += '0'
  end
  string
end

puts stringy(6) #== '101010'
puts stringy(4) == '1010'
puts stringy(11) == '10101010101'
puts stringy(1) == '1'

# Further exploration - second arg default 1
# If 2nd arg set to 0, return alternating 0s and 1s, starting with 0

def stringy2(integer, control=1)
  string = ''
  integer.times do |x|
    # would make more sense to make if statement based on the 2nd optional arg
    if control == 1
      x.even? ? string += '1' : string += '0'
    else
      x.even? ? string += '0' : string += '1'
    end
    # if x % 2 == 0
    #   string += '1' if control == 1
    #   string += '0' if control == 0
    # else
    #   string += '0' if control == 1
    #   string += '1' if control == 0
    # end
  end
  string
end

puts stringy2(6)
puts stringy2(6, 0)
puts stringy2(1)
puts stringy2(1, 0)
