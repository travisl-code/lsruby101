if false
  greeting = "hello world"
end

p greeting

# The code under the if false statement will never execute because false
# is always false. However, I think we saw from another example that even if 
# it does not execute, variables initialized under an unexecuted conditional
# block will still get initialized, but they will contain the value of nil.
