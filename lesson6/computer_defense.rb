=begin
## Computer not always random moves. Block
## immediate threats of 2 squares

Input - Current board positions
Output - New board position taken

Examples:

Data Structures:
Evaluation of win conditions in array
Board state as hash

Algorithm:
Given the current board state...
Extract current positions of player markers - {1: 'X', 2: 'X'}
Iterate through Winning Lines. For each line... [1, 2, 3]
  - Set player_marks_in_line variable to 0
  - Set initial_mark variable to 0
  - Iterate through Line. For each number...
    - See if number is a key in the player_marks hash
      - Increment marks_in_line variable if true
      - Set value of initial_mark to number
  - If player_marks_in_line is 2, computer marks initial_mark


Code with intent...
=end

def computer_defend!(brd)
  player_marks = brd.select { |_, v| v == PLAYER_MARKER }
  WINNING_LINES.each do |line|
    player_marks_in_line = 0
    initial_mark = 0

    line.each do |num|
      player_marks.keys.include?(num) ? player_marks_in_line += 1 : initial_mark = num
    end

    if player_marks_in_line == 2 && empty_squares(brd).include?(initial_mark)
      brd[initial_mark] = COMPUTER_MARKER
    end
  end
end

## Modifying to evaluate defense needed

def find_defensive_position(brd)
  defend = nil
  player_marks = brd.select { |_, v| v == PLAYER_MARKER }
  
  WINNING_LINES.each do |line|
    player_marks_in_line = 0
    initial_mark = 0

    line.each do |num|
      player_marks.keys.include?(num) ? player_marks_in_line += 1 : initial_mark = num
    end

    if player_marks_in_line == 2 && empty_squares(brd).include?(initial_mark)
      defend = initial_mark
    end
  end

  defend
end

def computer_places_piece!(brd, position=0)
  unless position == 0
    brd[position] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end


## Trying to decrease lines

def find_defensive_position(brd)
  defend = 0

  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2
      defend = line.select { |num| num == INITIAL_MARKER }.first
    end
  end

  defend
end
