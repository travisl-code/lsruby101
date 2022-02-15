## Twenty-one game (like Black Jack)
require 'pry'

# Constants in use as part of Bonus Feature 5
HIGH = 21
ACE_HIGH = 11
ACE_LOW = 1
DEALER_BREAK = 17
GAMES_TO_WIN = 5

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_shuffled_deck
  deck = []
  card_arr = (2..10).to_a.map(&:to_s).concat(['jack', 'queen', 'king', 'ace'])
  suits_arr = %w(spades diamonds clubs hearts)

  suits_arr.each do |suit|
    deck << card_arr.map { |card| "#{card} of #{suit}" }
  end

  deck.flatten.shuffle
end

def evaluate_hand(hand)
  values = hand.map { |card| card.split.first }
  aces = []
  sum = 0

  values.each do |value|
    if ('2'..'10').include?(value) then sum += value.to_i
    elsif %w(jack queen king).include?(value) then sum += 10
    else aces << value
    end
  end

  sum += evaluate_ace_value(aces, sum).sum unless aces.empty?
  sum
end

def evaluate_ace_value(ace_arr, hand_value)
  ace_values = []
  ace_arr.each do |_|
    if (ace_values.sum + hand_value) <= (HIGH - ACE_HIGH)
      ace_values << ACE_HIGH
    else
      ace_values << ACE_LOW
    end
  end

  if ace_values.sum + hand_value > HIGH
    if ace_values.index(ACE_HIGH)
      ace_values[ace_values.index(ACE_HIGH)] = ACE_LOW
    end
  end

  ace_values
end

def deal_cards!(deck, to_deal=1)
  case to_deal
  when 1 then deck.shift
  else deck.shift(to_deal)
  end
end

def joinand(arr, delimiter=', ', sep_word='and')
  case arr.length
  when 1 then arr[0].to_s
  when 2 then "#{arr[0]} #{sep_word} #{arr[1]}"
  else
    arr.join(delimiter)
  end
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

def busted?(cards)
  cards > HIGH
end

def evaluate_winner(player, dealer)
  return 'Dealer' if busted?(player)
  return 'Player' if busted?(dealer)
  return 'Dealer' if dealer >= player
  return 'Player' if player > dealer
end

def update_score(score, winner)
  score[winner] += 1
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

def display_hand(player, hand, value, verb='has')
  prompt "#{player} #{verb}: #{joinand(hand)} (#{value})"
end

# For bonus feature 5, but I still offer early quit after games
def multigame_winner?(score)
  !!score.select { |_, score| score == GAMES_TO_WIN }.keys.first
end

loop do
  system 'clear'
  prompt "Welcome to Twenty-One! First to #{GAMES_TO_WIN} wins!"
  sleep(2)
  score = { 'Player' => 0, 'Dealer' => 0 }

  loop do
    winner = loop do
      system 'clear'
      deck = initialize_shuffled_deck

      player_hand = deal_cards!(deck, 2)
      # Bonus feature 1 already in place by storing total as variable
      player_total = evaluate_hand(player_hand)

      dealer_hand = deal_cards!(deck, 2)
      dealer_total = evaluate_hand(dealer_hand)

      # Not using `display_hand` to hide 2nd card...
      prompt "Dealer has: #{dealer_hand.first} and unknown card"
      sleep(3)

      # Player's turn
      loop do
        system 'clear'
        display_hand(score.keys[0], player_hand, player_total)
        break if busted?(player_total)

        choice = hit_or_stay
        break if choice == 'stay'
        player_hand.append(deal_cards!(deck))
        # Bonus feature 1 requires re-evaluating totals after hitting
        player_total = evaluate_hand(player_hand)
      end

      player_bust = busted?(player_total)

      # Dealer's turn
      loop do
        system 'clear'
        # Added 4th break clause `&& dealer_total >= player_total` so the
        # dealer will keep trying to beat player's score
        break if player_bust || busted?(dealer_total) ||
                (dealer_total >= DEALER_BREAK && dealer_total >= player_total)
        prompt "Dealer hits!"

        dealer_hand.append(deal_cards!(deck))
        dealer_total = evaluate_hand(dealer_hand)
        display_hand(score.keys[1], dealer_hand, dealer_total)
        sleep(2)
      end

      # I have met Bonus Feature 3 already by nesting the entire game in
      # a loop, with a 2nd loop controlling each game, and a 3rd loop
      # controlling the player/deal turns. So instead, I extracted the 
      # entire result display into the `display_hand` method. I used
      # this method for result displays instead. EDIT - added the
      # `multigame_winner?` method and implemented a 4th loop to control
      # whether another 5 wins is met.
      display_hand(score.keys[0], player_hand, player_total, 'ends with')
      display_hand(score.keys[1], dealer_hand, dealer_total, 'ends with')

      winner = evaluate_winner(player_total, dealer_total)
      prompt "#{winner} wins!"

      break winner
    end

    update_score(score, winner)
    prompt "Current score... Player: #{score['Player']}, " \
          "Dealer: #{score['Dealer']}"
    sleep(2)
    # My program only executes the play_again? method once, but to answer
    # Bonus Feature 2, the LS solution uses a ternary statement in the
    # first 2 times it's called (this lets you skip to the next iteration
    # of the main game loop if true, or break from the main loop if false).
    # The 3rd time it's called is the last expression of the main loop, so
    # there is no need to use the `next` statement.
    break if multigame_winner?(score)
  end
  break unless play_again?
end

prompt "Thanks for playing Twenty-One!"
