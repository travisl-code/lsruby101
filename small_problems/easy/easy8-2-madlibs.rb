=begin

Understand the Problem
----------------------
  Input:  Prompt for noun, verb, adverb, adj
  Output: Strong with inputs formatted into it
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Prompt user to input 4 words (noun, ver, adj, adv),
    and output a story containing those words.


Examples
--------
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

  Edge Cases:
  

Data Structure
--------------
Strings and string interpolation


Algorithm
---------
Prompt user for 4 inputs
Store each in variable
Output string with input words formatted

  Helper Methods:


  
Code with Intent
----------------
=end

puts 'Enter a noun: '
noun = gets.chomp

puts 'Enter a verb: '
verb = gets.chomp

puts 'Enter an adjective: '
adj = gets.chomp

puts 'Enter an adverb: '
adverb = gets.chomp

story = "There once was a #{adj} #{noun}, "\
"which was only wanting to #{verb} so it did it #{adverb}."

puts story
