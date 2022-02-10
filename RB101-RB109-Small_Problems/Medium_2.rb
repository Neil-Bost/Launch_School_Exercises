=begin
# 1. Longest Sentence
def longest_sentence_counter(string)
  sentences = string.split(/\.|\?|!/)
  longest_sentence = sentences[0]

  sentences.each do |words|
    longest_sentence = words if words.split.count > longest_sentence.split.count
  end

  puts ">> The longest sentence in the given paragraph is:"
  puts longest_sentence
  puts ">> It is #{longest_sentence.split.count} words long."
end

# 2. Now I Know My ABCs
def block_word?(word)
  blocks = [["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"], ["N", "A"],
          ["G", "T"], ["R", "E"], ["F", "S"], ["J", "W"], ["H", "U"],
          ["V", "I"], ["L", "Y"], ["Z", "M"]]

  word.upcase.each_char do |let|
    return false if blocks.flatten.include?(let) == false
    blocks.each do |blk|
      blocks.delete(blk) if blk.include?(let)
    end
  end
  true
end

# 3. Lettercase Percentage Ratio
def letter_percentages(string)
  size = string.size.to_f / 100
  percentages = {
    lowercase: (string.count('a-z') / size).round(1),
    uppercase: string.count('A-Z') / size.round(1),
    neither: string.count('^a-zA-Z') / size.round(1)
  }
end

# 4. Matching Parentheses?
def balanced?(string)
  return false unless string.count('(') == string.count(')')

  string.chars.each_with_index do |char, index|
    if char == '('
      return false unless array[index..-1].include?(')')
    end
  end

  true
end

# Further Exploration
def zero?(paren, square, curly)
  return false unless paren.zero?
  return false unless square.zero?
  return false unless curly.zero?
  true
end

def balanced?(string)
  parentheses = 0
  square_brackets = 0
  curly_brackets = 0

  return false if string.count("'").odd? || string.count('/"').odd?
  string.each_char do |char|
    parentheses += 1 if char == '('
    parentheses -= 1 if char == ')'
    square_brackets += 1 if char == '['
    square_brackets -= 1 if char == ']'
    curly_brackets += 1 if char == '{'
    curly_brackets -= 1 if char == '}'

    break if parentheses < 0
    break if square_brackets < 0
    break if curly_brackets < 0
  end

  zero?(parentheses, square_brackets, curly_brackets)
end

# 5. Triangle Sides
def invalid_triangle?(sides)
  return true if sides[0] + sides[1] <= sides[2]
  sides.each { |length| return true if length <= 0 }
  false
end

def triangle(s1, s2, s3)
  sides = [s1, s2, s3].sort
  case
  when invalid_triangle?(sides)
    :invalid
  when sides[0] == sides[1] && sides[1] == sides[2]
    :equilateral
  when sides[0] != sides[1] && sides[1] != sides[2] 
    :scalene
  else
    :isosceles
  end
  
end

# 6. Tri-Angles
def triangle(d1, d2, d3)
  degrees = [d1, d2, d3].sort
  
  case
  when degrees.sum != 180 || degrees[0] <= 0
    :invalid
  when degrees.include?(90)
    :right
  when degrees[-1] < 90
    :acute
  else
    :obtuse
  end
end

# 7. Unlucky Days
require 'date'

def friday_13th(year)
  start = Date.new(year)
  friday_13s = 0

  while start.year == year
    if start.day == 13
      friday_13s += 1 if start.friday?
    end
    start += 1
  end

  friday_13s
end

# 8. Next Featured Number Higher than a Given Value
def featured(num)
  loop do
    num += 1
    next unless num.odd?
    next unless num % 7 == 0
    return num unless num.digits != num.digits.uniq
    break if num >= 9_876_543_210
  end

  "There is no possible number that fulfills those requirements."
end

# 9. Bubble Sort
def bubble_sort!(arr)
  loop do
    i = 0
    swapped = false

    while i < arr.size - 1
      if (arr[i] <=> arr[i+1]) > 0 # first element is greater than second
        arr[i], arr[i+1] = arr[i+1], arr[i] # swap elements
        swapped = true
      end
      i += 1
    end
    break unless swapped
  end

  arr
end

# Further Exploration
def bubble_sort!(arr)
  n = arr.size
  loop do
    i = 0
    swapped = false

   (n-1).times do
      if (arr[i] <=> arr[i+1]) > 0 # first element is greater than second
        arr[i], arr[i+1] = arr[i+1], arr[i] # swap elements
        swapped = true
      end
      i += 1
    end
    n -= 1
    break unless swapped
  end

  arr
end

# 10. Sum Square - Square Sum
def sum_square_difference(num)
  sum = 0
  square = 0

  1.upto(num) do |i| 
    sum += i 
    square += i ** 2
  end

  (sum ** 2) - square
end
=end
