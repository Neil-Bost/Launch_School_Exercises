=begin
# 1. Class and Instance Methods
File::path returns the string representation of the path of the file on which
it is called. It is a public class method (denoted by '::').

File#path returns the pathname used to create the file on which it is called as
a string. It is a public instance method (denoted by '#').

# 2. Optional Arguments Redux
puts Date.civil
=> #<Date: -4712-01-01 ...>
puts Date.civil(2016)
=> #<Date:  2016-01-01 ...>
puts Date.civil(2016, 5)
=> #<Date: 2016-05-01 ...>
puts Date.civil(2016, 5, 13)
=> #<Date: 2016-05-13 ...>

# 3. Default Arguments in the Middle
=> [4, 5, 3, 6]

# 4. Mandatory Blocks
a.bsearch {|x| x > 8 }

# 5. Multiple Signatures
puts a.fetch(7)
=> out of bounds error
puts a.fetch(7, 'beats me')
=> beats me
puts a.fetch(7) { |index| index**2 }
=> 49

# 6. Keyword Arguments
=> 5
=> 8

# 7. Parent Class
puts s.public_methods(false).inspect

8. Included Modules
puts a.min(2)

9. Down the Rabbit Hole
Found in the Psych documentation. ::load_file loads the document contained in
the file on which it is called.
