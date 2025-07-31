# Creating Student Class and Object:
# All Students will be from same Country.

# Class
class Student:
    # Class Attribute or Static Attribute:
    country = 'India'

    # Creating Attributes for the Class Object:
    def __init__(self, first_name, last_name, gender, enrollment_no):
        self.first_name = first_name
        self.last_name = last_name
        self.gender = gender
        self.enrollment_no = enrollment_no
        pass

    def hello(self):
        print(f'Hello {self.first_name} from {self.country}!')
        # print(f'Hello {self.first_name} from {Student.country}!')
        # Class Attribute can also be Accessed Using Class_Name.Class_Attribute (Student.country)

# Object:
s1 = Student('Bruce', 'Wayne', 'M', 'e_001')
print(type(s1))

print(s1.first_name)
print(s1.last_name)
print(s1.gender)
print(s1.enrollment_no)

s1.hello()

s2 = Student('Diana', 'Prince', 'F', 'e_002')
s2.hello()

print(Student.country) # Class Attributes can be Accessed in Main Program, Outside The Class
                        # with Class_Name.Class_Attribute.

Student.country = 'Germany' # Changing Value of Class Attribute from Main Program, Outside The Class.
                            # This will Change The Attribute Value for All The Objects of The Class, Even if Created Before The Change.
s1.hello()
s2.hello()
print(Student.country)

s1.country = 'South Africa' # Changing Value of Class Attribute for an Object.
                            # This will Change Value of Class Attribute for Mentioned Object Only, Not for All Objects.
s1.hello()
s2.hello()
print(Student.country)