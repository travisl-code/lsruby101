# Don't remove code; get expected output of reverse numerical order
# This one was difficult, but I think it has to do with the binding priority between
# different objects. There is stronger binding between p and arr than there is between
# the Arrary#sort and do...end block. This can be resolved by enclosing the entire 
# #sort method and its block in parentheses. It could probably also work to use {} instead
# of do...end because the curly braces have a higher binding priority than do...end.

=begin
arr = ["9", "8", "7", "10", "11"]
p arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 
=end

require 'pry'

arr = ["9", "8", "7", "10", "11"]
p (arr.sort do |x, y|
    # binding.pry
    y.to_i <=> x.to_i
  end)



# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 
