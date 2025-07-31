class Student:

    # Class Attribute:
    country = 'India'

    # Object Attributes:
    def __init__(self, first_name, last_name, gender, enrollemnt_no):

        self.first_name = first_name
        self.last_name = last_name
        self.gender = gender
        self.enrollment_no = enrollemnt_no

    def get_enrollment_no(self): # Getter (Accessor) Method: Gets Object Attribute.
        return self.enrollment_no

    def set_enrollment_no(self, value): # Setter (Mutator) Method: Sets or Updates Object Attribute.
        self.enrollment_no = value


# Object:
s1 = Student('Bruce', 'Wayne', 'M', 'e_001')

# Get - To Get Value of Object Attribute:
# s1.enrollment_no # This Works but is not The Right Practice to Get Object Attribute Value.
print(s1.get_enrollment_no())

# Set = To Set or Update Value of Object Attribute:
# s1.enrollment_no = 'E_1001' # This Works but is not The Right Practice to Set ot Update Object Attribute Value.
s1.set_enrollment_no('E_1001')
print(s1.get_enrollment_no())