# What is the return value of the following? Why?

# The return will be an array (#map always returns an array). #map
# also always transforms for each iteration. The return of this will
# be [1, nil, nil]. The elements of the collection are passed in as
# as `num` and `num` is evaluated in an if statement to see if it is
# > 1. If yes, `num` is printed with `puts` and nil is returned; else
# the num itself is returned.

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
