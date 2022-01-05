# how to display 2 lowest numbers in array?
a = [5, 9, 3, 11]
puts a.min

puts a.min(2)
# Ruby doesn't use Multiple Inheritence (inheriting from multiple parent classes). 
# Instead, it uses mixins. The Enumerable class is a mixin and contains the min documentation.
