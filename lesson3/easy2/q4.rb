# 'Dino' appears in string?
advice = "Few things in life are as important as house training your pet dinosaur."

p /Dino/.match(advice)

# or...
p advice.include?("Dino")

# or...
p advice.match?("Dino")