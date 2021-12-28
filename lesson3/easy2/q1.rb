# spot present?
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages['Spot']

# bonus other 2 methods?
p ages.include?('Spot')
p ages.select {|k,v| k == 'Spot'}

# Important: pay attention to instructions... only want to see 
# IF the key is there (true/false), not return value.