# Use loop to print each name in array
names = ['Sally', 'Joe', 'Lisa', 'Henry']
count = 0

loop do
  puts names[count]
  count += 1
  break if count >= names.size
end

# Further Exploration - print names backwards
# Could use the Array#pop method or set count to upper limit
# and decrease value using count -= 1

loop do
  puts names.pop
  break if names.empty?
end
