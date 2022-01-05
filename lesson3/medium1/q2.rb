# Commenting out error:
# puts "the value of 40 + 2 is " + (40 + 2)

# Error is from attempting to add str + int

# solution 1:
puts "the value of 40 + 2 is " + (40 + 2).to_s

# solution 2:
puts "the value of 40 + 2 is #{40 + 2}"
