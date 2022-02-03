# Final values of a and b?

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

p a
p b
p arr

# I was completely wrong below...

# a remains 2. arr[0] += 2 is syntactic sugar for
# arr[0] = arr[0] + 2, which is the Array#[]= method. However,
# we can't mutate the object referenced by a b/c it's an integer.
# It's also not reassignment because we're not referencing a. We're
# only referencing the array arr, with a new object at that index.


# Original response...

# `a` would be 4 because a and arr[0] are two ways to reference
# the same object, and its value is increased by 2 in line 7 (that
# is not reassignment, but an update using the Array#[]= method, which
# is destructive).

# `b` would be 1. It's the same use of the Array#[]= method to 
# modify the value destructively after referencing index 1 of arr
# and the subindex 0 (5 originally), subtracting 4 -- the new value of 
# a from line 7.

# In other words:
# a = 4
# b = [1, 8]
# arr = [4, [1, 8]]
