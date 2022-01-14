# Double numbers that have an odd index
my_numbers = [1, 4, 3, 7, 2, 6]

def double_odd_numbers!(array)
  count = 0
  loop do
    if count.odd?
      array[count] *= 2
    end
    count += 1
    break if count >= array.size
  end
  array
end

double_odd_numbers!(my_numbers)
p my_numbers

# Just realized I misread and mutated caller...
