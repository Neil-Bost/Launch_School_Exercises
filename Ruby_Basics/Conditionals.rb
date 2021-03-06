#1. Unpredictable Weather (Part 1)
sun = ['visible', 'hidden'].sample
puts "The sun is so bright!" if sun == 'visible'

#2. Unpredictable Weather (Part 2)
sun = ['visible', 'hidden'].sample
puts "The clouds are blocking the sun!" unless sun == 'visible'

#3. Unpredictable Weather (Part 3)
sun = ['visible', 'hidden'].sample
puts "The sun is so bright!" if sun == 'visible'
puts "The clouds are blocking the sun!" unless sun == 'visible'

#4. True or False
boolean = [true, false].sample
puts boolean ? "I'm true!" : "I'm false!"

#5. Truthy Number
# My favorite number is 7.
# This is because the only expressions that evaluate to false are false and nil.

#6. Stoplight (Part 1)
stoplight = ['green', 'yellow', 'red'].sample
case stoplight
  when 'green' then puts 'Go!'
  when 'yellow' then puts 'Slow down!'
  else puts "Stop!"
end

#7. Stoplight (Part 2)
stoplight = ['green', 'yellow', 'red'].sample
if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts "Slowdown!"
else
  puts "Stop!"
end

#8. Sleep Alert
status = ['awake', 'tired'].sample
alertness = if status == 'awake'
              "Be productive!"
            else
              "Go to sleep!"
            end

puts alertness

#9. Cool Numbers
number = rand(10)
if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

#10. Stoplight (Part 3)
stoplight = ['green', 'yellow', 'red'].sample
case stoplight
  when 'green'  then puts 'Go!'
  when 'yellow' then puts 'Slow down!'
  else               puts "Stop!"
end