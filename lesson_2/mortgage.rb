def calculate_mortgage(loan_amount, monthly_interest_rate, loan_duration)
  (loan_amount * (monthly_interest_rate / (1 - ( 1 + monthly_interest_rate)**(-loan_duration)))).round(2)
end

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  /^\d*\.?\d+$/ =~ num
end

prompt("Welcome to the mortgage calculator")

loop do
  loan_amount = ''
  loop do
    prompt("Input your loan amount in dollars: ")
    loan_amount = Kernel.gets().chomp()
    break if valid_number?(loan_amount)
    prompt("Invalid amount")
  end
  apr = ''
  loop do
    prompt("Input your APR as an integer: ")
    prompt("(Example: enter 5 if your interest is 5%, enter 2.5 if your interest is 2.5%)")
    apr = Kernel.gets().chomp()
    break if valid_number?(apr)
    prompt("Invalid input")
  end
  months = ''
  loop do
    prompt("Input the loan duration in months: ")
    months = Kernel.gets().chomp()
    break if valid_number?(months)
    prompt("Invalid input")
  end
  monthly_payment = calculate_mortgage(loan_amount.to_f, (apr.to_f * 0.01) / 12, months.to_f)
  prompt("Your monthly payment is #{monthly_payment}")
  prompt("Would you like to perform another mortgage calculation?")
  prompt("Y or N")
  again = Kernel.gets().chomp()
  break unless again.downcase() == 'y'
end