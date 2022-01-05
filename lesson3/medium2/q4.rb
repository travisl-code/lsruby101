# what will display?
def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = 'pumpkins'
my_array = ['pumpkins']
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# First puts statement will display the concatenated string with rutabaga.
# The << method is mutating. Ruby initializes a variable that points to a 
# string object with the value pumpkins. The referenced value is passed to
# the method. Ruby creates a new local variable name that points to the same
# object (same reference). << changes the value stored by the object, but not
# change the object itself, thus mutating the string.

# The second puts statement follows the same process until the = sign performs
# variable reassignment. The locally scoped an_array_param now references a new
# array object with a new value, and the original array does not change.