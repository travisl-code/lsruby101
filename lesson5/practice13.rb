# Return new array containing same subarrays
# but ordered by only evaluating odd numbers

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

sorted = arr.sort_by do |subarray|
  subarray.select { |num| num.odd? }
end

p arr
p sorted
