=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: Array (2+ elements making a name) and hash (2 keys, :title and :occupation)
-  Output: String greeting with name and title/occupation

---

**Problem Domain:**

--- N/a

**Implicit Requirements:**

--- None apparent

**Clarifying Questions:**

1. Single array/hash? 
2. Input validation?
3.

---

**Mental Model:**

--- Given 2 arguments, the first being an array with at least 2 elements consisting
of a person's name and the 2nd being a hash consisting of the person's title and 
occupation, write a method that returns a string greeting the person by their name and
mentioning their title/occupation.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.


-  Example 1
  -  Inputs:
  -  Output:
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

--- Array as arg 1, hash as arg 2, string returned

Algorithm
---------
Create name variable set to array elements joined by spaces
Create profession variable set to the values of the hash joined by space
Use interpolation to join variables to string (return)

Code
----

=end

def greetings(name_arr, prof_arr)
  name = name_arr.join(' ')
  profession = prof_arr.values.join(' ')
  "Hello, #{name}! Nice to have a #{profession} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

# Further Exploration - How to shorten lines?
# The LS solution used string interpolation on method's arguments without
# actually creating variables. My method did create values, which shortens the length
# of the line signficantly. If the length of the line were still a problem,
# it would be possible to set to strings on multiple lines with a \ at the end
# of each non-terminating line.
