# Modify block so it prints num and stops iterating when num = 2
5.times do |num|
  puts num
  break if num == 2
end

# Further Exploration
# How many values printed if we use `break if num == 4`?
# Would print all numbers because the #times method is 0 indexed

# How many values printed if we use `break if num < 7`
# Only 1 would print because 0 < 7
