=begin

Understand the Problem
----------------------
  Input:  String (potentially empty)
  Output: Array of string elements with each word followed by the
  length of the word as the elements
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Words are separated by spaces
    Non-alphabet chars count toward word-length

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string as input, write a method that splits words into an array
    with spaces as the delimeter, and then calculate the length of each word and return
    it appended to each string element followed by a space


Examples
--------
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []


  Edge Cases:
  

Data Structure
--------------
String input, array return and iteration


Algorithm
---------
Split strings into an array of words separated by spaces
Iterate through the array transformatively.
  - Append a space and the length of the word to the end of each element
Return the array

  Helper Methods:


  
Code with Intent
----------------
=end

def word_lengths(str)
  str.split(' ').map { |word| word + " #{word.length}" }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
