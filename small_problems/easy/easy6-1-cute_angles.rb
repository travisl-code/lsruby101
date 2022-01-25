=begin

Understand the Problem
----------------------
  Input:  Float between 0 - 360
  Output: String representing angle in degrees, min, sec
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Use degree symbol for degree
    Use single quote ' for min
    Use double quotes " for seconds
    1 degree = 60 min
    Use two digits with leading zeroes for min sec format (03'07")

    -- Implicit Requirements --

  Questions:
    1. Assume correct input?
    2. 
    3. 

  Mental Model:
    - Given a number object 0 - 360 as an argument, write a method that converts
    the number into a string formatted like "00d00'00" "  where the d represents
    the degree symbol.


Examples
--------
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

  Edge Cases:
  

Data Structure
--------------



Algorithm
---------
Given an integer or float between 0 - 360...
Degree = convert number to integer (whole number)
Min = Degree - (Convert number to float w/ 4 spaces) * 60 to integer (whole);
Sec = Min - (Convert Min to float w/ 4 spaces) * 60 to integer (whole num)
Format string using values

  Helper Methods:


  
Code with Intent
----------------
=end

DEGREE = "\xC2\xB0"

def dms(number)
  degree = number.to_i
  minutes = ((number - degree) * 60).round(4)
  seconds = ((minutes - minutes.to_i) * 60).round
  formatted = format("%02d#{DEGREE}%02d'%02d\"", degree, minutes.round, seconds)
  "%(#{formatted})"
end

# puts dms(30) # == %(30°00'00")
# puts dms(76.73) # == %(76°43'48")
# puts dms(254.6) # == %(254°36'00")
# puts dms(93.034773) # == %(93°02'05")
# puts dms(0) # == %(0°00'00")
# puts dms(360) # == %(360°00'00") || dms(360) == %(0°00'00")

# Further exploration - modify to account for input outside 0 - 360 range
def normalize_degrees(input)
  input % 360
end

def dms(number)
  number = normalize_degrees(number)
  degree = number.to_i
  minutes = ((number - degree) * 60).round(4)
  seconds = ((minutes - minutes.to_i) * 60).round
  formatted = format("%02d#{DEGREE}%02d'%02d\"", degree, minutes.round, seconds)
  "%(#{formatted})"
end

puts dms(30) # == %(30°00'00")
puts dms(76.73) # == %(76°43'48")
puts dms(254.6) # == %(254°36'00")
puts dms(93.034773) # == %(93°02'05")
puts dms(0) # == %(0°00'00")
puts dms(360) # == %(360°00'00") || dms(360) == %(0°00'00")
