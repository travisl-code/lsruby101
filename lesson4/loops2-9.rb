# Modify to iterate until either variable = 5 before breaking
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  
  next unless (number_a == 5) || (number_b == 5)
  puts "A: #{number_a}; B: #{number_b}"
  puts "5 was reached!"
  break
end

# Further Exploration - Is next best? Could you use if/else?
# An if/else statement could be used to evaluate the variables' values
# and if either is true, display the win message and break

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  
  if (number_a == 5) || (number_b == 5)
    puts "A: #{number_a}; B: #{number_b}"
    puts "5 was reached!"
    break
  end
end
