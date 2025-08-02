# Concatenation:
var1 = 'Hello'
var2 = 'World!'

var3 = var1 + var2
print(var3)

var3 = var1 + ' ' + var2
print(var3)

# Search for a Sub-String:
print('Hello' in var3)
print('hello' in var3)

print('H' not in var3)
print('h' not in var3)

# String Formatting using %:
print('My name is %s and my age is %i' %('X', 33))

# Raw String Operator r:
##var1 = 'C:\users\test.py'
##print(var1) # ERROR

var1 = r'C:\users\test.py'
print(var1)