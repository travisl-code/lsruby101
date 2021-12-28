# Shorten sentence:
advice = "Few things in life are as important as house training your pet dinosaur."

# slice! mutates
advice2 = advice.slice!(/^.+important as /)
puts advice

# slice = STRING#[] and can assign to new variable
puts advice2.slice(0..8)
puts advice
