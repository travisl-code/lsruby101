=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: One arg, a string of words with any number of spaces
-  Output: The words in reverse order with spaces intact

---

**Problem Domain:**

--- N/A

**Implicit Requirements:**

--- Sequential spaces should be removed, but spaces in general need to remain

**Clarifying Questions:**

1.
2.
3.

---

**Mental Model:**

--- Given a string of words separated by spaces, return the words in reverse
order with spaces between. If a series of spaces is provided, it should return
a blank string.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: "hello world"
  -  Output: "world hello"
-  Example 2
  -  Inputs: "    "
  -  Output: ""

---

_Your Test Cases:_

-  Example 3
  -  Inputs: "this is a test"
  -  Output: "test a is this"

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: "this is a      test"
  -  Output: "test a is this"

---

Data Structure
--------------

--- Array should be used for splitting string and iteration through words

Algorithm
---------
Given a string
Split the string in an array
Sort the array into reverse order
Return the array to a string with spaces


Code
----

=end

# require "pry"

def reverse_sentence(sentence)
  words = sentence.split(" ")
  string = ""
  if words.length > 0
    loop do
      # binding.pry
      string += words.pop
      # binding.pry
      break if words.length == 0
      string += " "
    end
  end
  string
end

puts reverse_sentence("Hello world") == "world Hello"
puts reverse_sentence("This is a test") == "test a is This"
puts reverse_sentence("") == ""
puts reverse_sentence("    ") == ""
puts reverse_sentence("This is a     test") == "test a is This"
