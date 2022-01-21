=begin

Understand the Problem
----------------------
  Input:  Short line of text (string)
  Output: Input text printed within a box
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    Input always fits in terminal window
    

    -- Implicit Requirements --
    Box is 5 lines tall total
    Top and bottom are '-' characters
    Sides are '|' characters (3 total)
    One space to left and right of string,
    ... one empty line above and below
    Corners are '+' characters.

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a strong string of text, write a method that prints
    the text into a box. Box should use + for corners, - for horizontal
    lines and | for vertical lines


Examples
--------
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+


  Edge Cases:
  

Data Structure
--------------



Algorithm
---------
Given a short string of text...
Count string length, + 2
Pad string with a | and space on each side
Use the total new line length to format the correct length of lines


  Helper Methods:


  
Code with Intent
----------------
=end

def print_in_box(banner)
  text_line = '| ' + banner + ' |'
  top_bottom = '+' + ('-' * (text_line.length - 2)) + '+'
  side_padding = '|' + ("\s" * (text_line.length - 2)) + '|'
  
  puts top_bottom
  puts side_padding
  puts text_line
  puts side_padding
  puts top_bottom
end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')

# Further Exploration 1 - Truncate message
CONSOLE_WIDTH = 80
def truncate_banner(long_banner)
  truncated = long_banner[0, (CONSOLE_WIDTH - 7)] + '...'
end

def print_in_box2(banner)
  banner = truncate_banner(banner) if banner.length >= CONSOLE_WIDTH - 4
  top_bottom = "+#{'-' * (banner.length + 2)}+"
  side_buffer = "|#{' ' * (banner.length + 2)}|"

  puts top_bottom
  puts side_buffer
  puts "| #{banner} |"
  puts side_buffer
  puts top_bottom
end

# print_in_box2('This is a banner!')
# print_in_box2('This banner is just so incredibly, absolutely, totally lloooooooonnnnnnngggggggggggggggggggggggggggggggggggg')

# Further Exploration 2 - Word Wrap
# Input very long string (80+ characters)
# Output bannerized string with input text on multiple lines
# Questions:
# - Break words at spaces or at characters? I'm going to go for spaces
#   b/c I think that would look better than words

# Algorithm
# Split all words by spaces into an array
# Create empty array
# 
# Create outer loop (while empty array joined length less than 80 -4)
#   - Append word from main array
#   - Increase count by word length + 1 (for following space)
#   
# Create inner loop
# Normalize line length based on longest line

def split_banner(long)
  all_lines = []
  word_arr = long.split

  line = []
  for word in word_arr
    line << word

    if line.join(' ').length >= (CONSOLE_WIDTH - 4)
      all_lines << line[0..-2]
      line = [line.pop] 
    end

  end

  all_lines << line
  all_lines
end

def normalize_lines_to_hash(array)
  lines = {}
  array.each_with_index do |subarray, index|
    lines[subarray.join(' ')] = subarray.join(' ').length
  end
  lines
end

def print_in_box3(words)
  lines = split_banner(words)
  lines_and_lengths = normalize_lines_to_hash(lines)
  longest_line = lines_and_lengths.values.max

  top_bottom = "+#{'-' * (longest_line + 2)}+"
  side_buffer = "|#{' ' * (longest_line + 2)}|"

  puts top_bottom
  puts side_buffer

  lines_and_lengths.keys.each do |line|
    puts "| #{line}#{' ' * (longest_line - (line.length - 1))}|"
  end

  puts side_buffer
  puts top_bottom
end

print_in_box3('This banner is just so incredibly, absolutely, totally lloooooooonnnnnnngggggggggggggggggggggggggggggggggggg for sure')
