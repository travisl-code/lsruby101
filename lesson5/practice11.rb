# Use method combinations to return new array
# identical in structure to original containing only
# ints that are multipls of 3

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr2 = arr.map do |subarray|
  subarray.select do |num|
    num % 3 == 0
  end
end

p arr
p arr2
