# Rock, Paper, Scissors game
VALID_CHOICES = %w(rock paper scissors)

def test_method
  prompt('test message')
end

# test_method # generates undefined method error

def prompt(message)
  puts "=> #{message}"
end

test_method

def valid_rps_input?(choice)
  VALID_CHOICES.include?(choice)
end

# def display_result(user_choice, computer_choice)
#   if (user_choice == 'rock' && computer_choice == 'scissors') ||
#      (user_choice == 'paper' && computer_choice == 'rock') ||
#      (user_choice == 'scissors' && computer_choice == 'paper')
#     prompt("You win!")
#   elsif (user_choice == 'rock' && computer_choice == 'paper') ||
#         (user_choice == 'paper' && computer_choice == 'scissors') ||
#         (user_choice == 'scissors' && computer_choice == 'rock')
#     prompt("You lose!")
#   else
#     prompt("It's a tie!")
#   end
# end

# def display_result_case(user_choice, computer_choice)
#   return prompt("It's a tie!") if user_choice == computer_choice
#   case user_choice
#   when 'rock'
#     prompt("You win!") if computer_choice == 'scissors'
#     prompt("You lose!") if computer_choice == 'paper'
#   when 'paper'
#     prompt("You win!") if computer_choice == 'rock'
#     prompt("You lose!") if computer_choice == 'scissors'
#   else
#     prompt("You win!") if computer_choice == 'paper'
#     prompt("You lose!") if computer_choice == 'rock'
#   end
# end

def rock_results(ai)
  prompt("You win!") if ai == 'scissors'
  prompt("You lose!") if ai == 'paper'
end

def paper_results(ai)
  prompt("You win!") if ai == 'rock'
  prompt("You lose!") if ai == 'scisccors'
end

def scissors_results(ai)
  prompt("You win!") if ai == 'paper'
  prompt("You lose!") if ai == 'rock'
end

def display_results_new(player, ai)
  return prompt("It's a tie!") if player == ai
  rock_results(ai) if player == 'rock'
  paper_results(ai) if player == 'paper'
  scissors_results(ai) if player == 'scissors'
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

  # display_result(choice, computer_choice)
  # display_result_case(choice, computer_choice)
  display_results_new(choice, computer_choice)
  prompt("Play again? N to quit.")
  again = gets.chomp.downcase
  break if again == 'n'
end
