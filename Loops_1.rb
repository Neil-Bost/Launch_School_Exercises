# 1. Runaway Loop
loop do
  puts 'Just keep printing...'
  break
end

# 2. Loopception
loop do
  puts 'This is the outer loop.'
    
  loop do
    puts 'This is the inner loop.'
    break
  end
    
  break
end

puts 'This is outside all loops.'

# 3. Control the Loop
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

# 4. Loop on Command
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end

# 5. Say Hello
say_hello = true
i = 0

while say_hello
  puts 'Hello!'
  i += 1
  say_hello = false if i == 5
end

# 6. Print While
# Option 1
i = 0

while i < 5
puts rand(100)
i += 1

end

# Option 2 (best based on exercises given)
numbers = []

while numbers.length < 5
  numbers << rand(100)
end

puts numbers

# 7. Count Up
count = 1

until count == 11
  puts count
  count += 1
end

# 8. Print Until
numbers = [7, 9, 13, 25, 18]
i = 0

until i == numbers.length
  puts numbers[i]
  i += 1    
end

# 9. That's Odd
for i in 1..100
  puts i if i.odd?
end

# 10. Greet Your Friends!
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}!" 
end