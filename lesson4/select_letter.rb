# Take string, return string of letters specified
question = 'How many times does a particular character appear in this sentence?'

def select_letter(string, character)
  count = 0
  selected = ''

  loop do
    selected << string[count] if string[count] == character
    count += 1
    break if count >= string.size
  end
  selected
end

p select_letter(question, 'a')
p select_letter(question, 'e')
