=begin

Understand the Problem
----------------------
  Input:  Integer representing number of minutes
  Output: String in "##:##" format as military time

  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Take an integer number
    Output string formated as "##:##" time
    Any integer should work
      - Positive counts up from midnight (00:00)
      - Negative counts down from midnight (00:00)

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Take a positive or negative integer as input to a method,
    and if positive, count up from midnight those minutes; if 
    negative, count down from midnight that many minutes.


Examples
--------
0 => '00:00'
-3 => '23:57'
35 => '00:35'
-1437 => '00:03'
3000 => '02:00'
800 => '13:20'
-4231 => '01:29'

  Edge Cases:
  

Data Structure
--------------
Integer division and string conversion


Algorithm
---------
New constant = 1440 (minutes in a day)
Reduce number to less than 1440
Evaluate if number is positive or negative...
  - IF positive...
      Take modulus 60 for minutes
      Divide by 60 for Hour

  - IF negative...
      - Same as above, but subtract

  Helper Methods:
  single_days
  (optional) - track total days
  Loop through number
    - subtrace 1440 from input number
    - break if less than 1440


  minute_maker
  check positive or negative number or 0
    - Positive 
  
Code with Intent
----------------
=end

MINUTES = 1440

def single_days(minutes)
  days = 0
  case minutes <=> 0
  when 1
    loop do
      minutes -= MINUTES
      days += 1
      break if minutes < MINUTES
    end

  when -1
    loop do
      minutes += MINUTES
      days += 1
      break if minutes > -MINUTES
    end
  end

  minutes
end

def minute_maker(min)
  case min <=> 0
  when 1
    hours = min / 60
    minutes = min % 60
    "#{format("%02d", hours)}:#{format("%02d", minutes)}"
  when -1
    hours = (23 - (min.abs / 60)).to_s
    minutes = (60 - (min.abs % 60)).to_s
    hours.prepend('0') if hours.length == 1
    minutes.prepend('0') if minutes.length == 1
    "#{hours}:#{minutes}"
  else '00:00'
  end
end

# p minute_maker(800)
# p minute_maker(35)
# p minute_maker(-1437)

def time_of_day(minutes)
  minutes = single_days(minutes) if minutes >= MINUTES || minutes <= -MINUTES
  minute_maker(minutes)
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)

# Further Exploration
# Problem 1 - using % with negatives
(number).abs % MINUTES # number can be positive or negative

# Problem 2 - using Date and Time
# This doesn't make sense to me after reading the Date and Time
# documentation because there is only reference to specific dates, not
# the choice to ignore date and focus solely on time. Skipping.

# Problem 3 - date time and day of week
# Again, this doesn't make sense.
