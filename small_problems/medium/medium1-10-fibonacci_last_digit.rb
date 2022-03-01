require 'pry'

def fibonacci_last(n)
  result = 0
  start1 = 0
  start2 = 1
  (n - 1).times do
    result = start1 + start2
    start1 = start2
    start2 = result
  end
  result % 10
end

# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4


# Further Exploration - no idea how to improve it intuitively...
# Researched online and found that the 1st 60 final digits are a pattern. Put those into an array
# and then just call modulus 60 on the nth sequence number to get the right index.
def fib_last_big(n)
  result = []
  60.times do |i|
    result << fibonacci_last(i)
  end
  binding.pry
  result[n % 60]
end

p fib_last_big(15)        # -> 0  (the 15th Fibonacci number is 610)
p fib_last_big(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fib_last_big(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fib_last_big(100_001)   # -> 1
p fib_last_big(1_000_007) # -> 3 (this is a 208989 digit number)
p fib_last_big(123456789) # -> 4
p fib_last_big(123_456_789_987_745) # -> 5
