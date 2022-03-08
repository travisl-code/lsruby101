# Modify for HEY YOU
=begin
Problem with the code below is that it creates a new Array object with the
String#chars method, so the elements of the Array are modified in place, not the string
object itelf.

def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'
=end

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'
