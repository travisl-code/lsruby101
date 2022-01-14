# What does shift do in this code? How to find out?

# Shift removes the first entry from the hash (similar to Array#shift).
# However, the return value is a 2 element array consisting of the key 
# and value. Again, find out by reading Ruby documentation. One other 
# important note is that the Hash#shift (and Array#shift) method is destructive.

hash = { a: 'ant', b: 'bear' }
hash.shift
