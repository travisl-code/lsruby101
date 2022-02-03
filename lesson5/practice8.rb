# Use each to output all vowels from strings

hsh = {
  first: ['the', 'quick'], 
  second: ['brown', 'fox'], 
  third: ['jumped'], 
  fourth: ['over', 'the', 'lazy', 'dog']
}

hsh.each do |k, arr|
  vowels = arr.join(' ').delete "^aeiou"
  puts vowels
end

# Or...
VOWELS = 'aeiouAEIOU'
hsh.each do |_, arr|
  vowels = ''
  arr.each do |word| 
    word.chars {|letter| vowels << letter if VOWELS.include?(letter)}
  end
  puts vowels
end
