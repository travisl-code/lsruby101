# Print 1 - 5 and whether even or odd
count = 1

loop do
  state = count.even? ? 'even' : 'odd'
  puts "#{count} is #{state}!"
  count += 1
  break if count > 5
end
