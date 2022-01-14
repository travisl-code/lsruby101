# What is the block's return value in following code?
# How is it determined? What is return of #any? and what does
# it output?

# The return value of each block will be the evaluation of the last expression
# in the block, which is an evaluation of whether `num` (the current integer in
# the collection passed to the block as an arg) to see if it is odd using the
# Integer#odd? method. So the block returns true, false, true for those values
# in the collection, assuming there is no short-circuiting (I can't find answer). 
# The return value of #any will be true because at least one of the expressions returne
# true.

# UPDATE AFTER RUNNING -- it does short-circuit! Only 1 number was displayed by puts.

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
