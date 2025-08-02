# Constructor Inheritance: Multiple Inheritance


class University:

    def __init__(self, u_name, **kwargs):
        super().__init__(**kwargs)
        self.u_name = u_name

    def get_uname(self):
        print('Inside "Get uname" Method')
        print(self.u_name)

class Grants:

    def __init__(self, g_name, **kwargs):
        super().__init__(**kwargs)
        self.g_name = g_name

    def get_gname(self):
        print('Inside "get gname" Method')
        print(self.g_name)

class Student(University, Grants):

    def __init__(self, f_name, u_name, g_name):
        super().__init__(u_name=u_name, g_name=g_name)
        self.fname = f_name

    def get_fname(self):
        print('Inside "get fname" Method')

u_name = 'Nirma University'
g_name = 'Research and Development'
f_name = 'Bruce'

u1 = University(u_name)
g1 = Grants(g_name)
s1 = Student(f_name, u_name, g_name)

s1.get_uname()
s1.get_gname()
s1.get_fname()