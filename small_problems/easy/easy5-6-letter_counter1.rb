=begin

Understand the Problem
----------------------
  Input:  String of words separated by spaces
  Output: Hash of word sizes and how many words of each size
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Separate words by spaces.
    Count the number of characters in each word.
    Keep track of how many occurrences of each count happen

    -- Implicit Requirements --
    All punctuation counts toward the word length it is next to

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string of words, separate them all by spaces and count the length
    of words. Store the length of words as a hash key and number of words that 
    length as the hash value. Include punctuation in word lengths.


Examples
--------
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

  Edge Cases:
  

Data Structure
--------------
Exercise calls for hash. May use array for
initial split of sentence into words.


Algorithm
---------
Given a string of words...
Split words into an array using spaces as delimiters
Initialize a hash with default value of 0.
Iterate through array (each word)...
  - Take the length
  - Store as key in hash
  - Increment value by 1

  Helper Methods:


  
Code with Intent
----------------
=end

def word_sizes(words)
  words_arr = words.split(' ')
  word_counts = Hash.new(0)

  words_arr.each do |word|
    word_counts[word.length] += 1
  end

  word_counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# Further Exploration - exploring Hash documentation
# 3 ways to create a new hash
# 1) hash literal using h = {}
# 2) use the Hash method. h = Hash[key: value, key: value]
# 3) use Hash.new. h = Hash.new(default_value)
