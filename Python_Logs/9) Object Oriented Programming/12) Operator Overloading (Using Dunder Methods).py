# Operator Overloading:

"""
a = 10 (same as a = int(10))
b = 20 (same as b = int(20))
c = a + b (same as c = a.__add__(b) as both a and b are objects of int class and int class has
            __add__ method defined to add two objects of the class.)

Here, + operator is mapped to __add__ method of int class.
Any method with __ before and after it's name is called special or Dunder method.
We can use dunder method to define and map operators to methods for user defined functions
and objects too, as can be seen in example below.

# ==================================================
# Operator ---->  Method
# ==================================================
#    +         object.__add__(self, other)
#    -         object.__sub__(self, other)
#    *         object.__mul__(self, other)
#    &         object.__and__(self, other)
#    +=        object.__iadd__(self, other)
#    -=        object.__isub__(self, other)
#    *=        object.__imul__(self, other)
#    /=        object.__idiv__(self, other)
#    <         object.__lt__(self, other)
#    <=        object.__le__(self, other)
#    ==        object.__eq__(self, other)
#    !=        object.__ne__(self, other)
#    >=        object.__ge__(self, other)
#    >         object.__gt__(self, other)
#
# https://docs.python.org/3/library/operator.html
#
# ==================================================

"""

class Circle:

    def __init__(self, radius):
        self.radius = radius

    def __add__(self, other):
        new_radius = self.radius + other.radius
        return Circle(new_radius)

c1 = Circle(1)
c2 = Circle(1)
c3 = c1 + c2