#1. Create a String
empty_string = ""
#2. Quote Confusion
puts "It's now 12 o'clock."

#3 Ignoring Case
name = 'Roger'
puts name.casecmp('RoGer') == 0
puts name.casecmp('Dave') == 0

#4 Dynamic String
name = 'Elizabeth'

puts "Hello, #{name}!"

#5 Combining Names
first_name = 'John'
last_name = 'Doe'
full_name = first_name + " " + last_name
puts full_name
#Further Exploration
full_name = "#{first_name} #{last_name}"
puts full_name
full_name = ""
full_name << first_name + " " + last_name
puts full_name

#6. Tricky Formatting
state = 'tExAs'
state.capitalize!
puts state

#7. Goodbye, not Hello
greeting = 'Hello!'
greeting.gsub!('Hello', 'Goodbye')
puts greeting

#8. Print the Alphabet
alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split('')

#9. Pluralize
words = 'car human elephant airplane'
words_array = words.split(" ")
words_array.each { |word| puts word + "s" }

#10. Are You There?
colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')


