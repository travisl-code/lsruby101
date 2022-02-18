## Twenty-one game (like Black Jack)

HIGH = 21
ACE_HIGH = 11
ACE_LOW = 1
DEALER_BREAK = 17
GAMES_TO_WIN = 5

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  deck = []
  # { suit: 'Hearts', value: 'King', points: 10 } => each card is hash
  card_arr = (2..10).to_a.map(&:to_s).concat(['Jack', 'Queen', 'King', 'Ace'])
  suits_arr = %w(Spades Diamonds Clubs Hearts)
  suits_arr.each do |suit|
    card_arr.each do |card|
      card_hsh = { suit: suit, value: card, points: default_points(card) }
      deck << card_hsh
    end
  end
  deck.shuffle
end

def default_points(card_value)
  if ('2'..'10').include?(card_value) then card_value.to_i
  elsif %w(Jack Queen King).include?(card_value) then 10
  else ACE_HIGH
  end
end

def deal_cards!(deck, to_deal=1)
  case to_deal
  when 1 then deck.shift
  else deck.shift(to_deal)
  end
end

def join_cards(cards)
  cards.map { |card| "#{card[:value]} of #{card[:suit]}" }.join(', ')
end

def display_hand(cards, player, verb='has')
  points = card_points(cards)
  prompt "#{player} #{verb}: #{join_cards(cards)} (#{points})"
end

def hit_or_stay
  answer = nil
  loop do
    prompt "Do you want to hit or stay?"
    answer = gets.chomp.downcase
    break if answer == 'hit' || answer == 'stay'
    prompt "Not a valid input."
  end
  answer
end

def card_points(cards)
  cards.reduce(0) { |sum, card| sum + card[:points] }
end

def ace_lower!(ace)
  ace[:points] = ACE_LOW
end

def busted?(card_points)
  card_points > HIGH
end

# def evaluate_winner(player, dealer)
#   return 'Dealer' if dealer >= player
#   return 'Player' if player > dealer
# end

def evaluate_winner(player, dealer)
  if busted?(player) then 'Dealer'
  elsif busted?(dealer) then 'Player'
  elsif player > dealer then 'Player'
  else 'Dealer'
  end
end

def update_score!(score, winner)
  score[winner] += 1
end

def display_score(score)
  prompt "Current score... Player: #{score['Player']}, " \
          "Dealer: #{score['Dealer']}"
end

def play_again?
  continue = false
  loop do
    prompt "Play again? (y or n)"
    answer = gets.chomp.downcase
    continue = true if answer.start_with?('y')
    break if answer.start_with?('y') || answer.start_with?('n')
    prompt 'Not a valid input'
  end
  continue
end

def multigame_winner?(score)
  !!score.select { |_, wins| wins == GAMES_TO_WIN }.keys.first
end

prompt "Welcome to Twenty-One! First to #{GAMES_TO_WIN} wins!"
sleep(2)
score = { 'Player' => 0, 'Dealer' => 0 }

loop do
  system 'clear'
  deck = initialize_deck
  player_cards = deal_cards!(deck, 2)
  player_points = card_points(player_cards)

  dealer_cards = deal_cards!(deck, 2)
  dealer_points = card_points(dealer_cards)

  prompt "Dealer has: #{dealer_cards.first[:value]} of " \
        "#{dealer_cards.first[:suit]} and unknown card."

  # Player turn
  loop do
    high_aces = player_cards.select { |card| card[:points] == ACE_HIGH }
    ace_lower!(high_aces.first) if !high_aces.empty? && busted?(player_points)

    player_points = card_points(player_cards)
    display_hand(player_cards, score.keys[0])
    break if busted?(player_points)

    choice = hit_or_stay
    break if choice == 'stay'
    player_cards.append(deal_cards!(deck))
    player_points = card_points(player_cards)
  end

  player_bust = busted?(player_points)

  # Dealer turn
  loop do
    high_aces = dealer_cards.select { |card| card[:points] == ACE_HIGH }
    ace_lower!(high_aces.first) if !high_aces.empty? && busted?(dealer_points)

    dealer_points = card_points(dealer_cards)
    display_hand(dealer_cards, score.keys[1])

    break if busted?(dealer_points) || player_bust ||
             (dealer_points >= DEALER_BREAK && dealer_points >= player_points)

    prompt "Dealer hits!"
    sleep(2)
    dealer_cards.append(deal_cards!(deck))
    dealer_points = card_points(dealer_cards)
  end

  display_hand(player_cards, score.keys[0], 'ends with')
  display_hand(dealer_cards, score.keys[1], 'ends with')

  winner = evaluate_winner(player_points, dealer_points)
  update_score!(score, winner)
  display_score(score)
  sleep(5)

  break if multigame_winner?(score) || !play_again?
end

prompt "Thanks for playing Twenty-One!"
