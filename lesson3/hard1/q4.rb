# fix the method

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break false unless is_an_ip_number?(word)
  end
  true
end

def is_an_ip_number?(word)
  word.to_i.to_s == word && (0..255).cover?(word)
end

p dot_separated_ip_address?('10.1.1.255')
p dot_separated_ip_address?('1.2.3')
p dot_separated_ip_address?('1.2.3.4.5')
