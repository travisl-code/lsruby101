# Output of following code?
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)
p answer - 8

# numbers are immutable, so a return value of
# 50 (42 + 8) is assigned to new_answer, but the 
# variable answer was never changed, so 42 - 8 (34)
# is printed using the p method
