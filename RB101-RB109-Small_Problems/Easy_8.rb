=begin
# 1. Sum of Sums
def sum_of_sums(array)
  blank = []
  sum = 0
  array.each do |num|
    blank << num
    sum += blank.sum
  end
  sum
end

# 2. Madlibs
puts "Enter a noun:"
noun = gets.chomp

puts "Enter a present-tense verb:"
verb = gets.chomp

puts "Enter a adverb:"
adverb = gets.chomp

puts "Enter a adjective:"
adjective = gets.chomp

puts "The #{adjective} #{noun} #{verb} the pumpkin #{adverb}."

# 3. Leading Substrings
def leading_substrings(string)
  substrings = []
  i = 0
  loop do
    substrings << string[0..i]
    i += 1
    break if i == string.size
  end
  substrings
end

# 4. All Substrings
def substrings(string)
  substrings = []
  loop do
    substrings += leading_substrings(string)
    string.slice!(0)
    break if string.empty?
  end
  substrings
end

# 5. Palindromic Substrings
def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  palindromes = []
  substrings(string).each do |sub|
    palindromes << sub if palindrome?(sub)
  end
  palindromes
end

# Further Exploration
def leading_substrings(string)
  substrings = []
  i = 0
  loop do
    substrings << string[0..i]
    i += 1
    break if i == string.size
  end
  substrings.each { |str| str.delete!('^A-Za-z') }
end

def substrings(string)
  substrings = []
  loop do
    substrings += leading_substrings(string)
    string.slice!(0)
    break if string.empty?
  end
  substrings
end

def palindrome?(string)
  string.downcase == string.downcase.reverse && string.downcase.size > 1
end

def palindromes(string)
  palindromes = []
  substrings(string).each do |sub|
    palindromes << sub if palindrome?(sub)
  end
  palindromes
end

# 6. fizzbuzz
def fizzbuzz(first, last)
  array = (first..last).to_a
  array.each do |num|
    result = ""
    
    if num % 3 == 0 && num % 5 == 0
      result << "FizzBuzz, "
    elsif num % 3 == 0
      result << "Fizz, "
    elsif num % 5 == 0
      result << "Buzz, "
    else
      result << "#{num}, "
    end

    result.delete_suffix!(", ") if num == array.last
    print result
  end
end

# 7. Double Char (Part 1)
def repeater(string)
  doubled = ""
  string.each_char do |let|
    doubled << let * 2
  end
  doubled
end

# 8. Double Char (Part 2)
CONSONANTS = (("a".."z").to_a) - (%W(a e i o u))

def double_consonants(string)
  doubled = ""
  string.each_char do |let|
    CONSONANTS.include?(let.downcase) ? doubled << let * 2 : doubled << let
  end
  doubled
end

# 9. Reverse the Digits In a Number
def reversed_number(num)
  num.to_s.reverse.to_i
end

# 10. Get The Middle Character
def center_of(string)
  middle_index = string.size / 2
  if string.size.even?
    string[middle_index-1..middle_index]
  else
    string[middle_index]
  end
end
=end
