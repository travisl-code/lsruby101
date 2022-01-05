=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: N/A
-  Output: All odd numbers 1 - 99 inclusive, each on separate line

---

**Problem Domain:**

--- Odds - not divisible by 2 evenly

**Implicit Requirements:**

--- N/A

**Clarifying Questions:**

1. N/A
2.
3.

---

**Mental Model:**

--- Print odd numbers, each on their own line, from 1 - 99 inclusively.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs:
  -  Output: 1, 3, 5, ... 99
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

--- Integers (for odd evaluation) /strings from printing

Algorithm
---------

For a range of numbers 1 - 99
  - IF number is odd
    - Print to screen on individual line

Code
----

=end

def display_odds
  for number in (1..99)
    puts number if number.odd?
  end
end

# display_odds

# Further explore - do it another way
def display_odds2
  arr = (1..99).to_a
  arr.select { |num| puts num if num % 2 == 1 }
end

display_odds2
