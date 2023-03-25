=begin
P:
The input to the program is a string which contains operations and integers. Any time a number is included in the string, this number will be stored in a "register" which is like a temporary holding space so that this number may be operated on later. 
One of the operations that may be performed is PUSH; when PUSH is encountered when the input string is being read from left to right the integer in the register should be added to the "stack" which is simply an array. 
Any time a mathematical operation is called, the operands to the operation will be the value in the register and the value on top of the stack. The result will be stored in the register. In order to obtain the value on top of the stack, the POP operation will need to be called, which removes the value from the stop of the stack and places it in the register.
When the program is started, 0 is the value in the register
Questions: 
POP removes the topmost item from the stack AND places it in the register; anytime an operation is called, it calls POP and then stores the result of the math operation into the register. Wouldn't this then erase the value in the register, making it impossible for the math operation to have two operands?
--> No because the math operation occurs prior to placing the popped integer into the register

E:
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
3 is placed in register
3 is pushed onto stack
4 is placed in register
4 is pushed onto stack
5 is placed in register
5 is pushed onto stack
"5" (current value in register is printed)
10 is placed in register, 5 is removed from stack
"10"
4 is popped from stack and placed in register
"4"
7 is placed in register
"7"

D:
An array will be used to store the values in the stack
An array will also be used to store all of the instructions from the input to the function
An integer variable will be used to store the register

A:
0. Implement each command as a separate function; each command takes in the stack and the register value; implement the main program as stack_machine
1. Split each word from the input string and store in an array
2. Initialize variable register = 0, stack = []
3. Perform each command in input array, adding to and removing from stack and updating register as necessary
  1. Determine whether item in input_array is integer or command using regex
=end

def minilang(input_string)
  input_array = input_string.split
  register = 0
  stack = []
  for command in input_array
    if command =~ /^-?\d+$/
      register = command.to_i
    elsif command == 'PRINT'
      puts register
    elsif command == 'PUSH'
      stack.push(register)
    elsif command == 'ADD'
      register += stack.pop
    elsif command == 'SUB'
      register -= stack.pop
    elsif command == 'MULT'
      register *= stack.pop
    elsif command == 'DIV'
      register /= stack.pop
    elsif command == 'MOD'
      register = register % stack.pop
    elsif command == 'POP'
      register = stack.pop
    end
  end
end

minilang('6 PUSH')








