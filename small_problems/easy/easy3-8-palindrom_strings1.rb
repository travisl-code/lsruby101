=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: String as argument
-  Output: Boolean true/false if string arg is a palindrome

---

**Problem Domain:**

--- Palindrome (same forwards and backwards)

**Implicit Requirements:**

--- Case, spaces, and punctuation all matter

**Clarifying Questions:**

1. N/A
2.
3.

---

**Mental Model:**

--- Given a string as an argument, see if the characters in the string are the
same as the characters in the string reversed.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: 'madam'
  -  Output: true
-  Example 2
  -  Inputs: 'Madam'
  -  Output: false

---

_Your Test Cases:_

-  Example 3
  -  Inputs: 'racecar'
  -  Output: true

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: 'a'
  -  Output: true

---

Data Structure
--------------

--- String methods should work for reversing

Algorithm
---------

Given a string as an argument...
Create a second string using the reverse of the original
Check to see if both strings are equal

Code
----

=end

def palindrome?(string)
  reversed = string.reverse
  string == reversed ? true : false
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == true
puts palindrome?('* racecar *') == true
puts palindrome?('a') == true

# Further Exploration - palindrome array method
def palindrome2?(array)
  array == array.reverse
end

puts palindrome2?([1, 2, 3, 2, 1]) == true
puts palindrome2?(%w(car truck truck car)) == true
puts palindrome2?([1, 2, 3, 4]) == false
puts palindrome2?(['a']) == true

# Further further - palindrome string OR array w/o conditional
def palindrome3?(a_or_s)
  arr = a_or_s.to_a.map {|ele| ele.to_s}
  arr == arr.reverse
end

puts palindrome3?([1, 2, 3, 2, 1]) == true
puts palindrome3?(%w(car truck truck car)) == true
puts palindrome3?([1, 2, 3, 4]) == false
puts palindrome3?(['sRacecaRs']) == true
