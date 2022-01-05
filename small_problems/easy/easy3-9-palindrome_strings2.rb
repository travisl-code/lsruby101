# Palindrome case insensitve, ignore non-alphanumeric
def real_palindrome?(string)
  string.downcase!
  string.gsub!(/[^a-z\d]+/, "")
  string == string.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true
puts real_palindrome?("Madam, I'm Adam") == true
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false

# Further Explore - Reading String#count and String#delete
# Uses regex-like expressions for matching (counting occurrences for #count)
# and deleting occurrences (for #delete). Multiple matching rules can be used
# and rules can be negated with ^. Searching for literal ^ or \ requires escaping
# these characters. Providing multiple arguments creates multiple match critera, so
# 'testtube'.delete('e-t', '^s') returns 'sub' ("don't delete s out of that list!")
