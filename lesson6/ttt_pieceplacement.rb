## Refactoring of piece-placement code/position awareness

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
GAMES_TO_WIN = 5

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

=begin
## Broke out winning lines in separate method; this method will
## be used to find optimal position using win conditions

Input - Hash representing board state
Output - Integer representing a key in the board hash (optimal position)

Examples:
hsh = {1=>' ', 2=>'X', 3=>'X', 4=>'O', 5=>'O', 6=>' ', 7=>' ', 8=>' ', 9=>' '}
win_arr = [[1, 2, 3], [4, 5, 6]]
find_optimal_position(hsh, win_arr) => 6 # 6 is a win for comp, 1 is defensive

Data Structures:
Hash as input
Method call to obtain nested array
Iteration through array and hash

Algorithm:
Set a results variable to 0
Obtain the possible win conditions from WINNING_LINES
Iterate through the win conditions. For each line...
  - Check the values of the hash using line values as keys. Use if else
  - If the hash contains 'O', set results to key with ' ' value
    - Break
  - If the hash contains 'X', set results to key with ' ' value

=end
hsh = { 1 => ' ', 2 => 'X', 3 => 'X', 4 => 'O',
        5 => 'O', 6 => ' ', 7 => ' ', 8 => ' ', 9 => ' ' }
def find_optimal_position(brd)
  results = { attack: 0, defense: 0 }
  win_arr = [[1, 2, 3], [4, 5, 6]]
  win_arr.each do |line|
    if brd.values_at(*line).include?(COMPUTER_MARKER)
      result[:attack] = line.select { |key| brd[key] == INITIAL_MARKER }.first
    elsif brd.values_at(*line).include?(PLAYER_MARKER)
      result[:defense] = line.select { |key| brd[key] == INITIAL_MARKER }.first
    end
  end
  results
end

p find_offensive_position(hsh)

# def test(brd)
#   win_arr = [[1, 2, 3], [4, 5, 6]]
#   result = {attack: 0, defense: 0}

#   win_arr.each do |line|
#     if brd.values_at(*line).include?('O')
#       result[:attack] = line.select {|key| brd[key]==' '}.first
#     elsif brd.values_at(*line).include?('X')
#       result[:defense] = line.select {|key| brd[key]==' '}.first
#     end
#   end
#   result
# end

# p test(hsh)

# find_optimal_position(hsh)

## This showed too many complexity problems in Rubocop
# def find_optimal_position(brd)
#   position = 0
#   WINNING_LINES.each do |line|
#     if brd.values_at(*line).count(COMPUTER_MARKER) == 2
#       position = brd.select do |k, v|
#         line.include?(k) && v == INITIAL_MARKER
#       end.first
#       break
#     elsif brd.values_at(*line).count(PLAYER_MARKER) == 2
#       position = brd.select do |k, v|
#         line.include?(k) && v == INITIAL_MARKER
#       end.first
#       break
#     end
#   end
#   position
# end

=begin
# hsh = {1=>' ', 2=>'X', 3=>'X', 4=>'O', 5=>'O', 6=>' ', 7=>' ', 8=>' ', 9=>' '}
Input - Hash representing board (see above)
Output - Nested array containing lines where a win is possible

Examples:
find_danger_lines(hsh) => [[1, 2, 3], [4, 5, 6]]

Data Structures:
Also have a constant Array containing all possible "winning" lines
Hash input and iteration
Array output

Algorithm:
Given constant of winning lines...
Create an empty array results
Iterate through winning lines. For each line...
  - Check to see if 2 values = computer or player mark AND 1 value = blank mark
    - If true, move into results array

=end
# hsh = {1=>' ', 2=>'X', 3=>'X', 4=>'O', 5=>'O', 6=>' ', 7=>' ', 8=>' ', 9=>' '}
def find_danger_lines(brd)
  results = []
  WINNING_LINES.each do |line|
    vals = brd.values_at(*line)
    if vals.one?(INITIAL_MARKER) &&
       (vals.count(PLAYER_MARKER) == 2 ||
       vals.count(COMPUTER_MARKER) == 2)
      results << line
    end
  end
  results
end

# p find_danger_lines(hsh)

def place_piece!(turn, brd)
  player_places_piece!(brd) if turn == :player
  optimal = find_optimal_position(brd)
  computer_places_piece!(brd, optimal) if turn == :computer
end

=begin
def find_defensive_position(brd)
  defend = 0

  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2
      lose_condition = brd.select do |k, v|
        line.include?(k) && v == INITIAL_MARKER
      end.keys
      defend = lose_condition.first unless lose_condition.empty?
    end
  end

  defend
end

def find_offensive_position(brd)
  attack = 0

  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2
      win_condition = brd.select do |k, v|
        line.include?(k) && v == INITIAL_MARKER
      end.keys
      attack = win_condition.first unless win_condition.empty?
    end
  end
  attack
end

def computer_places_piece!(brd, position)
  if position != 0
    brd[position] = COMPUTER_MARKER
  elsif empty_squares(brd).include?(5)
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def find_optimal_position(brd)
  optimal_moves = []

  optimal_moves << find_offensive_position(brd)
  optimal_moves << find_defensive_position(brd)

  positions = optimal_moves.select { |num| num != 0 }
  positions.empty? ? 0 : positions.first
end

def place_piece!(turn, brd)
  player_places_piece!(brd) if turn == :player
  optimal = find_optimal_position(brd)
  computer_places_piece!(brd, optimal) if turn == :computer
end

=end
