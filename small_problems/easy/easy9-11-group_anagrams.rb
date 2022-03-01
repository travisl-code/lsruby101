=begin

Understand the Problem
----------------------
  Input:  Array of strings
  Output: Display array of strings selectively where strings are anagrams
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Anagrams are words with same letters in different orders

    -- Implicit Requirements --
    Each group of anagrams should be printed together in an array

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given an array of strings, write a method that evaluates strings and compares them to all
    elements in the array, and if they're anagrams, return them in a new array


Examples
--------
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

  # ["demo", "dome", "mode"]
  # ["neon", "none"]
  # #(etc)

  Edge Cases:
  

Data Structure
--------------
String methods to examine anagrams
Array input, arrays displayed containing anagrams


Algorithm
---------
Create an empty anagrams array
Iterate through the words input with index. For each word...
  - Create temporary array
  - compare current word with index word -- is anagram?
    - If yes, put both words in temporary array
  - Increment index + 1
  - At end of loop, move uniques into anagrams array

  Helper Methods:
  is_anagram?(og_word, test_word)
  Split characters of both strings into arrays
  Sort arrays
  Evaluate if arrays are the same

  words_present?(arr, word)
  Iterate through arr subarrays. For each sub...
    - See if word contained in sub



  
Code with Intent
----------------
=end

require 'pry'

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

  # ["demo", "dome", "mode"]
  # ["neon", "none"]
  # #(etc)

def is_anagram?(og_word, test_word)
  return false if og_word == test_word
  og_word.chars.sort == test_word.chars.sort
end

def words_present?(arr, word)
  return false if arr.select {|subarr| subarr.include?(word) }.empty?
  true
end

# test = [["demo", "dome", "mode"], ["none", "neon"], ["tied", "diet", "edit", "tide"]]
# p words_present?(test, 'demo')
# p words_present?(test, 'hotel')

def group_anagrams(array)
  anagrams = []

  array.each_with_index do |word, i|
    temp = []
    loop do
      if is_anagram?(word, array[i])
        temp << word unless words_present?(anagrams, word)
        temp << array[i] unless words_present?(anagrams, array[i])
      end
      i += 1
      break if i == array.size
    end
    # binding.pry
    anagrams << temp.uniq unless temp.empty?
  end

  anagrams
end

p group_anagrams(words)
