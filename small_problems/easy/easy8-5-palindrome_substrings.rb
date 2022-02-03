=begin

Understand the Problem
----------------------
  Input:  String
  Output: Array of substrings that are palindromes; should be ordered
    same as they appear in string; duplicates included
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Palindromes are case sensitive
    Punctuation considered for palindromes
    Single characters are not palindromes

    -- Implicit Requirements --

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string, create an array of all substrings.
    Iterate through the substrings, and if they are more than 1
    character in length, test if they are palindromes. Return
    array of palindromes.


Examples
--------
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


  Edge Cases:
  

Data Structure
--------------
String input broken into array of characters and array
of substrings; iteration through that array


Algorithm
---------
Given a string as input...
Create an empty array for palindromes
Create an array of all substrings
Iterate through the array. For each substring...
  - IF substring.length > 1
    - Test if palindrome
      - IF yes, add to palindromes array
  - IF length is 1, next
Return palindromes array

  Helper Methods:
  leading_substrings
    - Extract substrings from single string
  
  all_substrings
    - Extract all substrings from string

  is_palindrome?
    - Examine substring for palindrome
  
Code with Intent
----------------
=end

def palindromes(str)
  all_palindromes = []
  all_substrings = all_substrings(str)

  all_substrings.each do |substring|
    if substring.length > 1
      if is_palindrome?(substring)
        all_palindromes << substring
      end
    end
  end

  all_palindromes
end

def all_substrings(str)
  all_substrings = []
  str.chars.each_with_index do |_, start_index|
    current_str = str[start_index..-1]
    all_substrings.concat(leading_substrings(current_str))
  end
  all_substrings
end

def leading_substrings(str)
  substrings = []
  str.chars.each_with_index do |_, index|
    substrings << str[0..index]
  end
  substrings
end

def is_palindrome?(str)
  str.reverse == str
end

# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]



# Further Exploration - Modify method(s)
# to ignore non-alphanumeric chars and case

def palindromes(str)
  all_palindromes = []
  all_substrings = all_substrings(str)

  all_substrings.each do |substring|
    string = substring.delete "^a-zA-Z0-9"
    all_palindromes << string if is_palindrome?(string)
  end

  all_palindromes
end

def is_palindrome?(str)
  str.downcase.reverse == str.downcase && str.length > 1
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') #== [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
