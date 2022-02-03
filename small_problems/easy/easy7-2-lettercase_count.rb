=begin

Understand the Problem
----------------------
  Input:  String
  Output: Hash with 3 entries: 1) lowercase letters, 2) uppercase, 3) neither

  (Should output return same object?)

  Rules:
    -- Explicit Requirements --

    -- Implicit Requirements --
    Empty strings return 0 for value of 3 hash keys
    Non-alphabet symbols increment "neither" key


  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string, write a method that returns a hash containing
    3 elements. The first key is lowercase letters; 2nd is uppercase
    letters; 3rd is neither. Increment count of each letter from string
    input.


Examples
--------
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

  Edge Cases:
  

Data Structure
--------------
Building hash for return


Algorithm
---------
Initialize 2 constants:
  - Array of lowercase letters
  - Array of uppercase letters
Given a string as an argument...
Initialize a new hash with default values 0
Break string into array of characters, iterate...
  - Increment :lowercase IF char in lowercase constant
  - Increment :uppercase IF char in uppercase constant
  - Increment :neither IF char not in either constant
return Hash

  Helper Methods:


  
Code with Intent
----------------
=end

UPPER = ('A'..'Z').to_a
LOWER = ('a'..'z').to_a

def letter_case_count(str)
  case_count = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }

  str.chars do |char|
    case_count[:lowercase] += 1 if LOWER.include?(char)
    case_count[:uppercase] += 1 if UPPER.include?(char)
    case_count[:neither] += 1 if !UPPER.include?(char) && !LOWER.include?(char)
  end

  case_count
end

p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }
