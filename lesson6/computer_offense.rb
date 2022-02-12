=begin
## Offense for computer in TTT. Offense means
## comp will play a win if it has 2 in a row

Input - Current board state for evaluation (hash)
{1 => ' ', 2 => 'O', 3 => ' ', 4 => 'O', 5=> 'O', 6 => ' '}
Output - Integer corresponding to board position to play

Examples:
find_offensive_position({1 => 'X', 2 => 'O', 3 => ' ', 4 => 'O', 5=> 'O', 6 => ' '})
 --> return 6

Data Structure:
Hash as input representing board state
Array of winning lines
Inegers representing positions (in hash/array)

Algorithm:
Given hash representing board state...
Evaluate Winning Lines. For each line...
  - Count number of comp pieces in line
  - If count is 2, try to obtain key for initial mark
    - If key exists, return it

Code with Intent
=end

def find_offensive_position(brd)
  attack = 0

  WINNING_LINES.each do |line|
    if line.values_at(*line).count(COMPUTER_MARKER) == 2
      win_condition = brd.select {|k, v| line.include?(k) && v == INITIAL_MARKER }.keys
        attack = win_condition.first unless win_condition.empty?
  end
  attack
end
