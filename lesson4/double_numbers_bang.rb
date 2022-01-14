# Create a destructive double_numbers! method
def double_numbers!(array)
  count = 0
  loop do
    array[count] *= 2
    count += 1
    break if count >= array.size
  end
end

my_numbers = [1, 4, 3, 7, 2, 6]

double_numbers!(my_numbers)
p my_numbers
