# What is return value of map in this code? Why?

# This one is complex... For the first iteration, the if block
# is not executed because 'ant' is not > 3 characters in length.
# The 2nd iteration's if statement evaluates true so the code
# executes. I believe that, if an if statement doesn't run, it
# returns nil, and map always transforms. And the return is an array.
# So the first returned value will be nil, and the second will be 
# the value from the 2nd key-value pair, 'bear'.

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
