# What is return value of reject? Why?

# Per ruby docs, it looks like the Enumerable#reject method
# is essentially the #select method but for falsey returns. In
# the case of the code in this problem, `puts` always returns nil,
# so since that's the last expression, all 3 elements will return 
# falsey (nil is falsey), so the return array will be [1, 2, 3]

[1, 2, 3].reject do |num|
  puts num
end
