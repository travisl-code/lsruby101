# Use while loop to print 5 random numbers
numbers = []
while numbers.size < 5
  numbers << rand(0..99)
end

p numbers
