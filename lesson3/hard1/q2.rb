# result of last line in code?
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting
puts greetings

# I think `puts greetings` will display the full hash...
# {:a=>'hi there'}
# The reason for this is that the informal_greeting variable is a
# reference to an existing string object that is "hi" in the key:value
# pair from the hash greetings. Then the mutating << method is called 
# on that string object, which should mutate it. Therefore, the object id
# of both the hash greeting and the string value associated with key :a
# will not have changed (but the value will)