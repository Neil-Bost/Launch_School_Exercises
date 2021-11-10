=begin
# 1. How old is Teddy?
age = rand(20..200)
puts "Teddy is #{age} years old."

### Further Exploration:
puts ">> Please enter a name:"
name = gets.chomp
name = "Teddy" if name.empty?
age = rand(20..200)
puts "#{name} is #{age} years old."

# 2. How big is the room?
SQUAREMETERS_TO_FEET = 10.7639
puts ">> Enter the length of the room in meters:"
length = gets.to_f
puts ">> Enter the width of the room in meters:"
width = gets.to_f

area_in_meters = (length * width).round(2)
area_in_feet = (area_in_meters * SQUAREMETERS_TO_FEET).round(2)

puts ">> The area of the room is #{area_in_meters} square meters" + \
     " (#{area_in_feet} square feet)."

### Further Exploration
FEET_TO_CENTIMETERS = 30.48

puts ">> Enter the length of the room in feet:"
length = gets.to_f
puts ">> Enter the width of the room in feet:"
width = gets.to_f

area_in_feet = (length * width).round(2)
area_in_inches = (area_in_feet * 12).round(2)
area_in_centi = area_in_feet * FEET_TO_CENTIMETERS

puts ">> The area of the room is #{area_in_feet} square feet" + \
     " (#{area_in_inches} square inches and" + \
     " #{area_in_centi} square centimeters)."

# 3. Tip calculator
puts ">> What is the bill?"
bill = gets.to_f
puts ">> What is the tip percentage?"
tip_percent = gets.to_f / 100

tip = (bill * tip_percent).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"

### Further Exploration
puts ">> What is the bill?"
bill = gets.to_f
puts ">> What is the tip percentage?"
tip_percent = gets.to_f / 100

tip = (bill * tip_percent).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{sprintf("%.2f", tip)}"
puts "The total is $#{sprintf("%.2f", total)}"

# 4. When will I Retire?
puts "What is your age?"
age = gets.to_i
puts "At what age would you like to retire?"
retirement_age = gets.to_i

years_of_work = retirement_age - age
current_year = Time.now.year
retirement_year = current_year + years_of_work

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_of_work} years of work to go!"

# 5. Greeting a user
puts ">> What is your name?"
name = gets.chomp

if name.end_with?("!")
  puts ">> HELLO #{name.chop.upcase}!!! WHY ARE WE SCREAMING?!"
else
  puts ">> Hello #{name}."
end

# 6. Odd Numbers
100.times { |num| puts num if num.odd? }

### Further Exploration
1.upto(99) { |num| puts num if num.odd? }

# 7. Even Numbers
num = 2
while num <= 99
  puts num
  num += 2
end

# 8. Sum or Product of Consecutive Integers
def compute_sum(number)
  sum = 0
  1.upto(number) { |num| sum += num }
  sum
end

def compute_factorial(number)
  factorial = 1
  1.upto(number) { |num| factorial *= num }
  factorial
end

integer = nil
loop do
  puts ">> Please enter an integer greater than 0:"
  integer = gets.to_i
  if integer <= 0
    puts ">> Invalid entry."
  else
    break
  end
end

computation = nil
loop do    
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  computation = gets.chomp
  break if computation == 's' || computation == 'p'
  puts ">> Invalid entry."
end

if computation == 's'
  sum = compute_sum(integer)
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
else
  factorial = compute_factorial(integer)
  puts "The product of the integers between 1 and #{integer} is #{factorial}."
end

### Further Exploration
def compute_sum(number)
  (1..number).inject(:+)
end

def compute_factorial(number)
  (1..number).inject(:*)
end

integer = nil
loop do
  puts ">> Please enter an integer greater than 0:"
  integer = gets.to_i
  if integer <= 0
    puts ">> Invalid entry."
  else
    break
  end
end

computation = nil
loop do    
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  computation = gets.chomp
  break if computation == 's' || computation == 'p'
  puts ">> Invalid entry."
end

if computation == 's'
  sum = compute_sum(integer)
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
else
  factorial = compute_factorial(integer)
  puts "The product of the integers between 1 and #{integer} is #{factorial}."
end

# 9. String Assignment
### Original answer:
This will print out:
BOB
BOB
The code runs as follows:
1 name = 'Bob'
  This saves the string 'Bob' into the variable 'name'.
2 save_name = name
  This saves the value of the 'name' variable into a new variable called
  'save_name'.
3 name.upcase!
  This destructively changes (mutatues) the value of the 'name' variable from
  'Bob' to 'BOB'. This means that the value of the 'save_name' variable is also 
  changed, as its value is determined by the value of the 'name' variable.

# 10. Mutation
The code will print:
Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo

This is because the #upcase! method is destructive, so it changes the original
array that is referenced by array2.

### Further Exploration
This feature can get someone in trouble if they don't understand which methods
are desctructive, and they use one while trying to keep the original object
unchanged, to be referenced as such later. It can be avoided by using non-
destructive methods, or using assignment to assign the change to a new variable.
