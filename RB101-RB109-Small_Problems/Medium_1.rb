=begin
# 1. Rotation (Part 1)
def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

# Further Exploration for strings
def rotate_string(str)
  str[1..-1] + str[0]
end

# Further Exploration for integers
def rotate_integer(int)
  rotate_array(int.digits.reverse).join.to_i
end

# 2. Rotation (Part 2)
def rotate_string(str, digits)
  tail = str.slice!(-digits)
  str[0..-1] + tail
end

def rotate_rightmost_digits(num, digits)
  rotate_string(num.to_s, digits).to_i
end

# 3. Rotation (Part 3)
def max_rotation(number)
  str = number.to_s

  str.size.times do |num|
    tail = str.slice!(num)
    str[0..-1] += tail
  end

  str.to_i
end

# 4. 1000 Lights
def toggle_switch!(switch_bank, switch)
  if switch > switch_bank.size
    return
  elsif switch_bank[switch] == "on" 
    switch_bank[switch] = "off"
  else # switch is "off"
    switch_bank[switch] = "on"
  end
end

def initialize_switch_bank(number_of_switches)
  switch_bank = {}
  number_of_switches.times do |num|
    switch_bank[num+1] = "off"
  end
  switch_bank
end

def toggle_light_switches(number_of_switches)
  switch_bank = initialize_switch_bank(number_of_switches)
  
  switch = 1
  while switch <= number_of_switches
    number_of_switches.times do |num|
      toggle_switch!(switch_bank, switch*(num+1))
    end
    switch += 1
  end

  switch_bank.select { |_,v| v == "on" }.keys
end

# Further Exploration 3.
def toggle_switch!(switch_bank, switch)
  if switch > switch_bank.size
    return
  elsif switch_bank[switch] == "on" 
    switch_bank[switch] = "off"
  else # switch is "off"
    switch_bank[switch] = "on"
  end
end

def initialize_switch_bank(number_of_switches)
  switch_bank = {}
  number_of_switches.times do |num|
    switch_bank[num+1] = "off"
  end
  switch_bank
end

def display_switch_status(switch_bank, round)
  on_lights = switch_bank.select { |_,v| v == "on" }.keys
  off_lights = switch_bank.select { |_,v| v == "off" }.keys
  if off_lights.empty?
    puts "round 1: every light is turned on"
    return
  end
  puts "round #{round}: lights #{off_lights.join(', ')} are now off; #{on_lights.join(', ')} are on."
end

def toggle_light_switches(number_of_switches)
  switch_bank = initialize_switch_bank(number_of_switches)
  
  switch = 1
  while switch <= number_of_switches
    number_of_switches.times do |num|
      toggle_switch!(switch_bank, switch*(num+1))
    end
    display_switch_status(switch_bank, switch)
    switch += 1
  end

  switch_bank.select { |_,v| v == "on" }.keys
end

# 5. Diamonds!
def diamond(width)
  stars = 1
  while stars <= width
    space = (width - stars) / 2
    puts (" " * space) + ("*" * stars)
    stars += 2
  end

  stars = width - 2
  while stars >= 0
    space = (width - stars) / 2
    puts (" " * space) + ("*" * stars)
    stars -= 2
  end
end

# Further Exploration
def diamond(width)
  puts (" " * (width / 2)) + ("*")
  stars = 3
  while stars <= width
    space = (width - stars) / 2
    middle = stars - 2
    puts (" " * space) + ("*") + (" " * middle) + ("*")
    stars += 2
  end

  stars = width - 2
  while stars >= 2
    space = (width - stars) / 2
    middle = stars - 2
    puts (" " * space) + ("*") + (" " * middle) + ("*")
    stars -= 2
  end
  puts (" " * (width / 2)) + ("*")
end

# 6. Stack Machine Interpretation
def minilang(input)
  register = 0
  stack = []
  input.split.each do |command|
    case command
    when 'PUSH'   then stack << register
    when 'ADD'    then register += stack.pop
    when 'SUB'    then register -= stack.pop
    when 'MULT'   then register *= stack.pop
    when 'DIV'    then register /= stack.pop
    when 'MOD'    then register %= stack.pop
    when 'POP'    then register = stack.pop
    when 'PRINT'  then puts register
    else               register = command.to_i
    end
  end
end

# Further Exploration - Minilang program
minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')

# Further Exploration - data validation
VALID_INPUTS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT)

def valid_input?(input)
  if input.to_i != 0
    true
  elsif VALID_INPUTS.include?(input)
    true
  else
    puts "Invalid input. Please enter a valid command."
    false
  end
end

def minilang(input)
  register = 0
  stack = []
  input.split.each do |command|
    break if valid_input?(command) == false
    case command
    when 'PUSH'   then stack << register
    when 'ADD'    then register += stack.pop
    when 'SUB'    then register -= stack.pop
    when 'MULT'   then register *= stack.pop
    when 'DIV'    then register /= stack.pop
    when 'MOD'    then register %= stack.pop
    when 'POP'    then register = stack.pop
    when 'PRINT'  then puts register
    else               register = command.to_i
    end
  end
end

# 7. Word to Digit
NUMBERS = %w(zero one two three four five six seven eight nine)

def word_to_digit(sentence)
  count = 0
  NUMBERS.each do |num|
    sentence.gsub!(/\b#{num}\b/, "#{count}")
    count += 1
  end
  sentence
end

# Further Exploration (remove spaces)
NUMBERS = %w(zero one two three four five six seven eight nine)

def word_to_digit(sentence)
  count = 0
  NUMBERS.each do |num|
    sentence.gsub!(/\b*#{num} *\b/, "#{count}")
    #binding.pry
    count += 1
  end
  sentence
end

# 8. Fibonacci Numbers (Recursion)
def fibonacci(number)
  return 1 if number <= 2
  fibonacci(number - 1) + fibonacci(number - 2)
end

# 9. Fibonacci Numbers (Procedural)
def fibonacci(number)
  first, last = [1, 1]
  3.upto(number) do
    first, last = [last, first + last]
  end
  last
end

# 10. Fibonacci Numbers (Last Digit)
def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end
=end
