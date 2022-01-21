=begin

Understand the Problem
----------------------
  Input:  String of words separated by spaces
  Output: String with first/last letters of words swapped
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    All words contain at least 1 letter
    String always contains at least 1 word
    String is words and spaces (no other symbols)
    
    -- Implicit Requirements --
    Capitalization can be ignored.

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string of words separated by spaces, write a method
    that swaps the first and last letter of each word, ignoring 
    cases.


Examples
--------
'Abcde' => 'ebcdA'
'a' => 'a'

  Edge Cases:
  

Data Structure
--------------
Array for holding individual words and manipulating


Algorithm
---------
Given a string of words separated by spaces...
Split the words into an array delimited by spaces
Iterate through the elements of the array...
  - Swap the last character into the first position
  - Swap the 2nd character into the last position
Rejoin the array into a string to return

  Helper Methods:


  
Code with Intent
----------------
=end

def swap(words)
  words.split(" ").map do |word|
    letters = word.chars
    letters.prepend(letters.pop)
    letters << letters.delete_at(1)
    letters.join('')
  end.join(" ")
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')

x = 'this is a test'
p swap(x)
p x 
# Validated non-destructive b/c an array object is created
# and string objects created in it, which are mutated. 


# Handy idiom from LS Solution:
# a, b = b, a
# word[0], word[-1] = word[-1], word[0]

# Further Exploration - Using idiom with a, b as method arguments
# Before I run in irb, I don't think this will work. I'm not sure where in the documentation
# I can see the idiom details, but it looks like reassignment is being used,
# not some form of mutating method. With that said, a return value would be the single
# characters swapped, NOT the whole word.

# After testing -- Both of my assumptions were correct...

# This is reassignment and non-destructive:

# 3.0.0 :020 > arr = ['a', 'b']
#  => ["a", "b"]
# 3.0.0 :021 > new2 = swap_first_last_characters(arr[0], arr[-1])
#  => ["b", "a"]
# 3.0.0 :022 > arr
#  => ["a", "b"]


# And the return is simply the letters, not the full word:

# 3.0.0 :012 > def swap_first_last_characters(a, b)
# 3.0.0 :013 >   a, b = b, a
# 3.0.0 :014 > end
#  => :swap_first_last_characters
# 3.0.0 :015'> word = 'sweet'
#  => "sweet"
#  3.0.0 :017 > new = swap_first_last_characters(word[0], word[-1])
#  => ["t", "s"]
# 3.0.0 :019 > word
#  => "sweet"
# 3.0.0 :020 >
