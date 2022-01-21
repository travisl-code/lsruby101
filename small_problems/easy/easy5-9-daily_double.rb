=begin

Understand the Problem
----------------------
  Input:  String as argument to method
  Output: New string containing original string w/ consecutive duplicate chars 
  removed/reduced to a single char

  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Consecutive characters should be in the new string once

    -- Implicit Requirements --

  Questions:
    1. How to handle multiple spaces?
    2. 
    3. 

  Mental Model:
    - Given a string of characters, write a method that returns a
    new string which the characters of the original string and that
    reduces consequtive characters into a single 
    character.


Examples
--------
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

  Edge Cases:
  

Data Structure
--------------
Array of characters for iteration


Algorithm
---------
Given a string of characters...
Initialize empty string
Split the characters into an array
Move the first character into the string
Iterate through the array...
  - IF the current char is the last in the string, do not add it
  - IF the current char is not the last, add it

  Helper Methods:


  
Code with Intent
----------------
=end

def crunch(words)
  return words if words.empty?
  crunched = words[0]
  
  words.split('').each do |char|
    crunched << char unless char == crunched[-1]
  end

  crunched
end

# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''

# Further Exploration - Multiple things
# 1) Exploring the given solution...
# Pointing past the end of the array allows the last element of the array to
# have something to compare to (a character can never equal nil so it will never
# evaluate to true). If the LS solution stopped iterating at text.length instead
# of text.length - 1, the 0-based index would try to push a nil into the string
# (because nil == nil).

# After testing -- I was wrong. The code below works, but I may be 
# misunderstanding the question being asked. 

# def crunch(text)
#   index = 0
#   crunch_text = ''
#   while index != text.length
#     crunch_text << text[index] unless text[index] == text[index + 1]
#     index += 1
#   end
#   crunch_text
# end

# p crunch('ggg')

# I'm not sure why LS didn't use String#chars or String#each_char.
# I used essentially the same thing with String#split, and was able
# to get this working. I went in a reverse format though, adding each
# element and then seeing if the previous element is the same as the 
# current.

# 2) Using RegEx to solve the problem...
# Couldn't figure out... found solution in list of solutions
def crunch(words)
  words.gsub(/(.)\1+/, '\1')
end

p crunch('gggggggg')
