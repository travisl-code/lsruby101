=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: username as prompted string input
-  Output: Greeting to user, different if user inputs !

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

--- Prompt the user to enter their name. Greet them by their
entered name. If user enters name!, provide a separate greeting

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: Bob
  -  Output: Hello Bob
-  Example 2
  -  Inputs: Bob!
  -  Output: HELLO BOB. WHY ARE WE SCREAMING?

---

_Your Test Cases:_

-  Example 3
  -  Inputs:
  -  Output:

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: N/A - no user validation?
  -  Output:

---

Data Structure
--------------

--- Strings with Array-type#[] reference

Algorithm
---------
Prompt user to enter their name
  - get user name
IF last character entered == !
  - GREET IN CAPS
ELSE greet them normally

Code
----

=end

def display_greetings
  puts "What is your name?"
  name = gets.chomp
  # Could use name.chop for true output below
  name[-1] == '!' ? puts("HELLO #{name[0..-2].upcase}. WHY ARE WE SCREAMING?") : puts("Hello #{name}.")
end

display_greetings
# display_greetings

# Further exploration - use String#chomp! and chop!
def display_greetings2
  puts "What is your name?"
  name = gets.chomp!
  if name[-1] == '!'
    name.chop!
    puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hi #{name}."
  end
end

display_greetings2
