#1. Print Me (Part 1)
def print_me
  puts "I'm printing within the method!"
end

print_me

#2. Print Me (Part 2)
def print_me
  "I'm printing the return value!"
end

puts print_me

#3. Greeting Through Methods (Part 1)
def hello
  "Hello"
end

def world
  "World"
end

#puts hello + " " + world
puts "#{hello} #{world}"

#4. Greeting Through Methods (Part 2)
def hello
  "Hello"
end

def world
  "World"
end

def greet
  "#{hello} #{world}"
  # hello + " " + world
end

puts greet

#5. Make and Model
def car(make, model)
  puts make + ' ' + model
end

car('Toyota', 'Corolla')

#Further Exploration

def car(make, model)
  make + ' ' + model
end

puts car('Toyota', 'Corolla')

#The return value of the first method is 'nil', while the return value of
#the second method is the concatenated string.

#6. Day or Night?
daylight = [true, false].sample

def time_of_day(boolean)
  boolean ? (puts "It's daytime!") : (puts "It's nighttime!")
end

time_of_day(daylight)

#7. Naming Animals
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

#8. Name Not Found

def name_assign(name = 'Bob')
  name
end

puts name_assign == 'Bob'
puts name_assign('Nick') == 'Nick'

#9. Multiply the Sum
def add(x, y)
  x + y
end

def multiply(x, y)
  x * y
end
  
puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2,2), add(5, 4)) == 36

#10. Random Sentence
def name(array)
  array.sample
end

def activity(array)
  array.sample
end

def sentence(name, activity)
  "#{name} decided to go #{activity} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))