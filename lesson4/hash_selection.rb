# Select k-v pairs where v == 'Fruit'

def select_fruit(hash)
  new_hash = {}
  for key, value in hash
    new_hash[key]=value if value == 'Fruit'
  end
  new_hash
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
