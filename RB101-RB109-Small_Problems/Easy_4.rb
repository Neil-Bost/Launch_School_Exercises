=begin
# 1. Short Long Short
def short_long_short(string1, string2)
  if string1.size > string2.size
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end


# 2. What Century is That?
def suffix(century)
  if century[-2..-1] == '11'
    'th'
  elsif century[-2..-1] == '12'
    'th'
  elsif century[-2..-1] == '13'
    'th'
  elsif century[-1] == '1'
    'st'
  elsif century[-1] == '2'
    'nd'
  elsif century[-1] == '3'
    'rd'
  else
    'th'
  end
end

def century(year)
  i = 0
  loop do
    range = (i..(i+100))
   break if range.include?(year)
    i += 100
  end
  
  century = ((i + 100)/100).to_s
  century + suffix(century)
 
end


# 3. Leap Years (Part 1)
def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      year % 400 == 0
    else
      true
    end
  else
    false
  end
      
end


# 4. Leap Years (Part 2)
def leap_year?(year)
  if year >= 1752
    if year % 4 == 0
      if year % 100 == 0
        year % 400 == 0
      else
        true
      end
    else
      false
    end
  else
    year % 4 == 0
  end
      
end


# 5. Multiples of 3 and 5
def multisum(integer)
  multiples_of_three_and_five = []
  
  three_multiple = 0
  (integer/3).times { multiples_of_three_and_five << three_multiple += 3 }
  
  five_multiple = 0  
  (integer/5).times { multiples_of_three_and_five << five_multiple += 5 }
  
  multiples_of_three_and_five.uniq.sum
end

### Further Exploration
def multisum(integer)
  multiples_of_three_and_five = []
  
  three_multiple = 0
  (integer/3).times { multiples_of_three_and_five << three_multiple += 3 }
  
  five_multiple = 0  
  (integer/5).times { multiples_of_three_and_five << five_multiple += 5 }
  
  multiples_of_three_and_five.uniq.inject(:+)
end


# 6. Running Totals
def running_total(array)
  total = 0
  array_with_totals = []
  
  array.each_index do |i|
    total += array[i]
    array_with_totals << total
  end
  
  array_with_totals
end

### Further Exploration
def running_total(array)
  sum = 0
  array.each_with_object([]) do |num, a|
    sum += num
    a << sum
  end
end


# 7. Convert a String to a Number
def string_to_integer(digits)
  sum = 0
  numbers = %w(0 1 2 3 4 5 6 7 8 9)
  
  index = -1
  place = 1
  digits.each_char do |digi|
    sum += (numbers.index(digits[index]) * place)
    place *= 10
    index -= 1
  end
  
  sum
end

### Further Exploration
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, 
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11, 
  'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15
}

def hexadecimal_to_integer(string)
  array = string.upcase.chars.map { |ele| DIGITS[ele] }
  
  index = -1
  power = 0
  sum = 0
  array.each do |num|
    sum += array[index] * 16 ** power
    index -= 1
    power += 1
  end
  
  p sum
end


# 8. Convert a String to a Signed Number!
def string_to_signed_integer(digits)
  sum = 0
  numbers = %w(0 1 2 3 4 5 6 7 8 9)
  
  index = -1
  place = 1
  digits.each_char do |digi|
    if digits[index] == '-'
      sum *= -1
      break
    elsif digits[index] == '+'
      break
    else
      sum += (numbers.index(digits[index]) * place)
      place *= 10
      index -= 1
    end
  end
  
  sum
end

### Further Exploration
def string_to_signed_integer(string)
  whole_string_minus_first = string_to_integer(string[1..-1])
  case string[0]
  when '-' then -whole_string_minus_first
  when '+' then whole_string_minus_first
  else          string_to_integer(string)
  end
end


# 9. Convert a Number to a String!
DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(number)
  array = number.digits.reverse
  string = ''
  array.each do |num|
    string << DIGITS[num]
  end
  string
end

### Further Exploration
Mutating methods that don't end with !:
  String: String#<<
          String#[]=
  Array:  Array#<<
          Array#[]=
          Array#clear
          Array#delete
          Array#delete_at
          Array#delete_if
          Array#push
          Array#pop
          Array#shift
          Array#replace
  Hash:   Hash#[]=
          Hash#clear
          Hash#delete
          Hash#delete_if
          Hash#replace
Methods that end with ! with non-mutating forms:
  String: none
  Array:  Array#sort_by!
  Hash:   none


# 10. Convert a Signed Number to a String!
DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(number)
  array = number.digits.reverse
  string = ''
  array.each do |num|
    string << DIGITS[num]
  end
  string
end

def signed_integer_to_string(number)
  if number.positive?
    '+' + integer_to_string(number)
  elsif number.negative?
    number *= -1
    '-' + integer_to_string(number)
  else
    integer_to_string(number)
  end
end

### Further Exploration

=end
