# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  /^-?\d+$/ =~ number
end

def valid_scientific_number?(number)
  /^-?\d*\.?\d*$/ =~ number
end

prompt("Welcome to Calculator! Enter your name:")
name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Please enter a valid name")
  else
    break
  end
end

loop do
  n1 = ''
  loop do
    prompt("What's the first number?")
    n1 = Kernel.gets().chomp()
    if valid_scientific_number?(n1)
      break
    else
      prompt("That's not a valid input")
    end
  end

  n2 = ''
  loop do
    prompt("What's the second number?")
    n2 = Kernel.gets().chomp()
    if valid_scientific_number?(n2)
      break
    else
      prompt("That's not a valid input")
    end
  end

  prompt("Which operation would you like to perform?")
  prompt("1) add")
  prompt("2) subtract")
  prompt("3) multiply")
  prompt("4) divide")
  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    break if %w(1 2 3 4).include?(operator)
    prompt("Must choose 1, 2, 3, or 4")
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
  prompt("Do you want to perform another calculation?")
  prompt("Y or N")
  answer = Kernel.gets().chomp()
  break unless answer.downcase() == 'y'
end
