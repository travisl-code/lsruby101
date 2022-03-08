=begin

Understand the Problem
----------------------
  Input:  String possibly containing set(s) of parentheses
  Output: Boolean true/false for if all parentheses are balanced
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Pairs must start with ( and not )

    -- Implicit Requirements --
    String without any () should return true

  Questions:
    1. Always string as input?
    2. 
    3. 

  Mental Model:
    - Given a string, evaluate the characters to see if there are both
    open '(' and close ')' parentheses in the string. Return true if yes, that
    the pairs are balanced, false if not.


Examples
--------
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

  Edge Cases:
  

Data Structure
--------------
String input
Boolean for output
Possibly array for iterating through chars of string

Algorithm
---------
Initialize test_arr to empty array
Set open and close variables to nil
Split string into array of chars.
  - Select chars "(" and ")" only. For each...
    - Store index of open '('
    - Store index of close ')'
    - Open before close? Pop both


Count number of open and close
  - Evaluate if same. Set to false if no
Evaluate if close is before open

  Helper Methods:
  index_eval?(open, close)
  False if either is nil
  True if open is less than close

  
Code with Intent
----------------
=end
require 'pry'

def index_eval_ok?(open, close)
  return false if [open, close].any?(nil)
  open < close
end

def balanced?(str)
  # first_eval = str.count("(") == str.count(")")
  return true if str.count('()') == 0
  open_index = nil
  close_index = nil
  arr = str.chars.select { |char| char == '(' || char == ')' }
  loop do
    open_index = arr.index('(')
    close_index = arr.index(')')
    # binding.pry
    return false unless index_eval_ok?(open_index, close_index)
    arr.delete_at(close_index)
    arr.delete_at(open_index)
    
    break if arr.empty?
  end
  true
end

# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false

# Further Exploration - Expand for other characters
# Switching method to match LS solution
def balanced2?(string, special_char)
  special = 0
  # binding.pry
  string.each_char do |char|
    special += 1 if char == special_char[0]
    special -= 1 if char == special_char[1]
    break if special < 0
  end
  special.zero?
end

def special_balanced?(str)
  specials = ['()', '[]', '{}', "\"\"", "\'\'"]
  iter = 0
  flag = false
  loop do
    special = specials[iter]
    flag = balanced2?(str, special)
    iter += 1
    break if iter >= specials.size || flag == false
  end
  flag
end

p special_balanced?('(This) {is} [a] (test) "hello"')
p special_balanced?('(This) {is [a] (test) "hello"')