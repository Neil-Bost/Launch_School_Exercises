#User Input # 9
loop do
  input_string = nil
  number_of_lines = nil

  loop do
    puts "How many times do you want to print 'Launch School is the best!'? Please enter a number greater than or equal to 3. Press q to quit."
    
    input_string = gets.chomp.downcase
    break if input_string == 'q'
  
    number_of_lines = input_string.to_i
    break if number_of_lines >= 3
    
    puts "Invalid input. Please enter a number 3 or greater."
  end
  
  break if input_string == 'q'
  number_of_lines.times { puts 'Launch School is the best' }
  
end
  
 
