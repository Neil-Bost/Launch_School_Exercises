#1. First Car
car = { 
  type:    "sedan", 
  color:   "blue", 
  mileage: 80_000 }

#2. Adding the Year
car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000
}
car[:year] = 2003

#3. Broken Odometer
car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}
car.delete(:mileage)

#4. What Color?
car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}
puts car[:color]

#5. Labeled Numbers
numbers = {
  high:   100,
  medium: 50,
  low:    10
}
numbers.each do |height, num|
  puts "A #{height} number is #{num}."
end

#6. Divided by Two
numbers = {
  high:   100,
  medium: 50,
  low:    10
}
half_numbers = numbers.map { |k, v| v / 2 }
p half_numbers

#7. Low, Medium, or High?
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select { |k, v| v < 25 }
p low_numbers

#8. Low or Nothing
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers
p numbers

#9. Multiple Cars
vehilces = {
  car:  { type: "sedan",
         color: "blue",
          year: 2003
        },
         
  truck:{ type: "pickup",
         color: "red",
          year: 1998
        }
}

#10. Which Collection?
car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]