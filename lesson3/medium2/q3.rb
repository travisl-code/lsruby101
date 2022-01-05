# what will display and why?

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# The first puts statement will display the original string pumpkin. It does this
# because the referenced value is passed to the method, but += is Ruby syntactical
# sugar for a_string_param = a_string_param + "rutabaga", and this is simply variable 
# reassignment with concatenation -- non mutating.

# However, the 2nd puts statement will display now TWO elements (one per line) of the 
# array. This is because the << sign is actually a method call that has mutating properties,
# so rutabaga is appended to the end of the array.

# Correction... the array itself is printed for the 2nd puts statement; puts array displays
# elements on separate lines, but the array concatenated with #{} does not.