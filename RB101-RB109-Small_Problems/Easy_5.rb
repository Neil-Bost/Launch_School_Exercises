=begin
# 1. ASCII String Value
def ascii_value(string)
  sum = 0
  string.each_char do |char|
    sum += char.ord
  end
  sum
end
### Further Exploration
Integer#chr
It returns the first character in the string, because String#ord only returns
the ASCII value of the first character in the string.


# 2. After Midnight (Part 1)
def format_hours(hr)
  hr -= 24 until hr < 24 if hr > 24
  hr += 24 until hr.positive? if hr.negative?
  hr -= 24 until hr < 24 if hr >= 24
  hr
end

def time_of_day(num)
  hours = 0
  minutes = 0
  
  hours += num / 60
  minutes += ((num / 60.0 - hours) * 60).round

  hours = format_hours(hours)

  format('%02d:%02d', hours, minutes)
  
end

### Further Exploration
Problem 2
def time_of_day(mins)
  hours = Time.at(mins*60).hour
  minutes = Time.at(mins*60).min
  format('%02d:%02d', hours, minutes)
end

Problem 3



# 3. After Midnight (Part 2)
def after_midnight(time)
  return 0 if time == '24:00'
  hours_and_minutes = time.split(':')
  hours = hours_and_minutes[0].to_i
  minutes = hours_and_minutes[1].to_i
  (hours * 60) + minutes
end

def before_midnight(time)
  return 0 if time == '24:00' || time == '00:00'
  hours_and_minutes = time.split(':')
  hours = hours_and_minutes[0].to_i
  minutes = hours_and_minutes[1].to_i
  1440 - ((hours * 60) + minutes)
end

### Further Exploration



# 4. Letter Swap
def swap(words)
  each_word = words.split(" ").each do | word|
    word[0], word [-1] = word[-1], word[0]
  end
  
  each_word.join(' ')
end

### Further Exploration
This method would not work, because you would never be able to put the swapped
letters back into the word from which they came, because the word is never
passed into the method. If you try to reassign the letters using the variables
'a' and 'b' you would get an error, because the variables are initialized in the
inner scope of a method, and are therefore unavailable to any outer methods.


# 5. Clean up the words
ALPHABET = ('a'..'z').to_a

def cleanup(string)
  letters_only = []

  string.each_char do |char|
    if ALPHABET.include?(char)
      letters_only << char
    else
      letters_only << ' ' unless letters_only.last == ' '
    end
  end

 letters_only.join
end


# 6. Letter Counter (Part 1)
def word_sizes(sentence)
  sizes = Hash.new(0)
  sentence.split(' ').each do |word|
    sizes[word.size] += 1
  end
  
  sizes
end


# 7. Letter Counter (Part 2)
def word_sizes(sentence)
  sizes = Hash.new(0)
  sentence.split(' ').each do |word|
    sizes[word.delete('^A-Za-z').size] += 1
  end
  sizes
end


# 8. Alphabetical Numbers
SORTED_ARRAY = [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]

def alphabetic_number_sort(array)
  array.sort_by! { |num| SORTED_ARRAY.index(num) }
end

### Further Exploration
You used Enumerable#sort_by because it is non-destructive.

def alphabetic_number_sort(array)
  array.sort { |a, b| SORTED_ARRAY.index(a) <=> SORTED_ARRAY.index(b) }
end


# 9. ddaaiillyy ddoouubbllee
def crunch(string)
  collapsed_string = ''
  string.each_char do |char|
    collapsed_string << char unless char == collapsed_string[-1]
  end
  collapsed_string
end

### With while loop and index incrementation.
def crunch(string)
  collapsed_string = ""
  index = 0
  while index == string.size
    if string[index] != collapsed_string[-1]
      collapsed_string << string[index]
    end
    index += 1
  end
    collapsed_string
end

### Further Exploration
If you stop iterating when index = text.length you would never iterate over the
last character of the string, because the index counts from 0, while the length
counts from 1.

I would guess that you did not use String#each_char becuase you wanted to use
indices to track where you are in the string, and break when the index is a
certain value, which you cannot do with String#each_char.


# 10. Bannerizer
def print_in_box(string)
  size = string.size
  top_and_bottom = '+-' + '-'*size + '-+'
  second_from_top_and_bottom = '| ' + ' '*size + ' |'
  
  puts top_and_bottom
  puts second_from_top_and_bottom
  puts '| ' + string +   ' |'
  puts second_from_top_and_bottom  
  puts top_and_bottom
end

### Further Exploration 1
def print_in_box(string)
  string.delete_suffix!(string[76..-1]) if string.size > 76
    
  size = string.size
  top_and_bottom = '+-' + '-'*size + '-+'
  second_from_top_and_bottom = '| ' + ' '*size + ' |'
  
  puts top_and_bottom
  puts second_from_top_and_bottom
  puts '| ' + string +   ' |'
  puts second_from_top_and_bottom  
  puts top_and_bottom
end

### Further Exploration 2
def print_in_box(string)
  size = string.size
  size = 76 if size > 76
  multiple = string.size / 76
  
  top_and_bottom = "+#{'-'*(size + 2)}+"
  second_from_top_and_bottom = "|#{' '*(size + 2)}|"
  
  puts top_and_bottom
  puts second_from_top_and_bottom
  
  inc = 1
  multiple.times do |char|
    start = (inc - 1) * 76
    ending = (inc * 76) - 1
    string_segment = string[start..ending].lstrip
    string_segment << " "*(76 - string_segment.length) if string_segment.length < 76
    puts "| #{string_segment} |"
    inc += 1
  end
  
  if size >= 76
    puts "| #{string[(multiple*76)..-1]}#{' '*(77 - (string[(multiple*76)..-1]).size)}|"
  else
    puts "| #{string} |"
  end
  
  puts second_from_top_and_bottom  
  puts top_and_bottom
end


# 11. Spin Me Around In Circles
You will get a different object, because once the string is turned into an array
with the String#split method, you will always be using a different object, even
if you turn it back into a string.
=end