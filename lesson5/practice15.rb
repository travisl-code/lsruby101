# Return array containing only hashes where 
# all integers are even

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# This returns only the HASHES with all even numbers
arr2 = arr.select do |hash|
  hash.all? do |(k,v)|
    v.all? { |num| num.even? }
  end
end

# p arr2



# Keeping key-value pairs where all ints even (so we're
# considering the k-v pairs instead of just the full hash)

evens = []
arr.each do |hash|
  temp = {}

  hash.each do |k, v|
    if v.all? { |num| num.even? }
      temp[k] = v
    end
  end
  evens << temp unless temp.empty?
end

p evens
