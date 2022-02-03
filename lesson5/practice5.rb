# total age of male members

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total = munsters.inject(0) do |memo, (k,v)|
  v["gender"] == 'male' ? memo + v['age'] : memo
end

p total

males = munsters.map do |k, v|
  v['gender'] == 'male' ? v['age'] : nil
end

p males.delete_if {|el| el == nil}.sum
