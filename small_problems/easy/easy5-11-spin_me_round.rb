# Given this method, will it return the same object as
# the one passed to the method, or a different object?

# This method should not mutate the original object. The string is passed 
# in as an argument, but a new Array object is created when the String#split
# method is called. I believe each string will then be its own new object.
# Then the each method is called on the collection of String
# objects contained in the array, and the destructive reverse! method is called
# on these objects. They're finally joined back into a string through the 
# Array#join method, but this itself creates a new String object.
x = "hello world"
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

p "#ID #{x.object_id}: #{spin_me(x).object_id}"

# Tested and validated with the above.
