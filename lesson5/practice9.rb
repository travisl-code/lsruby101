# Return new array with subarrays ordered (alpha or numerically
# as appropriate) in descending order

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
new_arr = arr.map do |subarray|
  subarray.sort do |a, b|
    b <=> a
  end
end

p new_arr
