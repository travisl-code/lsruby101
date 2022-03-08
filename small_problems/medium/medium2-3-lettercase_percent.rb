=begin

Understand the Problem
----------------------
  Input:  String of characters
  Output:  Hash with 3 K-Vs (lowercase, uppercase, and neither). Each value
  for the keys will be a float representing the percentage of chars meeting those criteria
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Count lowercase
    Count uppercase
    Count neither upper/lower
    Return percentage of chars in string for each of those
    String always contains at least 1 char

    -- Implicit Requirements --
    Spaces count toward non-alphanumeric

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string, write a method that returns a hash with 3 k-v pairs, one for the
    percentage of uppercase, lowercase, and neither characters.


Examples
--------
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

  Edge Cases:
  

Data Structure
--------------
String input
Hash for return value
Floats for percentage values


Algorithm
---------
Initialize results hash with 3 values 0.0
Set string length variable
Separate string into array of chars. For each char...
  - Match char to upper or lower; incrememnt value by 1
  - If not matched, set hsh[:neither] += 1
Divide each value in results hash by the str length
Return results

  Helper Methods:


  
Code with Intent
----------------
=end
require 'pry'

def letter_percentages(str)
  str_length = str.length
  results = { lowercase: 0.0, uppercase: 0.0, neither: 0.0 }
  
  str.chars.each do |char|
    if char =~ /[a-z]/ then results[:lowercase] += 1
    elsif char =~ /[A-Z]/ then results[:uppercase] += 1
    else results[:neither] += 1
    end
  end

  results.each_with_object({}) { |(k,v), h| h[k] = ((v / str_length) * 100) }
end

# p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# Further Exploration - Rounding results

def format_results(hsh)
  hsh.each_with_object({}) do |(k, v), h|
    h[k] = format("%.2f", v)
  end
end

test = letter_percentages('abcdefGHI')
p format_results(test)
