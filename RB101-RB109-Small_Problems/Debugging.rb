=begin
# 1. Countdown
The issue is with variable scoping. The 'decrease' method changes the value
of the 'counter' variable inside itself, which means this change never effects
the counter variable that is displayed.

counter = 10

10.times do
  puts counter
  counter -= 1
end

puts 'LAUNCH!'

# Further Exploration
def decrease(counter)
  counter - 1
end

counter = 10

counter.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

# 2. HEY YOU!
The String#chars method returns an array of new objects, so it's these objects
that are being mutated, not the original string.

def shout_out_to(name)
  puts 'HEY ' + name.upcase!
end

# 3. Valid Series?
On line 5, the ternary condition needs to say 'odd_count == 3' instead of
'odd_count = 3'. The later will always return a truthy value.

# Further Exploration
No; you can simply have the comparison 'odd_count == 3', which will return either
true or false.

# 4. Reverse Sentence
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words.unshift(words[i])
    i += 1
  end

  reversed_words.join(' ')
end

# 5. Card Deck
The total sum is too low because the amount of cards left in the deck is too low.
The problem is line 22. This line is intending to create a new variable 'cards', 
set equal to the cards in the current suit ('cards = deck[suit]'), to be used to
add a card to the 'player_cards' array using 'cards.pop'. However, #pop is a
destructive method, which in this case is mutating the variable to which
deck[suit] is pointing, the variable 'cards' initiated on line 1. This variable is used to
determine the value of each key in the 'deck' hash. As a result, every time the 'cards' variable is assigned in the 'each'
loop on line 22, and then subsequently 'popped' on line 24, the cards in each of
the subsequent suits are being reassigned to a number that is one less than it
should be. Because the 'cards' variable determines the amount of cards in each
suit, this results in the total number of cards in the deck being reduces by 4
(-1 for each suit), instead of by 1 for the current suit. The result is that the
total amount of cards left in the deck after pushing 4 cards into the
'player_cards' array in this way is 12 cards less than it should be (4 less cards 
after 3 iterations). This results in the sum being significantly lower that it
should be. To fix this, a unique variable would have to created to contain the
cards for each suit.

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit
player_cards = []
deck.keys.each do |suit|
  card_options = deck[suit]
  card_options.shuffle!
  player_cards << card_options.pop
end
# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  scores = remaining_cards.map do |card|
    score(card)
  end

  sum += scores.sum
end

# 6. Getting Things Done
The issue is with the recursion and the variable set as 'n'. Because the 'move'
method never defines a break condition, 'n' will keep decreasing by 1 for ever,
causing the stack which Ruby uses to keep track of each call to overflow.

def move(n, from_array, to_array)
  return if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Further Exploration
The method will push 'nil' into the 'to_array'.

# 7. Neutralizer
When the method finds a word for which negative?(word) is true, it deletes the
current word from the array on which it has been called. However, the next word
that the Array#each method iterates over is the element at the next index of the
'words' array. On the iteration for 'dull' (index [1]), the word is deleted,
then the #each method moves on to index [2], which for the original array is the word 'boring'. 
However, because the Array#delete method is destructive, it deletes 'dull' from the array in place, thereby moving
every other word in the array 'down' one index level. This means that the word
'boring' is now at index [1], which was just iterated over, and therefore will
never be called on using the 'words.delete(word) if negative?(word)' line of code.

def neutralize(sentence)
  words = sentence.split(' ')
  words.reject! { |word| negative?(word) }.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

# 8. Password
The 'password' variable that is used on line 14 is not availabe due to variable
scoping; it is initiated inside the 'set_password' method.

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)

# 9. Number Guessing Game
def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  # binding.pry
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

      # Try again:
      puts "Try again!"
    end
  end
end

guess_number(10, 3)

# 10. TF-IDF
def idf(term, documents)
  number_of_documents = documents.length
  number_of_documents_with_term = documents.count { |d| tf(term, d) > 0 }
  Math.log(number_of_documents.fdiv(number_of_documents_with_term))
end

# 11. What's wrong with the output?
arr = ["9", "8", "7", "10", "11"]
p arr.sort { |x, y| y.to_i <=> x.to_i }

=end
