# Return array containing colors of fruits and
# sizes of vegetables.
# Sizes should be uppercase; colors capitalized

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

arr = []
hsh.each do |name, hash_v|
  if hash_v[:type] == 'fruit'
    arr << hash_v[:colors].map { |color| color.capitalize }
  else
    arr << hash_v[:size].upcase
  end
end

p arr
