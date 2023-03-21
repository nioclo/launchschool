VALID_CHOICES = ["rock", "paper", "scissors"]

def display_result(my_choice, computer_choice)
  if win?(my_choice, computer_choice)
    prompt("You win!")
  elsif win?(computer_choice, my_choice)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    break if VALID_CHOICES.include?(choice)
    prompt("Invalid choice, please retry")
  end

  computer_choice = VALID_CHOICES.sample
  display_result(choice, computer_choice)

  prompt("You chose #{choice} and the computer chose #{computer_choice}")
  prompt("Do you want to play again?")
  prompt("If yes, type Y and press enter; if no, type N and press enter")
  again = Kernel.gets().chomp()
  break unless again.downcase() == 'y'
end
