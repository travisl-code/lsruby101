=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: Prompt for word or multiple words (string)
-  Output: Display number of characters in provided string

---

**Problem Domain:**

--- N/A

**Implicit Requirements:**

--- All punctuation should count as a character to count except spaces.

**Clarifying Questions:**

1. N/A
2.
3.

---

**Mental Model:**

--- Prompt the user to enter and string, and then count all the characters in the
string (including punctuation) except for the spaces.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: walk
  -  Output: 4
-  Example 2
  -  Inputs: walk, don't run
  -  Output: 13

---

_Your Test Cases:_

-  Example 3
  -  Inputs: "Hello!"
  -  Output: 8

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: '   '
  -  Output: 0

---

Data Structure
--------------

--- String methods that iterate like an array should be sufficient

Algorithm
---------

Prompt user to enter a string
  - store input in variable
Iterate through the string
  - Count all characters except spaces
Display how many total chars

Code
----

=end

puts "Please write a word or multiple words:"
characters = gets.chomp

count = characters.gsub(' ', '').size

puts "There are #{count} characters in \"#{characters}\"."
