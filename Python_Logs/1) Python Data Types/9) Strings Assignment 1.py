# 1) Create a string variable and assign a value of "New York" to it. Print character Y from this string.
var1 = 'New York'
print(var1[4])

# 2) Create a string variable and assign a value of "London" to it. Print first 3 characters of the string.
var1 = 'London'
print(var1[0:3])

# 3) Write code to print the last character of the string. The print statement and indexing should remain same, even if you change the value from London to New York.
var1 = 'New York'
print(var1[-1])

# 4) Write the code to convert a string with numbers to an integer and from integer to string.
var1 = '1234'

var2 = int(var1)
print(type(var2))
print(var2)

var1 = str(var2)
print(type(var1))
print(var1)