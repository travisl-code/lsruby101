# Given array of nums, use until loop to print each
numbers = [7, 9, 13, 25, 18]

until numbers.size == 0
  puts numbers.shift
end

p numbers

# Could have non-destructively used numbers[index] with a count variable
