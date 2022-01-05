=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: Age (int) and desired retirement age (int) as prompted input
-  Output: Displayed message with year, retirement year, and years of work needed

---

**Problem Domain:**

--- Date functionality

**Implicit Requirements:**

--- N/A

**Clarifying Questions:**

1. N/A
2.
3.

---

**Mental Model:**

--- Prompt the user to enter their age and desired retirement
age; then use the current year to calculate what year the user 
will retire and how many years that is.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: 30, 70
  -  Output: 2016 to 2056, 40 years
-  Example 2
  -  Inputs: 25, 50
  -  Output: 2020 - 2025, 25

---

_Your Test Cases:_

-  Example 3
  -  Inputs:
  -  Output:

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: 65, 0
  -  Output: 2022 to 2022, 0 years

---

Data Structure
--------------

--- Strings for prompts/input, ints for calculations

Algorithm
---------

Import Date module for current year (needed?)
Prompt user for age
  - Get age
Prompt user for desired age of retirement
  - Get desired age
Calculate years to work = retirement_age - age
Add years_to_work to current_year for retirement_year

Code
----

=end

def display_retirement_year
  puts "What is your age?"
  age = gets.chomp.to_i
  puts "At what age would you like to retire?"
  retirement_age = gets.chomp.to_i

  years_to_work = retirement_age - age
  current_year = Time.now.year
  retirement_year = current_year + years_to_work
  
  puts "It's #{current_year}. You will retire in #{retirement_year}."
  puts "You have only #{years_to_work} years of work to go!"
end

display_retirement_year
display_retirement_year
