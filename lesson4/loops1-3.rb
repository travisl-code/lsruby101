# Modify to iterate 5 times instead of once
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

# Further Explorations - moving break before incrementing iterations?
# Could change from > 5 to >= to 5 because the evaluation
# happens before the increment.

it2 = 1
loop do
  puts "Iterations = #{it2}"
  break if it2 >= 5
  it2 += 1
end
