#User_Input #10
first_number = nil
second_number = nil

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def user_validation
  loop do
   puts ">> Please enter a positive or negative integer:"
   number = gets.chomp 
  
    if valid_number?(number)
      return number.to_i
    else
      puts ">> Invalid input. Only non-zero integers allowed."
    end
  end
    
end

loop do
  first_number = user_validation
  second_number = user_validation
  if first_number > 0 && second_number > 0
    puts ">> One of the two numbers must be negative. Please try again."
  else
    break
  end
  
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"