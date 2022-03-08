=begin

Understand the Problem
----------------------
  Input:  Integer > 1752 representing year
  Output: Integer representing number of Friday 13s in tht year
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --
    Use Gregorian Calendar

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an integer greater than 1752 (year UK adopted Gregorian calendar), write
    a method that returns an integer representing how many Friday 13ths were in that year.


Examples
--------
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

  Edge Cases:
  

Data Structure
--------------
Date objects
Integer as input
Integer as output

Algorithm
---------
Initialize a results to 0
Initialize a date object to given year
  - Should be Jan 13 (first 13th day)
Start a loop
  - See if date is Friday
    - If yes, increment results
  - Increment date object to next month
  - Break if year is no longer original year

  Helper Methods:


  
Code with Intent
----------------
=end

require 'date'

def friday_13th(year)
  # LS used Date.civil
  y = Date.new(year, 1, 13)
  results = 0
  12.times do
    results += 1 if y.friday?
    y = y.next_month
  end
  results
end

# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2

# Further Exploration - Months with 5 fridays
=begin
input: year integer
output: integer for months with 5 fridays (could also do months)

Account for leap years...

Algorithm:
Initialize calendar hash { jan: 0 }
Initialize date object based on year
Find first Friday of year (subprocess)
Start loop.
  - Get current month
  - Increment the associated month's value by 1
  - Break if no longer current year
Return calendar hash selection for values = 5
=end

def initialize_calendar_hash
  calendar = {}
  (1..12).each { |month| calendar[month] = 0 }
  calendar
end

def first_friday(date)
  loop do
    break if date.friday?
    date = date.next_day
  end
  date
end

def five_fridays(year)
  calendar = initialize_calendar_hash
  d = Date.civil(year)
  d = first_friday(d)
  loop do
    month = d.mon
    calendar[month] += 1
    d += 7
    break if d.year > year
  end
  calendar.select { |mo, fridays| fridays == 5 }
end

p five_fridays(2021)