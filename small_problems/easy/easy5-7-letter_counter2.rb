# Modify easy5-6 method to exclude non-letters
LOWER = ('a'..'z').to_a
UPPER = ('A'..'Z').to_a
LETTERS = LOWER + UPPER

def word_sizes(words)
  
  counts = Hash.new(0)
  words.split(" ").each do |word|
    counts[word.chars.select{ |ch| LETTERS.include?(ch) }.size] += 1
  end

  p counts
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
