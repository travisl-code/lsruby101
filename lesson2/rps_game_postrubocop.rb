VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=> #{message}"
end

def valid_rps_input?(choice)
  VALID_CHOICES.include?(choice)
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'paper' && second == 'rock') ||
  (first == 'scissors' && second == 'paper')
end

def display_results
  puts "...placeholder..."
end

loop do
  choice = nil
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase

    break if valid_rps_input?(choice)
    puts "That doesn't look like a valid choice."
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}; Computer chose #{computer_choice}.")

  if win?(choice, computer_choice)
    prompt("You win!")
  elsif win?(computer_choice, choice)
    prompt("Computer wins!")
  else
    prompt("It's a tie!")
  end
  prompt("Play again? N to quit.")
  again = gets.chomp.downcase
  break if again == 'n'
end
