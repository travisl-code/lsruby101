# How does #take work? Is it destructive? How to find out?

# Enumerable#take has one required argument (n), and the return is
# the first n elements from the collection. The return is an array. 
# This much info can be found from the Ruby documentation. However, 
# testing if the method is destructive is most easily done in irb, which
# shows it is not destructive:

# 3.0.0 :022 > arr = [1, 2, 3, 4, 5]
#  => [1, 2, 3, 4, 5]
# 3.0.0 :023 > arr.take(2)
#  => [1, 2]
# 3.0.0 :024 > arr
#  => [1, 2, 3, 4, 5]


arr = [1, 2, 3, 4, 5]
arr.take(2)
