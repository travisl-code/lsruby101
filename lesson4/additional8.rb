# What happens when modifying array while iterating?
# What would be output of this?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# First iteration, index 0 (1) is passed to the block as number, and is printed.
# It's then removed from the array destructively by the Array#shift method.
# The next iteration, index 1 (NOW 3 -- not 2) is printed and removed. 
# Each time the array is modified during iteration, the indexes shift.


# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# This time, index 0 (1) passed to block as number and printed (like the previous time).
# Then Array#pop destructively removes the last element (4 at index 3) in the array. Next iteration happens,
# and then pop removes the last element again (now 3 at index 2). Then there is nothing else
# to iterate through. I'm not sure here if iteration continues -- it may stop since it sees
# the end of the array. Or if it initialized the times to loop at the beginning of the loop, then
# it will iterate twice more over nil values (Ruby treats index out of range as nil). I think the 
# first option is most likely.

# Update after testing -- option 1 was right!
