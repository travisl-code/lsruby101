# What is return value of this statement? Why?

# This is a chained method, so you have to examine the sequence of 
# return values. The first method, Array#pop, destructively removes the
# last element from the array ('caterpillar') and returns this string value. 
# The next method in the chained sequence is String#size (because we're
# operating on the returned String object). This returns an Integer of how
# many characters are in the string -- 11

['ant', 'bear', 'caterpillar'].pop.size
