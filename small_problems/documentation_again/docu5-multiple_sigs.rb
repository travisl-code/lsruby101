# what is output?
a = %w(a b c d e)

# puts a.fetch(7) # nil because out of range WRONG
# I was wrong about this one. Seems the Array#fetch method does not return nil
# if index is out of range; raises exception. It returns the default if one is declared.

puts a.fetch(7, "beats me") # returns "beats me" b/c 7 out of range but default declared
puts a.fetch(7) { |index| index**2 } # 49
