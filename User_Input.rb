# 1. Repeat after me
puts ">> Type in anything you want!"
input = gets.chomp
puts "Here is your input: '#{input}'"

# 2. Your Age in Months
puts ">> Please enter your age in years:"
age_in_months = gets.chomp.to_i * 12
puts "You are #{age_in_months} months old."

#3. Print Something (Part 1)
puts ">> Do you want me to print something? (y/n)"
input = gets.chomp
puts "something" if input == "y"

#Further Exploration
puts ">> Do you want me to print something? (y/n)"
input = gets.chomp.downcase
puts "something" if input == "y"

#4. Print Something (Part 2)
choice = nil
loop do
  puts ">> Do you want me to print something? (y/n)"
  input = gets.chomp.downcase
  break if ['y', 'n'].include?(input)
  puts '>> Invalid input! Please enter y or n.'
end

puts 'something' if input == 'y'

#5. Launch School Printer (Part 1)
number_of_lines = nil

loop do
  puts "How many times do you want to print 'Launch School is the best!'? Please enter a number greater than or equal to 3."
  number_of_lines = gets.chomp.to_i
  break if number_of_lines >= 3
  puts "Invalid input. Please enter a number 3 or greater."
end

number_of_lines.times { puts 'Launch School is the best' }

#6. Passwords
PASSWORD = 'monkeypuzzle1!'

loop do
  puts ">> Please enter the password:"
  password_attempt = gets.chomp
  break if password_attempt == PASSWORD
  puts ">> Incorrect password. Please try again."
end

puts "You've correctly entered the password!"

#7. User Name and Password
USERNAME = 'Neil-Bost'
PASSWORD = 'monkeypuzzle1!'

loop do
  puts ">> Please enter your user name:"
  username_attempt = gets.chomp
  
  puts ">> Please enter your password:"
  password_attempt = gets.chomp
  
  break if username_attempt == USERNAME && password_attempt == PASSWORD
  puts ">> Incorrect user name or password. Please try again."
end

puts "Welcome in!"

#8. Dividing Numbers
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

user_numerator = nil
user_denominator = nil

loop do
  puts ">> Please enter the numerator:"
  user_numerator = gets.chomp

  break if valid_number?(user_numerator)
  puts "Invalid input. Please enter a whole integer."

end

loop do
  puts ">> Please enter the denominator:"
  user_denominator = gets.chomp
  
  if user_denominator == '0'
    puts "Invalid input. Please enter a whole integer that isn't 0."
  else
    break if valid_number?(user_denominator)
    puts "Invalid input. Please enter a whole integer that isn't 0."
  end

end

puts "#{user_numerator.to_i} / #{user_denominator.to_i} = #{user_numerator.to_i / user_denominator.to_i}"

#9. Launch School Printer (Part 2)
number_of_lines = nil

loop do
  puts "How many times do you want to print 'Launch School is the best!'? Please enter a number greater than or equal to 3. Press q to quit."
  number_of_lines = gets.chomp.downcase

  if number_of_lines.to_i >= 3
    number_of_lines.to_i.times { puts 'Launch School is the best' }
  elsif number_of_lines == 'q'
    break
  else
    puts "Invalid input. Please enter a number 3 or greater."
  end

end

#10. Opposites Attract
first_number = nil
second_number = nil

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  
  loop do
    puts ">> Please enter the first positive or negative integer:"
    first_number = gets.chomp 
  
    if !valid_number?(first_number)
      puts ">> Invalid input. Only non-zero integers allowed."
    else
      break
    end
    
  end
  
  loop do
    puts ">> Please enter the second positive or negative integer:"
    second_number = gets.chomp
    
    if !valid_number?(second_number)
      puts ">> Invalid input. Only non-zero integers allowed."
    else
      break
    end
    
  end
  
  if first_number.to_i > 0 && second_number.to_i > 0
    puts ">> One of the two numbers must be negative. Please try again."
  else
    break
  end
  
end

sum = first_number.to_i + second_number.to_i
puts "#{first_number.to_i} + #{second_number.to_i} = #{sum}"