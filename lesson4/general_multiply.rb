#  Multiply each number in array by any number
my_numbers = [1, 4, 3, 7, 2, 6]

def general_multiply(array, number)
  count = 0
  multiplied = []
  loop do
    multiplied.push(array[count] * number)
    count += 1
    break if count >= array.size
  end
  multiplied
end

p general_multiply(my_numbers, 3)
