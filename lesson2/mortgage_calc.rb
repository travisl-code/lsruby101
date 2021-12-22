# Mortgage calculator
def prompt(message)
  puts "=> #{message}"
end

def loan_amount_valid?(num)
  num.to_i > 0 && num.to_i.to_s == num
end

def apr_valid?(apr)
  apr.to_i > 0 && /^\d*\.?\d{0,2}$/.match(apr)
end

def loan_duration_valid?(num)
  num.to_i > 0 && num.to_i.to_s == num
end

loan_amount =
  loop do
    prompt("What is your loan amount?")
    loan_amount = gets.chomp
    if loan_amount_valid?(loan_amount)
      break loan_amount.to_i
    else
      prompt("That doesn't look like a valid number.")
    end
  end

apr = nil
monthly_pr =
  loop do
    prompt("What is your APR (float, up to 2 decimal places)?")
    apr = gets.chomp
    if apr_valid?(apr)
      break (apr.to_f / 100) / 12
    else
      prompt("That doesn't look like a valid number.")
    end
  end

loan_duration =
  loop do
    prompt("What is the loan duration in months?")
    loan_duration = gets.chomp
    if loan_duration_valid?(loan_duration)
      break loan_duration.to_i
    else
      prompt("That doesn't look like a valid loan duration.")
    end
  end

monthly_payment = loan_amount *
                  (monthly_pr / (1 - (1 + monthly_pr)**(-loan_duration)))
prompt("Your monthly payment is $#{format('%.2f', monthly_payment)}.")
