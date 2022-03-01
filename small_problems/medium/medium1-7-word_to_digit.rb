=begin

Understand the Problem
----------------------
  Input:  Sentence/string containing words separated by spaces
  Output: Same string with word-numbers converted to digits (five to 5, e.g.)
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Return same string object

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string of words separated by spaces, write a method
    that returns the same string with any word-numbers converted to their
    digit representation.


Examples
--------
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

  Edge Cases:
  

Data Structure
--------------



Algorithm
---------
Initialize hash of word-to-number representations
Iterate through the hash keys. For each number in the hash...
  - If that word is found in the input string
    - Replace it destructively

  Helper Methods:


  
Code with Intent
----------------
=end
require 'pry'

def initialize_hash
  hsh = {}
  words = %w(zero one two three four five six seven eight nine)
  words.each_with_index { |word, i| hsh[word] = i.to_s }
  hsh
end

def word_to_digit(str)
  word_hsh = initialize_hash
  word_hsh.each do |k, v|
    str.gsub!(/\b#{k}\b/i, "#{v}TAG")
  end

  str.gsub!(/TAG\s?/, '')

  phones = find_phone_numbers(str)
  phones.each do |phone|
    formatted = format_phone(phone)
    str.gsub!(phone, formatted)
  end unless phones.empty?

  str
end

# p word_to_digit('test one TWO hi Three')

# Further Exploration 1 - case insensitve
# Added the /.../i regex to ignore case

# Further Exploration 2 - Remove spaces from altered digits (keep original digit spacing)



# Further Exploration 3 - converting 10 digits to phone number
# Format as '(###) ###-####'

def find_phone_numbers(str)
  str.split.select { |word| word.size == 10 && word.to_i.to_s == word }
end

def format_phone(num)
  copy = num.dup
  copy.insert(0, '(')
  copy.insert(4, ') ')
  copy.insert(-5, '-')
  copy
end

# p word_to_digit('1234567890 test 3369717545')
p word_to_digit('Test 1 5 freight one two three four five six seven eight nine zero')
