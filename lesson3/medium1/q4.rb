# Two buffer methods... what's the difference?
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# The primary difference between these 2 methods is that the first 
# uses the ARRAY#push (<<) method to add elements to the array object 
# destructively. It also uses the destructive shift method to modify
# the object further, and returns the array as the same original object.
# On the other hand, the second method uses variable assignment to create
# a new variable using the passed in array with the new element to add.