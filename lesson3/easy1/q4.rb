# difference between delete and delete_at

numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) # deletes value at index 1 (2)
puts numbers
# Important note: return value is the deleted value (2)

numbers = [1, 2, 3, 4, 5]
numbers.delete(1) # deletes value of 1 (index 0)
puts numbers
# Returned value again is the deleted value (1)
