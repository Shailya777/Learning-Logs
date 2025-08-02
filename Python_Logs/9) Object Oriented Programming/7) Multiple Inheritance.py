# Multi-Level and Multiple Inheritance:

# Parent Class:
class University:

    def __init__(self, u_name):
        self.u_name = u_name

    def get_uname(self):
        print('Inside "get_uname" method')

# Parent and Child Class:
class Campus(University):

    def __init__(self, c_name):
        self.c_name= c_name

    def get_cname(self):
        print('Inside "get_cname" method')

# Parent Class:
class Grants:

    def __init__(self, g_name):
        self.g_name= g_name

    def get_gname(self):
        print('Inside "get_gname" method')

# Child Class having Multiple Direct Parents:
class Student(Campus, Grants):

    def __init__(self, first_name):
        self.first_name = first_name

    def get_fname(self):
        print('Inside "get_fname" method')

u_name = 'Nirma University'
c_name = 'Ahmedabad'
g_name = 'Research Foundation'
f_name = 'Clark'

u1 = University(u_name)
c1 = Campus(c_name)
g1 = Grants(g_name)
s1 = Student(f_name)

# Object Of University Accessing Method From University Class:
u1.get_uname()

# Object Of Campus Accessing Method From University Class:
c1.get_uname()

# Object Of Student Accessing Method From University, Campus and Grants Classes:
s1.get_uname()
s1.get_cname()
s1.get_gname()