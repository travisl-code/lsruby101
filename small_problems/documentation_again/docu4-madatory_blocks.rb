# Array#bsearch to find first value > 8
a = [1, 4, 8, 11, 15, 19]

p a.bsearch { |x| x > 8 }
# Per documentation, self should be sorted but goes unchecked
