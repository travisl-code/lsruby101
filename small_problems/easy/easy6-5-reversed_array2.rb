# Like previous exercise, except don't modify the original array.

def arr_reverse(array)
  new_array = []
  array.size.times do |index|
    new_array.prepend(array[index])
  end

  new_array
end

# p arr_reverse([1,2,3,4]) # == [4,3,2,1]          # => true
# p arr_reverse(%w(a b e d c)) # == %w(c d e b a)  # => true
# p arr_reverse(['abc']) # == ['abc']              # => true
# p arr_reverse([]) # == []                        # => true

# Further Exploration 1 - Enumerable#inject
def arr_reverse2(array)
  array.inject([]) {|memo, item| memo.prepend(item) }
end

p arr_reverse2([1,2,3,4]) # == [4,3,2,1]          # => true
p arr_reverse2(%w(a b e d c)) # == %w(c d e b a)  # => true
p arr_reverse2(['abc']) # == ['abc']              # => true
p arr_reverse2([]) # == []                        # => true


# Further Exploration 2 - Enumerable#each_with_object
def arr_reverse3(array)
  array.each_with_object([]) { |el, a| a.prepend(el) }
end

# p arr_reverse3([1,2,3,4]) # == [4,3,2,1]          # => true
# p arr_reverse3(%w(a b e d c)) # == %w(c d e b a)  # => true
# p arr_reverse3(['abc']) # == ['abc']              # => true
# p arr_reverse3([]) # == []                        # => true
