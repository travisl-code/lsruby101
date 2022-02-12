=begin
## Bonus feature for TTT to update score

Input - hash with 3 k-v pairs
Output - Mutated hash with updated values

Examples:
update_score({player: 0, computer: 0, ties: 0}) # => score = {player: 0, computer: 0, ties: 1}

Data Structures:
Hash for input.
Strings and symbol conversion using existing methods

Algorithm:
Detect the winner
  - if string is Player, increment player value
  - if string is Computer, increment computer value
  - else increment tie

Code with Intent
=end

score = {player: 0, computer: 0, ties: 0}

def update_score!(brd, score)
  case detect_winner(board)
  when 'Player' then score[:player] += 1
  when 'Computer' then score[:computer] += 1
  else score[:tie] += 1
  end
end
