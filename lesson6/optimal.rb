def find_optimal_position(brd)
  optimal_move = []

  optimal_move << find_offensive_position(board)
  optimal_move << find_defensive_position(board)

  optimal_move.first unless optimal_move.empty? then 0
end