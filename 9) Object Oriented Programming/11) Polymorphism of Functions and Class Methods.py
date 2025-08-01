# Polymorphism of Functions and Class Methods:
import math
class Square:

    def __init__(self, side):
        self.side = side

    def area(self): # Polymorphism in Class Method
        print(self.side ** 2)

class Circle:

    def __init__(self, radius):
        self.radius = radius

    def area(self): # Polymorphism in Class Method
        print(math.pi * (self.radius ** 2))

def calculate_area(obj): # Polymorphism in Function.
    obj.area()

s1 = Square(2)
c1 = Circle(2)

calculate_area(s1) # Polymorphism in Function.
calculate_area(c1) # Polymorphism in Function.

for obj in (s1, c1):
    obj.area()  # Polymorphism in Class Method.