# prints all String class methods, and Object methods (including
# methods from BasicObject class and Kernel module)
s = 'abc'
puts s.public_methods.inspect

# How to limit it to just the String# class methods?
puts s.public_methods(all=false).inspect
