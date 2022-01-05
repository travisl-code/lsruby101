# Change method to account for 0 and negatives
def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# Bonus - purpose of number % divisor == 0:
# The modulus is used to ensure that we keep integers only
# that are evenly divisible (no fractional numbers)

# Bonus 2 - purpose of the `factors` expression before end?
# This expression will be the last expression evaluated so that the
# array is implicitly returned