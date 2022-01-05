# As a convention, method names with ! signal they mutate the caller,
# so this should indicate its purpose
def tricky_method!(a_string_param, an_array_param)
  a_string_param << "rutabaga"
  an_array_param << "rutabaga"
end

# Renaming the defined method and giving it non-destructive methods
# can make it more obvious what it does
def get_new_items(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]

new_string, new_array = get_new_items(my_string, my_array)
puts "New string: #{new_string}"
puts "New array: #{new_array}"

tricky_method!(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
