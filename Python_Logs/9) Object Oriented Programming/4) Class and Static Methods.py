class Student:

    # Class Attribute:
    country = 'India'

    # Object Attributes:
    def __init__(self, first_name, last_name, gender, enrollment_no):

        self.first_name = first_name
        self.last_name = last_name
        self.gender = gender
        self.enrollment_no = enrollment_no

    def get_enrollment_no(self): # Getter (Accessor) Method: Gets Object Attribute.
        return self.enrollment_no

    def set_enrollment_no(self, value): # Setter (Mutator) Method: Sets or Updates Object Attribute.
        self.enrollment_no = value

    @classmethod          # To Set The Method as Class Method.
    def get_country(cls): # As the method helps to get Class Attribute, even when no object of class is created, we use 'cls' keyword instead of 'self'.
        return cls.country

    @classmethod                 # To Set The Method as Class Method.
    def set_country(cls, value): # As the method helps to get Class Attribute, even when no object of class is created, we use 'cls' keyword instead of 'self'.
        cls.country = value

    @staticmethod               # To Set The Method as Static Method.
    def get_status(mark):      # As The Method doesn't work on Object or Class Attributes at all, we don't need to use 'self' or 'cls' as Parameter.
        return mark >= 60

# Object:
s1 = Student('Bruce', 'Wayne', 'M', 'e_001')

# Get - To Get Value of Object Attribute:
# s1.enrollment_no # This Works but is not The Right Practice to Get Object Attribute Value.
print(s1.get_enrollment_no())

# Set = To Set or Update Value of Object Attribute:
# s1.enrollment_no = 'E_1001' # This Works but is not The Right Practice to Set ot Update Object Attribute Value.
s1.set_enrollment_no('E_1001')
print(s1.get_enrollment_no())

# Class Method:
print(Student.get_country())
Student.set_country('Germany')
print(Student.get_country())

# Static Methods: Don't Work (USe or Update) on Objects or Object Attributes or Class Attributes.
marks = int(input('Enter Marks: '))
print(Student.get_status(marks))