# For each collection with value 3, change it to 4

arr1 = [1, [2, 3], 4]
# ...using index assignment
arr1[1][1] = 4
p arr1

# ...using iteration (note: comment out previous problem)
mod1 = arr1.map do |item|
  if item.is_a?(Array)
    item.map do |num|
      num == 3 ? num + 1 : num
    end
  else
    item
  end
end

p mod1

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# ...using iteration/transformation:
mod2 = arr2.map do |element|
  element.to_s.to_i == element ? element + 1 : element
end

p mod2

# ...using assignment
arr2[-1] = 4
p arr2


hsh1 = {first: [1, 2, [3]]}
# ...using iteration:
mod3 = hsh1.map do |k, v|
  hsh1[k] = v.map do |item|
      if item.to_s.to_i == item
        item
      else
        item.map {|i| i += 1}
      end
  end
end

p mod3

# ...using assignment
hsh1[:first][2][0] = 4
p hsh1

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

# ...using update
hsh2[['a']][:a][2] = 4
p hsh2
