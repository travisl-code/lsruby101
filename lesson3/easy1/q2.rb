# Difference between ! and ? in Ruby
# ! has 2 uses: 1) It is often put at the end of method names
# that mutate the caller to signal its mutating property (like uniq!), but
# not all mutating methods use ! (e.g., pop); 2) ! can be used for boolean
# expressions as a not argument (e.g., !true is false). Using !! before will
# return the boolean truthiness of the object

# ? in a method name signals that the return value will be a boolean (true
# or false).

# what is != and where to use?
p true != false # true

# put ! before something?
user_name = 'Travis'
p !user_name # should be a bool false

# put ! after something
arr = [1, 1, 2, 3, 3, 4, 4, 4]
puts "arr: #{arr.inspect}; arr object: #{arr.object_id}"
arr.uniq! # mutating method
puts "arr: #{arr.inspect}; arr object: #{arr.object_id}"

# put ? before something -- ternary operator?
user_name ? puts(user_name) : puts('no user name')

# put ? after something
puts user_name.eql?('Travis')

# put !! before something
p !!user_name
