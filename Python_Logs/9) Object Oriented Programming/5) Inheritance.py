# Inheritance:

# Parent Class:
class University:

    def __init__(self, u_name):
        self.u_name = u_name

    def get_uname(self):
        print('Inside "get_uname" method')

# Child Class:
class Student(University):

    def __init__(self, first_name):
        self.first_name = first_name

    def get_fname(self):
        print('Inside "get_fname" method')

u_name = 'Nirma University'
f_name = 'Clark'

u1 = University(u_name)
s1 = Student(f_name)

# Object Of University Accessing Method From University Class:
u1.get_uname()

# Object Of Student Accessing Method From University Class:
s1.get_uname()