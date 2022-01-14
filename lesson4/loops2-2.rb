# Modify so loop stops if number = 0 or < 10
loop do
  number = rand(100)
  puts number
  break if number <= 10
end
