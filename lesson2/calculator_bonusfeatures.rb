require "yaml"
YML_FILE = YAML.load_file('calculator_key.yml')
LANGUAGE = "es"

def messages(message, lang="en")
  YML_FILE[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def number?(num)
  integer?(num) || float?(num)
end

def integer?(num)
  num.to_i().to_s() == num
end

def float?(num)
  /\d/.match(num) && /^-?\d*\.??\d*$/.match(num)
end

def operation_to_message(op)
  verbing = case op
            when '1'
              'Adding'
            when '2'
              'Subtracting'
            when '3'
              'Multiplying'
            when '4'
              'Dividing'
  end
  verbing
end

prompt(messages("Greeting", LANGUAGE))

name = nil
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(messages("GreetingValidation", LANGUAGE))
  else
    break
  end
end

prompt(format(messages("GreetingPersonal", LANGUAGE), name: name))

loop do # main loop
  number1 = nil
  loop do
    prompt(messages("FirstNum", LANGUAGE))
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt(messages("InvalidNum", LANGUAGE))
    end
  end

  number2 = nil
  loop do
    prompt(messages("SecondNum", LANGUAGE))
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt(messages("InvalidNum", LANGUAGE))
    end
  end

  prompt(messages("OperatorPrompt", LANGUAGE))

  operator = nil
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages("OperatorInvalid", LANGUAGE))
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =  case operator
            when '1'
              number1.to_i() + number2.to_i()
            when '2'
              number1.to_i() - number2.to_i()
            when '3'
              number1.to_i() * number2.to_i()
            when '4'
              number1.to_f() / number2.to_f()
            end

  prompt(format(messages("Result", LANGUAGE), result: result))
  prompt(messages("Again?", LANGUAGE))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages("Exiting", LANGUAGE))
