# result of call?
def rps(fist1, fist2)
  if fist1 == 'rock'
    (fist2 == 'paper') ? "paper" : "rock"
  elsif fist1 == 'paper'
    (fist2 == 'scissors') ? 'scissors' : 'paper'
  else
    (fist2 == 'rock') ? 'rock' : 'scissors'
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
#                 (paper         ,      rock)
#                 paper                                    , rock
#                 paper

# This will output paper but the puts method will return nil. 
# It can be difficult tracking parentheses.