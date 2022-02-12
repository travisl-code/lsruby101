require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
GAMES_TO_WIN = 5

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square: #{joinor(empty_squares(brd))}")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, not a valid choice"
  end

  brd[square] = PLAYER_MARKER
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def joinor(arr, delimiter=', ', sep_word='or')
  result = ''
  if arr.length == 1
    result = arr[0].to_s
  elsif arr.length == 2
    result = "#{arr[0]} #{sep_word} #{arr[1]}"
  elsif arr.length > 2
    result = arr.join(delimiter)
    result = result.insert(-2, "#{sep_word} ")
  end
  result
end

def update_score!(brd, score)
  case detect_winner(brd)
  when 'Player' then score[:player] += 1
  when 'Computer' then score[:computer] += 1
  else score[:ties] += 1
  end
end

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

def find_first_turn(score)
  loop do
    prompt "Who should make the first move? (player, computer, random)"
    answer = gets.chomp
    case answer.downcase
    when 'player' then break score.keys[0]
    when 'computer' then break score.keys[1]
    when 'random' then break score.keys.slice(0, 2).sample
    else prompt "Not a valid choice."
    end
  end
end

def switch_turn(turn)
  turn == :player ? :computer : :player
end

def place_piece!(turn, brd)
  player_places_piece!(brd) if turn == :player
  optimal = find_optimal_position(brd)
  computer_places_piece!(brd, optimal) if turn == :computer
end

prompt "Welcome to Tic Tac Toe. First to #{GAMES_TO_WIN} wins!"
sleep 2

loop do
  score = { player: 0, computer: 0, ties: 0 }

  loop do
    board = initialize_board
    display_board(board)

    turn = find_first_turn(score)

    loop do
      display_board(board)
      place_piece!(turn, board)
      display_board(board)

      break if someone_won?(board) || board_full?(board)
      turn = switch_turn(turn)
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end

    update_score!(board, score)
    break if score[:player] == GAMES_TO_WIN || score[:computer] == GAMES_TO_WIN
    prompt "Current score... Player: #{score[:player]}," \
           "Computer: #{score[:computer]}, Tie: #{score[:ties]}"
    sleep(2)
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe!"
