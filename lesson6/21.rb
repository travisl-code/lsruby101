## Twenty-one game (like Black Jack)
require 'pry'

HIGH = 21
ACE_HIGH = 11
ACE_LOW = 1
DEALER_BREAK = 17

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

system 'clear'
prompt "Welcome to Twenty-One!"
sleep(2)
score = { 'Player' => 0, 'Dealer' => 0 }

loop do
  winner = loop do
    system 'clear'
    deck = initialize_shuffled_deck

    player_hand = deal_cards!(deck, 2)
    player_total = evaluate_hand(player_hand)

    dealer_hand = deal_cards!(deck, 2)
    dealer_total = evaluate_hand(dealer_hand)

    prompt "Dealer has: #{dealer_hand.first} and unknown card"
    sleep(3)

    loop do
      system 'clear'
      prompt "You have: #{joinand(player_hand)} (#{player_total})"
      break if busted?(player_total)

      choice = hit_or_stay
      break if choice == 'stay'
      player_hand.append(deal_cards!(deck))
      player_total = evaluate_hand(player_hand)
    end

    player_bust = busted?(player_total)

    loop do
      system 'clear'
      break if player_bust || busted?(dealer_total) ||
               dealer_total >= DEALER_BREAK
      prompt "Dealer hits!"

      dealer_hand.append(deal_cards!(deck))
      dealer_total = evaluate_hand(dealer_hand)
      prompt "Dealer has #{joinand(dealer_hand)} (#{dealer_total})"
      sleep(2)
    end

    prompt "Player ends with #{joinand(player_hand)} (#{player_total})"
    prompt "Dealer ends with #{joinand(dealer_hand)} (#{dealer_total})"

    winner = evaluate_winner(player_total, dealer_total)
    prompt "#{winner} wins!"

    break winner
  end

  update_score(score, winner)
  prompt "Current score... Player: #{score['Player']}," \
         "Dealer: #{score['Dealer']}"

  break unless play_again?
end

prompt "Thanks for playing Twenty-One!"
