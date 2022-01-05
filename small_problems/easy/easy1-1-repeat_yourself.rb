# Expected Input:
#    - string and positive integer x
# Expected Output:
#   - String printed x times

# Problem domain:
#   - positive int (whole numbers only)

# Implicit Reqs?
#   - N/a

# Questions?
#   - How are args passed? Separate string, separate int (not array)

# Mental Model:
#   - Define method that takes 2 args, string and positive integer,
#   and prints the string integer many times

# Examples:
#   - input "hello", 3
#   - output:
#   hello
#   hello
#   hello

#   - input "hello", 0
#   - output: 

# Data Structure:
# Method, string, int, block

# Algorithm:
# Using integer x passed to method, iterate x number of times
# - each iteration should print the string passed to method

# Code:
def repeat(string, integer)
  integer.times { puts string } if integer > 0
end

repeat("hello", 3)
repeat("this is a test", 2)
repeat("test", -1)
repeat("testing again", 0)
