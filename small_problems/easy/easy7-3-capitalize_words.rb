=begin

Understand the Problem
----------------------
  Input:  Single string as arg
  Output: New string w/ original values, first chars capitalized, others lowercase
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --
    The "first character" requirement is literal; if
      a word is in "" like "quote" then the Q will not capitalize

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string, write a method that outputs the original string,
    except with the first character of the words capitalized and all other
    letters in the word lowercased.


Examples
--------
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

  Edge Cases:
  

Data Structure
--------------
String methods will be used for caps/lower; string needs to be broken into 
array of words


Algorithm
---------
Given a string...
Create an array of words in the string (sep on spaces)
Iterate through the array. For each word...
  - Capitalize the first character
  - Lowercase all other characters

  Helper Methods:


  
Code with Intent
----------------
=end

def word_cap(str)
  str.split.map { |word| word.capitalize }.join(' ')
end

# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Further Exploration - No String#capitalize 1
def word_cap2(str)

  str.split.map do |word|
    word[0].upcase + word[1..-1].downcase
  end.join(' ')
end

# p word_cap2('four score and seven') #== 'Four Score And Seven'
# p word_cap2('the javaScript language') #== 'The Javascript Language'
# p word_cap2('this is a "quoted" word') #== 'This Is A "quoted" Word'

# Further Exploration - No String#capitalize 1
def word_cap3(str)
  lower = ('a'..'z').to_a
  upper = ('A'..'Z').to_a
  hsh = {}
  counter = 0

  loop do
    hsh[upper[counter]] = lower[counter]
    counter += 1
    break if counter >= upper.size
  end

  arr = []

  str.split.each do |word|
    count = 0
    new_word = ''
    new_word << hsh.key(word[0]) unless !hsh.key(word[0])
    for char in word.chars do
      if hsh[char] != nil
        new_word << hsh[char]
      elsif hsh[char] == nil
        new_word << char
      end
    end
    arr << new_word[0] + new_word[2..-1]
  end

  arr.join(' ')
end

p word_cap3('four score and seven') #== 'Four Score And Seven'
p word_cap3('the javaScript language') #== 'The Javascript Language'
p word_cap3('this is a "quoted" word') #== 'This Is A "quoted" Word'
