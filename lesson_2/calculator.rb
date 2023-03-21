# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

Kernel.puts("Welcome to Calculator!")
Kernel.puts("What's the first number?")
n1 = Kernel.gets().chomp()
Kernel.puts("What's the second number?")
n2 = Kernel.gets().chomp()

Kernel.puts("Which operation would you like to perform?")
Kernel.puts("1) add")
Kernel.puts("2) subtract")
Kernel.puts("3) multiply")
Kernel.puts("4) divide")
operator = Kernel.gets().chomp()

case operator
when '1'
  result = n1.to_i + n2.to_i
when '2'
  result = n1.to_i - n2.to_i
when '3'
  result = n1.to_i * n2.to_i
when '4'
  result = n1.to_f / n2.to_f
end

Kernel.puts("The result is #{result}")