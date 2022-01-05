# Palindrome numbers
def palindromic_number?(num)
  # p num
  num.to_s.to_i == num && num.to_s == num.to_s.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true


# Further Exploration -- Padding with 0s
# I added the `p num` statement to the method for testing, because
# it didn't work to add zeroes, as in the method call below:
# The problem is that padding numbers in Ruby signals that the 
# number is an octal (so only digits 0 - 7 are valid, not 8 and 9).
# I didn't use an 8 or 9 so I didn't get an excaption, but that's what
# happens if you do try. 

# To address, I thought you'd need to rewrite the method with a conditional,
# which I did below. However, the problem is that Ruby appears to convert integers
# to decimal (base 10) when they're passed to a method. Attempting to first convert
# to base 8 failed, and using p num first showed me that the number passed (0000345430000)
# is converted to 60174336 before any action is taken. I think you'd have to pass as a string.

def palindromic_number2?(num.to_s(8))
  p num
  if num.to_s.start_with?('0')
    puts "#{num.to_s(8)} and #{num.to_s(8).reverse}"
    num.to_s(8) == num.to_s(8).reverse
  else
    p num
    num.to_s == num.to_s.reverse
  end
end

puts palindromic_number2?(0000345430000) == true
