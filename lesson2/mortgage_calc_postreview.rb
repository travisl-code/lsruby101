# Mortgage calculator refactored after Code Review
def prompt(message)
  puts "=> #{message}"
end

def loan_amount_valid?(num)
  num.gsub!('$', '')
  num.to_f > 0 && /^\d*\.?\d{0,2}$/.match(num)
end

def apr_valid?(apr)
  apr.gsub!('%', '')
  apr.to_f >= 0 && /^\d*\.?\d{0,2}$/.match(apr)
end

def loan_duration_valid?(num)
  num.to_i > 0 && num.to_i.to_s == num
end

def retrieve_loan_amount
  loan_amount = nil
  loop do
    prompt("What is your loan amount? Include up to 2 decimals.")
    loan_amount = gets.chomp
    break if loan_amount_valid?(loan_amount)
    prompt("That doesn't look like a valid loan amount.")
  end
  loan_amount.to_f
end

def retrieve_interest_rate
  apr = nil
  loop do
    prompt("What is your APR? Include up to 2 decimal places.")
    apr = gets.chomp
    break if apr_valid?(apr)
    prompt("That doesn't look like a valid number.")
  end
  apr.to_f
end

def retrieve_loan_duration
  loan_duration = nil
  loop do
    prompt("What is the loan duration in months?")
    loan_duration = gets.chomp
    break if loan_duration_valid?(loan_duration)
    prompt("That doesn't look like a valid loan duration.")
  end
  loan_duration.to_i
end

def convert_apr_to_monthly(apr)
  (apr / 100) / 12
end

def calculate_monthly_nointerest(loan, duration)
  monthly_payment = loan / duration
  prompt("Your monthly payment is $#{format('%.2f', monthly_payment)}.")
end

def calculate_monthly_pr(loan, duration, interest)
  monthly_interest = convert_apr_to_monthly(interest)
  monthly_payment = loan *
  (monthly_interest / (1 - (1 + monthly_interest)**(-duration)))
  prompt("Your monthly payment is $#{format('%.2f', monthly_payment)}.")
end

def again?
  response = nil
  loop do
    prompt("Do you want to calculate another interest rate? Y to continue; N to end.")
    response = gets.chomp.downcase
    break if response == 'y' || response == 'n'
    prompt("Please choose Y or N.")
  end
  response
end

prompt("Welcome to the mortgage calculator!")

loop do
  loan_amount = retrieve_loan_amount
  interest_rate = retrieve_interest_rate
  loan_duration = retrieve_loan_duration
  if interest_rate == 0.0
    calculate_monthly_nointerest(loan_amount, loan_duration)
  else
    calculate_monthly_pr(loan_amount, loan_duration, interest_rate)
  end
  break if again?() == 'n'
end

prompt("Thank you for using the mortgage calculator. Goodbye!")
