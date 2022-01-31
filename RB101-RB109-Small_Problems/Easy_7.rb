=begin
# 1. Combine Two Lists
def interleave(array1, array2)
  combined = []
  counter = 0
  while counter <= array1.size - 1
    combined << array1[counter]
    combined << array2[counter]
    counter += 1
  end
  combined
end

# Further Exploration
def interleave(array1, array2)
  array1.zip(array2).flatten
end

# 2. Lettercase Counter
def letter_case_count(string)
  counts = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }
  string.each_char do |ele|
    if ("a".."z").to_a.include?(ele)
      counts[:lowercase] += 1
    elsif ("A".."Z").to_a.include?(ele)
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end
  counts
end

# 3. Capitalize Words
def word_cap(string)
  string.split.each(&:capitalize!).join(" ")
end

# 4. Swap Case
def swapcase(string)
  string.chars.map {|let| let =~ /[a-z]/ ? let.upcase : let.downcase}.join
end

# 5. Staggered Caps (Part 1)
def staggered_case(string)
  staggered = string.chars.each_with_index do |ele, index|
    index.even? ? ele.upcase! : ele.downcase!
  end
  staggered.join
end

# 6. Staggered Caps (Part 2)
def staggered_case(string)
  staggered = ""
  counter = 0
  string.each_char do |ele|
    if ele =~ /[a-zA-Z]/
      counter.even? ? staggered << ele.upcase : staggered << ele.downcase
    else
      staggered << ele
    end
    counter += 1 if ele =~ /[a-zA-Z]/
  end
  staggered
end

# 7. Multiplicative Average
def show_multiplicative_average(array)
  format("%.3f", (array.inject(:*) / array.size.to_f))
end

# Further Exploration
If you omit the #to_f method, you will always see 3 zeros after the decimal.

# 8. Multiply Lists
def multiply_list(array1, array2)
  multiplied = []
  array1.each_with_index do |num, index|
    multiplied << num * array2[index]
  end
  multiplied
end

# Further Exploration
def multiply_list(array1, array2)
  array1.zip(array2).map {|sub_arr| sub_arr.inject(:*) }
end

# 9. Multiply All Pairs
def multiply_all_pairs(array1, array2)
  products = []
  array1.each do |num1|
    array2.each do |num2|
      products << num1 * num2
    end
  end
  products.sort
end

# 10. The End Is Near But Not Here
def penultimate(string)
  string.split[-2]
end

#Further Exploration
def penultimate(string)
  array_of_words = string.split
  middle_index = array_of_words.size / 2
  array_of_words[middle_index]
end
=end
