=begin

Understand the Problem
----------------------
  Input:  String
  Output: Array of substrings that are palindromes

  Rules:
    -- Explicit Requirements --
    Palindrome words are case sensitive (Mom is vs. mom is not).
    Return all substrings from the given string that are palindromes.

    -- Implicit Requirements --
    Empty string input returns empty string output.
    Substrings can be considered any sequence of characters (not individual words).

  Questions:
    1. Will inputs always be a string?
    2. 
    3. 


Data Structure
--------------
  Array must be returned.


Algorithm
---------
Given a string...
Initialize a results array
Initialize a substring_arr array
Iterate through the string:
  -- Place all substrings in the substring_arr
For each substring in the substring_arr
  -- See if the substring is a palindrome
  -- If true, append to results array
Return results array


  -- Standalone Methods --

  def palindrome?(str)
    str == str.reverse

  def substrings(str)
  Initialize an empty results array
  SET a starting_index variable of 0
  LOOP from the starting index to the string.size - 2
    SET num_chars variable = 2 (to start by collecting 2 chars at a time)
    LOOP until num_chars >= string.size - starting_index
      substring = string[starting_index, num_chars]
      append substring to results array
      num_chars += 1
    starting_index += 1


Code with Intent
----------------
=end

def palindrome?(str)
  str == str.reverse
end

def substrings(str)
  results = []
  starting_index = 0
  while starting_index <= str.size-2
    num_chars = 2
    while num_chars <= str.size-starting_index
      substring = str[starting_index, num_chars]
      results.append(substring)
      num_chars += 1
    end
    starting_index += 1
  end
  results
end

def palindrome_substring(string)
  results = []
  substring_arr = substrings(string)
  substring_arr.each do |substring|
    results.append(substring) if palindrome?(substring)
  end
  results
end

p substrings('halo')
