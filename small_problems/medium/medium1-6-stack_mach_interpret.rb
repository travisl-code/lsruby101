=begin

Understand the Problem
----------------------
  Input:  String of multiple 'words' (operations) separated by spaces
  Output: Possible multiple printed values (ints); end value (integer) in register
  (Should output return same object?)

  Rules:
    -- Explicit Requirements --
    9 possible operations to perform
    Operations performed in order
    Register initialized to 0

    -- Implicit Requirements --
    Nothing has to be printed

  Questions:
    1. 
    2. 
    3. 

  Mental Model:
    - Given a string representing a sequence of operations, write a method that sequencially
    performs operations to modify a register value based on the current register and stack values.


Examples
--------
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

  Edge Cases:
  

Data Structure
--------------
String provided as input
Integer output (either for display or for ending register value)
Array for containing the stack
Separate array (maybe?) for containing operations


Algorithm
---------
Initialize register to 0
Initialize stack as empty array
Separate string of operations into array
Iterate through operations array. Use IF for each value...
  - If integer, store as register
  - If push, push register to stack
  - If pop, remove last value from stack, store in register
  - If add, register + popped value from stack
  - If sub, register - popped value from stack
  - If mult, register * popped value from stack
  - If div, register / popped value from stack
  - If mod, register % popped value from stack
  - If print, print register


  Helper Methods:


  
Code with Intent
----------------
=end

def minilang(str)
  register = 0
  stack = []
  operations = str.split

  operations.each do |current|
    return "Invalid operation #{current}" unless VALID_OPERATIONS.include?(current) || is_number?(current)
    begin
      case current
      when 'PUSH' then stack.push(register)
      when 'POP' then register = stack.pop
      when 'PRINT' then puts register
      when 'ADD' then register += stack.pop
      when 'SUB' then register -= stack.pop
      when 'MULT' then register *= stack.pop
      when 'DIV' then register /= stack.pop
      when 'MOD' then register %= stack.pop
      when is_number?(current) then register = current.to_i
      else "Invalid input"
      end
    rescue
      empty_stack(current, stack)
    end
  end

  register
end

# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)

# Further Exploration - write program to be able to pass to minilang
# (3 + (4 * 5) - 7) / (5 % 3) => 8

# p minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV')

# Futher Exploration - error handling
VALID_OPERATIONS = %w(PUSH POP PRINT ADD SUB MULT DIV MOD)

def is_number?(n)
  n.to_i.to_s == n
end

def empty_stack(operation, stack)
  puts "Unable to perform #{operation} on empty stack: #{stack}" if stack.empty?
end

p minilang('Hi')
p minilang('5 DIV')
p minilang('7 PUSH 3 ADD PRINT DIV')
