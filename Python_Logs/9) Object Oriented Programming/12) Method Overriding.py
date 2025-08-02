# Method Overriding:

class Geometry:

    def describe(self):
        print('I am a Geometrical Shape.')

class Square(Geometry):

    def describe(self): # Overrides describe method of Parent Class.
        # super().describe() Can be used to access method from Parent Class too.
        print('I am a Square.')

class Circle(Geometry):
    pass

s1 = Square()
c1 = Circle()

s1.describe()
c1.describe()