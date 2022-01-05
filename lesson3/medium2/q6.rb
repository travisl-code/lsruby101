# simply without changing return value?
def color_valid(color)
  if color == 'blue' || color == 'green'
    true
  else
    false
  end
end

def color_valid?(color)
  color == "blue" || color == "green"
end

my_color = "blue"
my_other_color = "red"

p color_valid(my_color)
p color_valid?(my_color)

p color_valid(my_other_color)
p color_valid?(my_other_color)
