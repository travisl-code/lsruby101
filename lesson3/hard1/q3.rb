# What will be printed by each code group?

# A)
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = 'one'
two = 'two'
three = 'three'

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# I think this is the trickiest of the 3 methods. I originally thought that
# the 3 puts statements would display the original values of the variables 
# (one: one, two: two, three: three). However, that may be wrong. Here's my attempt 
# at an explanation:

# String are created with variables as pointers to them. References to these values
# are passed to the mess_with_vars method. That method creates 3 new locally scoped
# variables, but they reference the same object IDs as the variables passed in.
# Then we have variable reassignment... however, this is the tricky part: the
# local variables are reassigned as pointers to the same existing objects. But
# now that I think more about it, I still don't think this would be any sort of 
# mutation of the original object. The variable reassignment is not a mutation, but
# rather changing pointers for the locally scoped variables.

# B)
def mess_with_vars2(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = 'one'
two = 'two'
three = 'three'

mess_with_vars2(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# The 3 puts statements will display the original values of the variables.
# References to the values stored in those variables are passed to mess_with_vars,
# and new locally scoped variables are created pointing to the same reference object.
# When the local variables are reassigned using the = operator, new string objects
# are created and the variables point to them instead.

# C)
def mess_with_vars3(one, two, three)
  one.gsub!("one", "two")
  two.gsub!("two", "three")
  three.gsub!("three", "one")
end

one = 'one'
two = 'two'
three = 'three'

mess_with_vars3(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# In mess_with_vars3, the gsub! method mutates the caller; its first argument is a match object, and the
# second argument is what replaced that matched object (the substitution). Therefore,
# the 3 puts statements will display new values because of the mutated objects.
