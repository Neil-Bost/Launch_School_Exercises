#1. Reading Error Messages
###1) An error is raised about the number of arguments given on line 9. Given 6, expected 1.
###2) The #each method cannot be called on an integer. Line 10 calls the method with the integer '1'.

#2. Weather Forecast
### The sunshine array contains 'true' and 'false' as strings. When #sample is called on the array
### it will return string values, not booleans. Therefore, when the if statement evaluates the sunshine array with 
### the #sample method, it will evaluate a string. Whether it is the 'true' string or the 'false' string, both will
### evaluate as truthy in the if statement, which will therefore only run the command under if.
def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather

#3. Multiply By Five
### The #gets.chomp method will always return a string. When the string '10' is passed into the multiply_by_five
### method, it will not be multiplied by 5, as you cannot multiply a string by an integer.

#4. Pets
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] << 'bowser'

p pets

#5. Even Numbers

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n.even?
end

p even_numbers

#6. Confucius Says
def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

#puts 'Confucius says:'
puts '"' + get_quote('Einstein') + '"'
#get_quote('Confucius')

#7. Account Balance
# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance

### The #each method is reassigning the balance variable each time it loops, so that the value of the balance
### variable will by the last element iterated on, which in this case is the march hash. To get the sum of
### each month, we just need to use the assignment operator '+='.

#8. Colorful Things
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > things.length - 1

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

### The #[] method returns nil because i eventually incremenets to 8, which is out of range of the indices of the colors array.
### The break if statement should break when i == 7, not 8.

#Further Exploration

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

(colors.length <=> things.length) == -1 ? shorter_array = colors : shorter_array = things

i = 0
loop do
  break if i > shorter_array.length - 1

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

#9. Digit Product
def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0

### Assigning product to 0 makes it so the each loop will always multiply the digit by 0, so product will always be 0.
### Changing product to 1 solves the problem.

#10. Warriors and Wizards
# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge!(character_classes[input.to_sym])

puts 'Your character stats:'
puts player

### The input in the original code will always be a string (gets.chomp always returns a string). You need to convert the string to a symbol to be
### used in the merge method. Additionally, in order for the 'puts player' command to display the updated hash, you need to use the destructive version of merge.