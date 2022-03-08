# Fix error; make sure login works as expected
# The main error is a problem with variable scope. The variable password is
# initialized on line 1 as nil. The standalone if condition (not in the verify_password
# method) executes its block b/c !password evaluated true. Setting password
# in the set_password method does not affect the password variable outside of that
# method. We have to use the return value of the method. Inside the verify_password
# method, there's another scope problem when the method tries to evaluate 
# input == password. We have to pass password to the method as an argument for that comparison
# to work.

=begin
password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  set_password
end

verify_password
=end

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  # password = new_password #not needed
end

def verify_password(pwd)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == pwd
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)
