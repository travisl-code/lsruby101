=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: N/A
-  Output: A string displayed with a random number between 20 - 200

---

**Problem Domain:**

--- N/A

**Implicit Requirements:**

--- N/A

**Clarifying Questions:**

1. Should the program display the message or return it as string?
2.
3.

---

**Mental Model:**

--- Produce a random number between 20-200 and display a string
"Teddy is `num` years old!"

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: N/A
  -  Output: Teddy is 69 years old!
-  Example 2
  -  Inputs: N/A
  -  Output: Teddy is 42 years old!

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

--- Range for random generation

Algorithm
---------
Produce a random number between 20 - 200
Display a string containing the number


Code
----

=end

def display_teddy_age
  puts "Teddy is #{rand(20..200)} years old!"
end

display_teddy_age
display_teddy_age
display_teddy_age
display_teddy_age

def display_teddy_age2(name="Teddy")
  puts "Enter a name:"
  username = gets.chomp
  age = rand(20..200)
  username.length > 0 ? puts("#{username} is #{age}!") : puts("#{name} is #{age}!")
end

display_teddy_age2
display_teddy_age2
display_teddy_age2
display_teddy_age2
