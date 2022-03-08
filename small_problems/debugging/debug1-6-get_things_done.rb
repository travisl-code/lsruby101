# What is SystemStackError and why does it happen?
# The stack is the program execution's layers of currently executing methods/blocks. Each
# method that calls another method adds another layer to the stack, etc. The SystemStackError
# indicates that the maximum size of the stack has been reached. This is happening because 
# the method calls itself recursively with no escape condition.

=begin
def move(n, from_array, to_array)
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']
=end

require 'pry'

def move(n, from_array, to_array)
  # binding.pry
  to_array << from_array.shift
  return if n <= 1
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

# p todo # should be: ['coffee with Tom']
# p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# Further Exploration - from_array smaller than n?
# The `from_array` will be empty if its size is smaller than n, so the the Array#shift
# method will be called on an empty array, which returns a nil value. This will then get pushed
# to the `to_array` by the << method. The to_array will have (n - from_array.size) amount of nil 
# values at the end.

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(5, todo, done)

p todo
p done