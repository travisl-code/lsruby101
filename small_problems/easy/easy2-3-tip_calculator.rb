=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: 2 floats through prompt/input (bill amount, tip %)
-  Output: Display tip amount and total amount (bill + tip)

---

**Problem Domain:**

--- N/A

**Implicit Requirements:**

--- Output should be rounded 2 places for dollar/cent amounts

**Clarifying Questions:**

1. N/A
2.
3.

---

**Mental Model:**

--- Prompt the user for the bill amount and how much tip (%) to leave
Display the tip amount and the bill total (bill + tip)

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: 200, 15
  -  Output: 30, 230
-  Example 2
  -  Inputs: 100, 10
  -  Output: 10, 110

---

_Your Test Cases:_

-  Example 3
  -  Inputs: 100, 20
  -  Output: 20, 120

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: 100, 0
  -  Output: 0, 100

---

Data Structure
--------------

--- Strings for prompts/input, Floats for calculations

Algorithm
---------
Prompt user for bill amount
  - Get input
Prompt user for tip percent
  - get input
Calculate tip
Display tip
Display bill tip

Code
----

=end

def display_tip
  puts "What is the bill?"
  bill = gets.chomp.to_f
  puts "What is the tip percentage?"
  tip_perc = gets.chomp.to_f
  tip_amount = (bill * (tip_perc / 100)).round(2)
  total = bill + tip_amount
  puts "The tip is $#{tip_amount}"
  puts "The total is $#{total}"
end

display_tip
# display_tip
# display_tip

# Further Exploration - modify program so it always
# prints the 2 decimals like $30.00 and $230.00
def display_tip2
  puts "What is the bill?"
  bill = gets.chomp.to_f
  puts "What is the tip percentage?"
  tip_perc = gets.chomp.to_f
  tip_amount = format("%.2f", (bill * (tip_perc / 100)))
  total = format("%.2f", (bill + tip_amount.to_f))
  puts "The tip is $#{tip_amount}"
  puts "The total is $#{total}"
end

display_tip2
