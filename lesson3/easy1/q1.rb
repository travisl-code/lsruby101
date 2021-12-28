# What would it print?
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# This should output the entire original array because the 
# uniq method does not mutate the caller -- using uniq! would
# change the output to [1, 2, 3]

# Additional note from review:
# puts calls to_s on argument, so it prints each number
# on its own line as well.
