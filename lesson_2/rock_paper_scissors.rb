CHOICES_VECTOR = {
  "rock" => ["scissors", "lizard"],
  "paper" => ["rock", "spock"],
  "scissors" => ["paper", "lizard"],
  "spock" => ["scissors", "rock"],
  "lizard" => ["paper", "spock"]
}

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
  # check if the second is a value in the list associated with the first
  CHOICES_VECTOR[first].include?(second)
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{CHOICES_VECTOR.keys.join(', ')}")
    choice = Kernel.gets().chomp()
    break if CHOICES_VECTOR.keys.include?(choice)
    prompt("Invalid choice, please retry")
  end

  computer_choice = CHOICES_VECTOR.keys.sample
  display_result(choice, computer_choice)

  prompt("You chose #{choice} and the computer chose #{computer_choice}")
  prompt("Do you want to play again?")
  prompt("If yes, type Y and press enter; if no, type N and press enter")
  again = Kernel.gets().chomp()
  break unless again.downcase() == 'y'
end
