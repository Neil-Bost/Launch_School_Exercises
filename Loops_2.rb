# 1. Even or Odd?
count = 1

loop do

  if count.even?
    puts "#{count} even!"
  else
    puts "#{count} odd!"
  end

  count += 1
  break if count == 6
end

# 2. Catch the Number
loop do
  number = rand(100)
  puts number
  break if number <= 10
end

# 3. Conditional Loop
process_the_loop = [true,false].sample

if process_the_loop
  loop do
    puts "The loop was processed"
    break
    end
else
  puts "The loop wasn't processed!"
end

# 4. Get the Sum
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end

end

# 5. Insert Numbers
numbers = []

loop do
  puts 'Enter any numbers:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.length == 5
end
puts numbers

# 6. Empty the Array
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.delete_at(0)
  break if names.length == 0
end

#Further Exploration
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.delete_at(-1)
  break if names.empty?
end

# 7. Stop Counting
5.times do |index|
  index > 2 ? break : (puts index)
end

#Further Exploration
#5 (0, 1, 2, 3, 4)
#1 (0)

# 8. Only Even
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

#Further Exploration
#If next was placed after puts, the loop would print the numbers, THEN skip to the next iteration if it was odd, defeating the purpose. 
#Essentially it wouldn't skip over any part of the program. 
#If it was placed before the incrementation of number, it would get stuck in an infinite loop,
#and keep skipping to the top of the loop after printing first odd number, without printing or incrementing after that.

# 9. First to Five
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
    
  next if number_a != 5 && number_b != 5
  puts "5 was reached!"
  puts "number_a = #{number_a}."
  puts "number_b = #{number_b}."
  break
end

# Further Exploration
number_a = 0
number_b = 0

loop do

  if number_a == 5 || number_b == 5
    puts "5 was reached!"
    puts "number_a = #{number_a}."
    puts "number_b = #{number_b}."
    break
  else
    number_a += rand(2)
    number_b += rand(2)  
  end

end

# 10. Greeting
def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end