# Add user input to numbers array; stop when 5 numbers
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  
  numbers << input
  break if numbers.size >= 5
end

puts numbers
