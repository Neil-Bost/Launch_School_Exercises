=begin
# 1. Cute Angles
DEGREE = "\xC2\xB0"

def dms(angle)
  seconds = (angle * 3600).round
  degrees, decimal = seconds.divmod(3600)
  minutes, seconds = decimal.divmod(60)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

# Further Exploration
DEGREE = "\xC2\xB0"

def fix_range(degrees)
  loop do
    if degrees > 360
      degrees -= 360
    elsif degrees < 0
      degrees += 360
    end
    break if degrees > 0 && degrees < 360
  end
  degrees
end

def dms(angle)
  angle = fix_range(angle)
  seconds = (angle * 3600).round
  degrees, decimal = seconds.divmod(3600)
  minutes, seconds = decimal.divmod(60)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

# 2. Delete vowels
VOWELS = %(aeiouAEIOU)

def remove_vowels(array)
  array.each do |string|
    string.delete!(VOWELS)
  end
end

# 3. Fibonacci Number Location By Length
def find_fibonacci_index_by_length(length)
  a = 3
  b = 5
  c = 8
  index = 5
  loop do
    index += 1
    c = a + b
    a = b
    b = c
    break if c.digits.length >= length
  end
  index
end

# 4. Reversed Arrays (Part 1)
def reverse!(array)
  reference_array = array.map { |ele| ele }
  counter = 0
  neg_counter = -1

  loop do
    break if counter == array.size
    array[counter] = reference_array[neg_counter]
    counter += 1
    neg_counter -= 1
  end

  array
end

# 5. Reversed Arrays (Part 2)
def reverse(array)
  reversed_array = []
  index = -1

  while index >= array.size * -1
    reversed_array << array[index]
    index -= 1
  end
  reversed_array
end

# 6. Combining Arrays
def merge(array1, array2)
  (array1 + array2).uniq
end

# 7. Halvsies
def halvsies(array)
  first_half = []
  second_half = []
  
  array.each_with_index do |ele, index|
    index < array.size / 2.0 ? first_half << ele : second_half << ele
  end
  
  [first_half, second_half]
end

# Furthur Exploration
Without the float of 2.0, odd numbered arrays would have a 'middle' variable of
integers, not floats (ex: a 5 element array would be 2, not 2.5). This will cause
the program to put the middle element into the second half instead of the first,
because the middle variable will be the same as a 4 element array.

# 8. Find the Duplicate
def find_dup(array)
  duplicate = nil
  array.each_with_object([]) do |num, arr|
    duplicate = num if arr.include?(num)
    arr << num
  end
  duplicate
end

# 9. Does My List Include This?
def include?(array, search)
  array.each do |ele|
    return true if ele == search
  end
  false
end

# 10. Right Triangles
def triangle(length)
  spaces = length - 1
  stars = 1
  
  while spaces >= 0
    puts (" " * spaces) + ("*" * stars)
    spaces -= 1
    stars += 1
  end
end

# Further Exploration 1
def triangle(length)
  spaces = 0
  stars = length
  
  while stars >= 0
    puts (" " * spaces) + ("*" * stars)
    spaces += 1
    stars -= 1
  end
end

# Further Exploration 2
def triangle(length, corner)
  if corner.include?('upper')
    spaces = 0
    stars = length
  else
    spaces = length - 1
    stars = 1
  end

  length.times do |n|
    if corner.include?('right')
      puts (" " * spaces) + ("*" * stars)
    else
      puts ("*" * stars) + (" " * spaces)
    end

    if corner.include?('upper')
      spaces += 1
      stars -= 1
    else
      spaces -= 1
      stars += 1
    end

  end
end
