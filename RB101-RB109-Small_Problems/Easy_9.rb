=begin
# 1. Welcome Stranger
def greetings(array, hash)
  name = array.join(' ')
  title = hash[:title]
  occupation = hash[:occupation]
  puts "Introducing #{name}, the #{title} #{occupation}!"
end

# Further Exploration
Use the '\' character as follows:
def greetings(name, status)
  "Hello, #{name.join(' ')}! "\
  Nice to have a #{status[:title]} #{status[:occupation]} around."
end

# 2. Double Doubles
def double_number?(num)
  string = num.to_s
  return false if string.size == 1
  mid = string.size / 2
  string.slice(mid..-1) == string.slice(0..mid-1)
end

def twice(num)
  double_number?(num) ? num : num * 2
end

# 3. Always Return Negative
def negative(num) 
  num.positive? ? num * -1 : num
end

# 4. Couting Up
def sequence(number)
  (1..number).to_a
end

# Further Exploration
def sequence(num)
  num.positive? ? (1..num).to_a : (num..1).to_a
end

# 5. Uppercase Check
def uppercase?(string)
  string.each_char { |let| return false if ("a".."z").to_a.include?(let) }
  true
end

# Further Exploration
I think it would make more sense to return false for an empty string, because
they have a value of nil.

# 6. How long are you?
def word_lengths(string)
  words = string.split
  words.each_with_index do |word, index|
    words[index] << " #{word.size}"
  end
end

# 7. Name Swapping
def swap_name(string)
  string.split.reverse.join(", ")
end

# 8. Sequence Count
def sequence(count, first)
  multiples = []
  count.times { |num| multiples << (num + 1) * first }
  multiples
end

# 9. Grade book
def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3) / 3
  case average
  when 90..100 then "A"
  when 80..89 then "B"
  when 70.. 79 then "C"
  when 60..69 then "D"
  else "F"
  end
end

# Further Exploration
def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3) / 3
  case average
  when 90..100 then "A"
  when 80..89 then "B"
  when 70.. 79 then "C"
  when 60..69 then "D"
  when 0..59 then "F"
  else "A+"
  end
end

# 10. Grocery List
def buy_fruit(array)
  full_list = []
  array.map { |fruit| fruit[1].times { full_list << fruit[0] } }
  full_list
end

# 11. Group Anagrams
def anagram(array)
  words_as_arrays = array.map { |word| word.chars }
  all_anagrams = []

  array.each do |word|
    anagram_groups = []

    words_as_arrays.each do |letters|
      if letters.all? { |lett| word.include?(lett) }
        anagram_groups << letters.join
      end
    end
    all_anagrams << anagram_groups
  end

  all_anagrams.uniq.each {|anagrams| p anagrams }
end
=end
