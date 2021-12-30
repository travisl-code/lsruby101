# Rock, Paper, Scissors bonus features

VALID_CHOICES = %w(rock paper scissors lizard spock)
GAMES_TILL_WIN = 3

def prompt(message)
  puts "=> #{message}"
end

def get_player_choice
  choice = nil
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase

    if choice == 's'
      prompt("s could be scissors or spock")
      next
    end

    break if valid_rps_input?(choice)
    prompt("That is not a valid choice.")
  end
  choice
end

def valid_rps_input?(choice)
  VALID_CHOICES.one? { |option| option.start_with?(choice) }
end

def format_choice(choice)
  (VALID_CHOICES.select { |option| option.start_with?(choice) })[0]
end

def winner?(first, second)
  wins = {
    'rock' => ['scissors', 'lizard'],
    'paper' => ['rock', 'spock'],
    'scissors' => ['paper', 'lizard'],
    'lizard' => ['spock', 'paper'],
    'spock' => ['scissors', 'rock']
  }
  wins[first].include?(second)
end

# def update_score(winner, score_hash)
#   score_hash[winner] += 1
# end

def update_score(player_choice, computer_choice, score_hash)
  if winner?(player_choice, computer_choice)
    score_hash[:player] += 1
  elsif winner?(computer_choice, player_choice)
    score_hash[:computer] += 1
  end
end

def display_score(score)
  prompt("Player score: #{score[:player]}; Computer score: #{score[:computer]}")
end

def play_again?
  loop do
    prompt("Play again? N to quit.")
    again = gets.chomp.downcase
    break true if again == 'y'
    break false if again == 'n'
    prompt("Enter Y or N")
  end
end

prompt("Welcome to #{VALID_CHOICES.join(', ')}.\
First to #{GAMES_TILL_WIN} wins!")

loop do
  score = { player: 0, computer: 0 }

  loop do
    choice = get_player_choice()
    computer_choice = VALID_CHOICES.sample
    choice = format_choice(choice)

    system("clear") || system("cls")

    prompt("You chose #{choice}; Computer chose #{computer_choice}.")

    update_score(choice, computer_choice, score)

    display_score(score)

    break if score[:player] == GAMES_TILL_WIN ||
             score[:computer] == GAMES_TILL_WIN
  end

  break unless play_again?
end
