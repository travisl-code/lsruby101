# What is return value of select? Why?
# The retun will be [1, 2, 3] because the last expression in the block
# passed to Enumerable#select is what is evaluated for its truthiness. In this
# case, the last expression is "hi", which is a string value, which will 
# evaluate to true on each iteration.

p [1, 2, 3].select do |num|
  num > 5
  'hi'
end
