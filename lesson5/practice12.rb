# Don't use Array#to_h. Return a hash where key
# is first item in each subarray and value is 
# the 2nd item

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

new_hash = arr.each_with_object({}) do |element, hsh|
  hsh[element[0]] = element[1]
end

p arr
p new_hash
