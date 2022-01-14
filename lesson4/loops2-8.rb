# Use next to only print even numbers
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# Further Exploration - why did next go after increment and before puts?
# If it went after puts, all numbers would print. If it went before the
# increment, it would result in infinite loop after the first odd number (1)
