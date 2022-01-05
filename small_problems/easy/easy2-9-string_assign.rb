name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# => Alice, Bob
# String object 'Bob' created with name referencing it. Another pointer var
# created, pointing to same object ID. Then new object created "Alice" with
# new pointer created (same variable name as before, but new pointer/reference)

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# => BOB, BOB
# Again, string object created 'Bob' with `name` as a reference to that object.
# Then, `save_name` created as a reference to the same object ID. The String#upcase!
# method is called on the name object, and it is a destructive method so the 
# object itself mutates (from 'Bob' to 'BOB'); both variables still reference the
# same (now mutated) object
