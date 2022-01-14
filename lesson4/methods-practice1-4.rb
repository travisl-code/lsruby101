# What is return value of #each_with_object? Why?

# The return value will be a hash: {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
# The #each_with_object method takes an object as an argument (in this case a hash),
# and then the collection is iterated over using a block. The block has 2 args: the 1st
# is the value of the collection's current iteration, and the 2nd is the object that 
# was passed to the method (a memo_obj). In this case `value` is 'ant' on the first
# iteration, so the Hash['ant'[0]] becomes a key of 'a' with a value of 'ant'

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
