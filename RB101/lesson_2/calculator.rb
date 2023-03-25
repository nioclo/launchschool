# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  /^-?\d+$/ =~ number
end

def valid_scientific_number?(number)
  /^-?\d*\.?\d*$/ =~ number
end

prompt(MESSAGES['welcome'])
name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

loop do
  n1 = ''
  loop do
    prompt(MESSAGES['first_number'])
    n1 = Kernel.gets().chomp()
    if valid_scientific_number?(n1)
      break
    else
      prompt(MESSAGES['invalid_input'])
    end
  end

  n2 = ''
  loop do
    prompt(MESSAGES['second_number'])
    n2 = Kernel.gets().chomp()
    if valid_scientific_number?(n2)
      break
    else
      prompt(MESSAGES['invalid_input'])
    end
  end

  prompt(MESSAGES['select_operation'])
  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    break if %w(1 2 3 4).include?(operator)
    prompt(MESSAGES['invalid_operation'])
  end

  result = case operator
    when '1'
      n1.to_i + n2.to_i
    when '2'
      n1.to_i - n2.to_i
    when '3'
      n1.to_i * n2.to_i
    when '4'
      n1.to_f / n2.to_f
  end

  prompt("The result is #{result}")
  prompt(MESSAGES['query_again'])
  prompt("Y or N")
  answer = Kernel.gets().chomp()
  break unless answer.downcase() == 'y'
end
