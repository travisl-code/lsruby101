# what will this print?
def my_method(a, b=2, c=3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Ruby assigns `4` to `a`, and then `6` to `d`; it then assigns
# left to right filling in defaults. So that means `5` is assigned
# to `b` and then `c` uses its default `3` value.
# [4, 5, 3, 6]