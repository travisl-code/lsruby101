=begin
## Determining turn for TTT game

Input - User input from prompt for decision of who takes turn first
Output - player or computer selection (string or symbol)

Examples:

Data structure:
Can use score hash keys for determination of order

Algorithm
Given a hash of 3 k-v pairs
Separate the keys into an array
Use only first 2 values from array
Return one randomly

=end
def prompt(msg)
  puts "=> #{msg}"
end

def whose_turn(score)
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

=begin
## Also need modularization of piece placement

Input - Symbol of whose turn it is, board state
Output - Method invocation of player vs computer turn

Examples:
place_piece(:player, board) => updated board

Data Structures:
Symbol from score hash (:player or :computer)
Hash board

Algorithm:
If player passed in, invoke method for player piece
If computer passed in, invoke method for computer piece

=end

def place_piece(turn, brd)
  player_places_piece!(brd) if turn == :player
  computer_places_piece!(brd) if turn == :computer
end
