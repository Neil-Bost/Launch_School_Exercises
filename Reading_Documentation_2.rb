# 1. Methods Without Arguments
p "xyz".upcase

# 2. Required Arguments
a = %w(a b c d e)
p a.insert(3, 5, 6 ,7)

# 3. Optional Arguments
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
### 1)
puts s.split.inspect
# ["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]
### 2)
puts s.split(',').inspect
# ["abc def ghi", "jkl mno pqr", "stu vwx yz"]
### 3)
puts s.split(',', 2).inspect
# ["abc def ghi", "jkl mno pqr,stu vwx yz"]