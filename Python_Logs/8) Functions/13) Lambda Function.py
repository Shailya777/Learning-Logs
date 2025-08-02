# Function to Find Area of A Square:
def sq_area(side):
    area = side ** 2
    return area

print(sq_area(4))

# Function to Find Area of A Square:
def sq_area(side):
    return side ** 2

print(sq_area(4))

# Function to Find Area of A Square:
def sq_area(side): return side ** 2

print(sq_area(4))

# Lambda Function:
area = lambda side: side ** 2
print(area(2))

print((lambda side: side ** 2)(5))

#-----------------------------------------------------------------------------------------------
def myfun(n):
    return lambda x: x ** n

square = myfun(2) # Returns lambda function -> lambda x: x ** 2
cube = myfun(3) # Returns lambda function -> lambda x: x ** 3
fourth_power = myfun(4)
fifth_power = myfun(5)

print(square(5))
print(cube(5))
print(fourth_power(5))
print(fifth_power(5))