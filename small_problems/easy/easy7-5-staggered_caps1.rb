=begin

Understand the Problem
----------------------
  Input:  String as arg
  Output: New string containing original value with staggered caps
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Non-letter characters don't change but count in alternation

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string as input, write a method that returns a new string
    with the characters in a staggered capitalization scheme with the first
    character upper, next lower, next upper, etc. Non-letter characters
    won't change, but they count toward the alternating cases.


Examples
--------
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

  Edge Cases:
  

Data Structure
--------------
Character-by-character evaluation and manipulation requires array


Algorithm
---------
Given a string as input...
Separate characters from string into an array
Iterate through array tracking index...
  - If index is even, upcase value
  - If index is odd, downcase value

  Helper Methods:


  
Code with Intent
----------------
=end

def staggered_case(str)
  staggered = ''

  str.chars.each_with_index do |char, i|
    i.even? ? staggered << char.upcase : staggered << char.downcase
  end

  staggered
end

# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


# Further Exploration - Keyword arg so first char is downcase
def staggered_case2(str, str_case='upcase')
  needs_upper = true if str_case == 'upcase'
  needs_upper = false if str_case.downcase == 'downcase'
  staggered = ''

  str.chars.each do |char|
    if needs_upper
      staggered << char.upcase
    else
      staggered << char.downcase
    end
    needs_upper = !needs_upper
  end

  staggered
end

p staggered_case2('I Love Launch School!', 'downcase') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case2('ALL_CAPS', 'downcase') #== 'AlL_CaPs'
p staggered_case2('ignore 77 the 444 numbers', 'downcase') #== 'IgNoRe 77 ThE 444 NuMbErS'
