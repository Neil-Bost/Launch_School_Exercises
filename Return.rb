#1. Breakfast, Lunch, or Dinner? (Part 1)
# Breakfast
# This is because calling the 'meal' method will print the return value of
# the method, which in this case is the string 'Breakfast'.

#2. Breakfast, Lunch, or Dinner? (Part 2)
# Evening
# This is because the return value of the 'meal' method is the string 'Evening'.

#3. Breakfast, Lunch, or Dinner? (Part 3)
# Breakfast
# This is because the 'meal' method immediately exits the method upon returning
# the string 'Breakfast'.

#4. Breakfast, Lunch, or Dinner? (Part 4)
# Diner
# Breakfast
# This is becuase the method first prints the string 'Dinner', then returns the 
# string 'Breakfast'.

#5. Breakfast, Lunch, or Dinner? (Part 5)
# Dinner
# nil
# This is because the 'p' command prints the return value along with anything else the method prints.

#6. Breakfast, Lunch, or Dinner? (Part 6)
# Breakfast
# This is because the method explicitly returns the string 'Breakfast', then exits the method before
# printing anything else.

#7. Counting Sheep (Part 1)
# 0
# 1
# 2
# 3
# 4
# 5
# Calling the method will print the times method, and also the return value of the method,
# which is the initial integer of the times method.

#8. Counting Sheep (Part 2)
# 0
# 1
# 2
# 3
# 4
# 10
# This is because the code will first print the result of the times method (0-4),
# then return the return value of the count_sheep method, which in this case is the 
# implicitly returned integer 10.

#9. Counting Sheep (Part 3)
# 0
# 1
# 2
# nil
# This is because the code will print the times method up until the condition of the
# if statement is met (sheep >= 2). This means the times method will print 0-2.
# The times method then explicitly returns a value of nil (because there was no value provided for the return value).
# Using 'p' to call the method will also print the return value, in this case 'nil'.

#10. Tricky Number
# 1
# This is because variable assignment always returns the value that is assigned.