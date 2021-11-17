=begin
# 1. Searching 101
def prompt(message)
  "==> #{message}"
end

numbers_1_to_5 = []

puts prompt("Please enter the first number:")
numbers_1_to_5 << first = gets.to_i

puts prompt("Please enter the second number:")
numbers_1_to_5 << second = gets.to_i

puts prompt("Please enter the third number:")
numbers_1_to_5 << third = gets.to_i

puts prompt("Please enter the fourth number:")
numbers_1_to_5 << fourth = gets.to_i

puts prompt("Please enter the fifth number:")
numbers_1_to_5 << fifth = gets.to_i

puts prompt("Please enter the sixth number:")
sixth = gets.to_i

if numbers_1_to_5.include?(sixth)
  puts "The number #{sixth} is in #{numbers_1_to_5}."
else
  puts "The number #{sixth} is not in #{numbers_1_to_5}."
end

# 2. Arithmetic Integer
def prompt(message)
  "==> #{message}"
end

puts prompt("Please enter the first number:")
first = gets.to_i
puts prompt("Please enter the second number:")
second = gets.to_i

puts prompt("#{first} + #{second} = #{first + second}")
puts prompt("#{first} - #{second} = #{first - second}")
puts prompt("#{first} * #{second} = #{first * second}")
puts prompt("#{first} / #{second} = #{first / second}")
puts prompt("#{first} % #{second} = #{first % second}")
puts prompt("#{first} ** #{second} = #{first ** second}")

### Discussion
Having floats instead of integers would require us to convert the user input
using "to_f" instead of "to_i". This would possibly create answers with many
decimal places, so we would consider rounding our answers to 2 decimal places.

# 3. Counting the Number of Characters
### Original solution:
puts "Please write word or multiple words:"
words = gets.chomp

characters = words.split(" ").join.length
puts "There are #{characters} characters in '#{words}'."

### Second try:
puts "Please write a word or multiple words:"
string = gets.chomp

number_of_characters = string.delete(" ").length
puts "There are #{number_of_characters} characters in '#{string}'."

# 4. Multiplying Two Numbers
def multiply(first, second)
  first * second
end

### Further Exploration
If the first argument is an array, the method will return a version of
the array repeated as many times as the second argument, combined into 1 array.

# 5. Squaring an Argument
def square(num)
  multiply(num, num)
end

### Further Exploration


# 6. Exclusive Or
### Original solution:
def xor?(first, second)
  if first && second
    false
  elsif first || second
    true
  else
    false
  end
end

### Second try:
def xor?(first, second)
  return true if first && !second
  return true if !first && second
  false
end

### Further Exploration
Exclusive or methods will never use short curcuit evaluation on the entire
method, but they will use it on operands within the method. xor
methods always have to check two sets of conditions before exiting, so it will
never have the chance to short circuit after checking the first condition. It
can however short circuit one of the two && conditions if the first operand of
either is truthy.

# 7. Odd Lists
def odditites(array)
  odd_elements = []

  i = 0
  while i < array.length 
    odd_elements << array[i] if i.even?
    i += 1
  end
  
  odd_elements
end

### Further Exploration
1)
def oddities(array)
  array.delete_if { |ele| array.index(ele).odd? }
end

2)
def oddities(array)
  array.keep_if { |ele| array.index(ele).even? }
end

# 8. Palindromic Strings (Part 1)
def palindrome?(string)
  string == string.reverse
end

### Further Exploration
def palindrome?(argument)
  argument == argument.reverse
end

# 9. Palindromic Strings (Part 2)
### Original solution:
ALPHANUMERICS = "abcdefghijklmnopqrstuvwxyz0123456789"

def real_palindrome?(argument)
  string_array = argument.downcase.split('')
  string_array.select! { |ele| ALPHANUMERICS.include?(ele) }
  string_array.join == string_array.join.reverse
end

### Second try:
def palindrome?(argument)
  argument == argument.reverse
end

def real_palindrome?(arg)
  string = arg.downcase.delete("^a-z0-9")
  palindrome?(string)
end

# 10. Palindromic Numbers
def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end
=end
