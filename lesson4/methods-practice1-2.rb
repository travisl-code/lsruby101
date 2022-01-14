# How does count treat block's return value? How to find out?

Per Ruby documentation (this is how you find out when you don't know),
the block's return value is an evaluation of truthiness, and the count
value is how many elements in the collection return truthy (in this
example, 2 elements -- ant and bat -- so the return will be 2).

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
