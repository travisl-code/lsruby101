# Why don't all negative words get removed?
# The problem with this method is that it's removing elements as it iterates
# through the array. This is a problem because, for example, on the first iteration,
# you're manipulating the object at array[0]. If you remove that element, the
# next iteration is manipulating the object at array[1] -- however, because the
# original array[0] was removed, the element that was at array[2] is now array[1] and
# we skipped over the original array[1] item.

=begin
def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
=end

def neutralize(sentence)
  results = []
  words = sentence.split(' ')
  words.each do |word|
    results << word unless negative?(word)
  end

  results.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
