=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: One arg, a string consisting of words and spaces
-  Output: New string with chars in words reversed if the word is >= 5 chars

---

**Problem Domain:**

--- N/A

**Implicit Requirements:**

--- Program should drop spaces from the ends/beginning of the input string
if there is only 1 word

**Clarifying Questions:**

1. N/A
2.
3.

---

**Mental Model:**

--- Given a string consisting of words and spaces, evaluate the length of each word,
and if it >= 5, reverse the characters in that word; otherwise do not reverse them.
  Then return the complete string.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: Launch School
  -  Output: hcnuaL loohcS
-  Example 2
  -  Inputs: Professional
  -  Output: lanoisseforP

---

_Your Test Cases:_

-  Example 3
  -  Inputs: Never test
  -  Output: reveN test

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: "Do not congratulate   "
  -  Output: Do not etalutargnoc"

---

Data Structure
--------------

--- Arrays to split words for eval, string methods on words.

Algorithm
---------

Given a string of words and spaces...
Create array variable containing words from input
Iterate through array
  - If word length >= 5, reverse it
  - Else leave it alone
Return the new string

Code
----

=end

def reverse_words(sentence)
  words = sentence.split(" ").map do |word|
    # should have used ternary op for conditional:
    # word.length >= 5 ? word.reverse : word
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  words.join(" ").strip
end

puts reverse_words("Professional")
puts reverse_words("Launch School")
puts reverse_words("Do not congratulate    ")
