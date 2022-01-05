# what would be return values?
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

puts bar(foo)

# The bar method is invoked with foo passed as an argument. The foo
# method expects an argument as well and has a default "no" value assigned
# to the locally scoped variable named `param`. However, the last expression 
# of the foo method implicitly returns "yes" and the local `param` variable
# is not used. "yes" is returned by foo, to be used as the argument of the
# method bar (instead of its default local variable also called `param`
# being set to "no").

# The ternary condition in bar is used to see if "yes" == "no" (false), so
# "no" is returned by bar.