# Nondestructively return array identical in structure
# with integers incremented by 1

x = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_struct = x.map do |hash|
  new_hash = {}
  hash.map do |k,v|
    new_hash[k] = v + 1
  end
  new_hash
end

p x
p new_struct

# Alternate method...
new2 = x.map do |hash|
  hash.each_with_object({}) do |(k, num), hsh|
    hsh[k] = num + 1
  end
end

p x
p new2
