=begin
# 1. Repeat Yourself
def repeat(string, int)
  int.times { |x| puts string }
  return
end

puts repeat("Hello", 3)

# 2. Odd
def is_odd?(num)
  num % 2 == 1
end

# 3. List of Digits
def digit_list(num)
  num.digits.reverse
end

puts digit_list(375290)

# 4. How Many?
def count_occurences(array)
  hash = array.to_h { |ele| [ele, array.count(ele)] }
  hash.each do |k, v|
    puts "#{k} => #{v}"
  end
end

# 5. Reverse It (Part 1)
def reverse_sentence(string)
  string.split(' ').reverse.join(' ')
end

# The #split method separates each word in the sentence at the space character 
# (' ') and saves it as an array.
# The #reverse method reverses the order of words in the array, then #join
# converts the array back to a string.

# 6. Reverse It (Part 2)
# My original answer:
def reverse_words(sentence)
  array = sentence.split(' ')
  array.map! do |ele|
  ele.length >= 5 ? ele.reverse : ele
  end
  
  array.join(' ')
end

# Improved answer (given by user submission:
def reverse_words(sentence)
  sentence.split(' ').map { |ele| ele.length >= 5 ? ele.reverse : ele}.join(' ')
end

# 7. Stringy Strings
### Original answer:
def stringy(num)
  i = 1
  string = []
  
  while i <= num
    string << '1' if i.odd?
    string << '0' if i.even?
    i += 1
  end
  string.join
  
end

### Second try with #times:
def stringy(num)
  string = ''
  
  num.times do |num|
    string = num.even? ? string + "1" : string + "0"
  end

  string
end

### Further exploration:
def stringy(num, param = 1)
  string = ''
  
  num.times do |num|
    if param == 0
      string = num.even? ? string + "0" : string + "1"
    else
      string = num.even? ? string + "1" : string + "0"
    end
  end

  string
end

# 8. Array Average
def average(array)
  sum = array.reduce(:+)
  sum / array.count
end

### Further Exploration
def average(array)
  sum = array.reduce(:+).to_f
  sum / array.count
end

# 9. Sum of Digits
def sum(num)
  sum = 0
  num.to_s.chars.each { |ele| sum += ele.to_i }
  sum
end

# 10. What's my Bonus?
def calculate_bonus(num, boo)
  boo ? num / 2 : 0
end
=end
