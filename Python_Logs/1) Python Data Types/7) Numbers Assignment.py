# 1) Declare a variable var1 as float. Convert it to integer and print the output.

var1 = 10.7
print(int(var1))

''' 2) What will be the output of the following code?
var1 = 10.987
var2 = 10.982
print(round(var1, 2), round(var2, 2))
'''
var1 = 10.987
var2 = 10.982
print(round(var1, 2), round(var2, 2))

# 3) Declare and initialize three variables of type integer, float and complex and then print their data type.
a = 10
b = 20.7
c = 30j

print(type(a))
print(type(b))
print(type(c))

# 4) Declare a variable and initialize it to 2. Use built-in function to calculate and print square and cube of the number.
a = 2
print(pow(a, 2))
print(pow(a, 3))

# 5) Declare a variable and initialize it to 2. Use one of the arithmetic operator to calculate and print square and cube of the number.
a = 2
print(a**2)
print(a**3)

'''
6) What will be the output of the following code?
import math
a = 20
b = 2
print(math.exp(2))
print(math.log(20))
'''
import math
a = 20
b = 2
print(math.exp(2))
print(math.log(20))
