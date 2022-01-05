=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs: L and W of room in meters (through input, not args)
-  Output: Area of room in m^2 and ft^2

---

**Problem Domain:**

--- Area = L * W and 1 m^2 = 10.7639 ft^2

**Implicit Requirements:**

--- Square feet value should be formatted to 2 decimals.

**Clarifying Questions:**

1. N/A
2.
3.

---

**Mental Model:**

--- Obtain 2 values from user input: room Length and Width. Use those values
to calculate the Area of the room in both meters squared and feet squared. 
Display both values.

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs: 10, 7
  -  Output: 70.0 m^2 (753.47 ft^2)
-  Example 2
  -  Inputs: (5, 5)
  -  Output: 25.0 (I can't math...)

---

_Your Test Cases:_

-  Example 3
  -  Inputs:
  -  Output:

---

_Your Edge Cases:_

-  Example 4
  -  Inputs: 0, 0
  -  Output: 0 (0)

---

Data Structure
--------------

--- Strings for display and input, conversion to numbers (floats)

Algorithm
---------
Display request for first number: L of room
  - Get input from user
Display request for 2nd number: W of room
  - Get input from user
Calculate area in meters
Calculat ft^2 from m^2
Display output showing room area

Code
----

=end

def display_room_size
  puts "What's the Length of the room in meters?"
  length = gets.chomp.to_f
  puts "What's the Width of the room in meters?"
  width = gets.chomp.to_f
  area_meters = length * width
  # Should make this magic number a constant
  area_ft = area_meters * 10.7639 # could use round(2) instead of format below
  puts "The area of the room is #{area_meters} square meters
  (#{format("%.2f", area_ft)} square feet)."
end

display_room_size
# display_room_size
# display_room_size

# Further exploration - get input in ft
# Display sqft, sqinches, sqcentim
# New problem domain: 1 ft = 30.48 cm
INCH_PER_FT = 12
CM_PER_FT = 30.48

def display_room_size2
  puts "What's the Length of the room in feet?"
  length = gets.chomp.to_f
  puts "What's the Width of the room in feet?"
  width = gets.chomp.to_f

  sq_ft = (length * width).round(2)
  sq_in = ((length * INCH_PER_FT) * (width * INCH_PER_FT)).round(2)
  sq_cm = ((length * CM_PER_FT) * (width * CM_PER_FT)).round(2)

  puts "The area of the room is #{sq_ft} square feet
  (#{sq_in} square inches and #{sq_cm} square centimeters)."
end

display_room_size2
