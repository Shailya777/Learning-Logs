# Constructor Inheritance:

class University:

    def __init__(self, uname):
        self.uname = uname

    def get_uname(self):
        print('Inside "get uname" Method')
        print(self.uname)

class Student(University):

    def __init__(self, fname, uname):
        super().__init__(uname)
        self.fname = fname

    def get_fname(self):
        print('Inside "get fname" Method')

u_name = 'Nirma University'
f_name = 'Bruce'

u1 = University(u_name)
s1 = Student(f_name, u_name)

s1.get_uname()
