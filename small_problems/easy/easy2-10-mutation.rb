# What will print and why?
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# => Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo
# An Array object is created containing names (array1 references it), and a 
# 2nd Array object is created (array2 references it), but it is left empty.
# Then each string object from array1 is copied into array2 -- I THINK (this is my
# only confusion -- validated below). Then we iterate through the string objects
# in array1 again and those objects are beginning with C or S are mutated using
# the String#upcase! method. Because the same objects are in array2, they are 
# also mutated.
# 3.0.0 :007 > a
#  => ["one", "two", "three"]
# 3.0.0 :008 > a2
#  => ["four", "five"]
# 3.0.0 :009 > a.each {|x| a2 << x }
#  => ["one", "two", "three"]
# 3.0.0 :010 > a
#  => ["one", "two", "three"]
# 3.0.0 :011 > a2
#  => ["four", "five", "one", "two", "three"]
# 3.0.0 :012 > a2[-1].object_id
#  => 260
# 3.0.0 :013 > a[-1].object_id
#  => 260
