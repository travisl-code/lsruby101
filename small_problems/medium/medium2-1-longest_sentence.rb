=begin

Understand the Problem
----------------------
  Input:  Textfile as input
  Output: Longest string (and its length)
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a text file, write a method that parses the text file sentence by sentence
    to determine the longest sentence in the file.


Examples
--------

  Edge Cases:
  

Data Structure
--------------



Algorithm
---------
Open the file object
Initialize a hash with 2 keys: length = 0 and sentence = ''
Iterate through the file. For each sentence (delineated by a '. ')...
  - If current sentence is longer tha hash, store values into hash
Close the file object

  Helper Methods:


  
Code with Intent
----------------
=end

# /mnt/c/Users/travi/OneDrive/Documents/Launch School

def longest_sentence(text)
  size = { length: 0, sentence: '' }
  # Commenting out for Further Explore 2
  # sentences = text.split (/[\.|!|\?]/)
  sentences = sentences_with_punctuation(text)
  
  sentences.each do |sentence|
    s_size = sentence.split.size
    if s_size > size[:length]
      size[:length] = s_size
      size[:sentence] = sentence
    end
  end

  size
end

# Further Exploration 1 - Maintaining punctuation
=begin
Include the punctuation as a capture group. Then, iterate through the array
with iterator for index. Use index and index + 1 to create a subarray and then
join the subarrays together for a new string.
=end

def sentences_with_punctuation(text)
  arr = text.split(/([\.!\?])/)
  with_punct = []
  iterator = 0
  loop do
    with_punct << arr[iterator..iterator+1]
    iterator += 2
    break if iterator >= arr.size
  end

  with_punct.map { |sub| sub.join('') }
end

file = '/home/travis/lsrb101/small_problems/medium/frankenstein.txt'

open(file) do |f|
  data = f.read
  longest = longest_sentence(data)
  puts "Longest sentence (#{longest[:length]}): #{longest[:sentence]}"
end

# Further Exploration 2 - Paragraphs and words
=begin
The file can be split into paragraphs if we do the same matching like in our original
problem, but just include the newline after the sentence character (or even two new lines).
This may not be the best solution, but it does work.

paragraphs = text.split(/[\.!\?]\n\n/)

The longest word would require splitting on a space:

words = text.split(' ')

=end