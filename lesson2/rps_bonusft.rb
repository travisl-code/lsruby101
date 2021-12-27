# Rock, Paper, Scissors bonus features

VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  puts "=> #{message}"
end

def valid_rps_input?(choice)
  return prompt("s could be scissors or spock") if choice == 's'
  VALID_CHOICES.one? { |option| option.start_with?(choice) }
end

def format_choice(choice)
  (VALID_CHOICES.select { |option| option.start_with?(choice) })[0]
end

# perceived over complexity
# def win?(first, second)
#   (first == 'rock' && second == 'scissors') ||
#   (first == 'rock' && second == 'lizard') ||
#   (first == 'paper' && second == 'rock') ||
#   (first == 'paper' && second == 'spock') ||
#   (first == 'scissors' && second == 'paper') ||
#   (first == 'scissors' && second == 'lizard') ||
#   (first == 'lizard' && second == 'spock') ||
#   (first == 'lizard' && second == 'paper') ||
#   (first == 'spock' && second == 'scissors') ||
#   (first == 'spock' && second == 'rock')
# end

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

def display_score(player, computer)
  prompt("Player score: #{player}; Computer score: #{computer}")
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

player_score = 0
computer_score = 0

prompt("Welcome to #{VALID_CHOICES.join(', ')}. First to 3 wins!")

loop do
  loop do
    choice = nil
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = gets.chomp.downcase

      break if valid_rps_input?(choice)
      prompt("That is not a valid choice.")
    end

    computer_choice = VALID_CHOICES.sample
    choice = format_choice(choice)

    prompt("You chose #{choice}; Computer chose #{computer_choice}.")

    if winner?(choice, computer_choice)
      prompt("You win!")
      player_score += 1
    elsif winner?(computer_choice, choice)
      prompt("Computer wins!")
      computer_score += 1
    else
      prompt("It's a tie!")
    end
    display_score(player_score, computer_score)
    break if player_score == 3 || computer_score == 3
  end

  break if !play_again?()
  player_score = 0
  computer_score = 0
end
