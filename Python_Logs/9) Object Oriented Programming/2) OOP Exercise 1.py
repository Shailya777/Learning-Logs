# 1) Get Student Data From User and then Build The Object:
# 2) Create a Method to Print Data for All The Students.
# 3) Accept Marks Obtained for 3 Subjects and Print Average Marks Obtained.
# 4) Accept Marks for Maximum of 7 Subjects and Print Average Marks Obtained.

# Class:
class Student:

    # Class Attribute:
    country = 'India'

    # Object Attributes:
    def __init__(self, first_name, last_name, gender, enrollment_no):

        self.first_name = first_name
        self.last_name = last_name
        self.gender = gender
        self.enrollment_no = enrollment_no

    def print_student_info(self):

        print(f'The First Name is: {self.first_name}')
        print(f'The Last Name is: {self.last_name}')
        print(f'The Gender is: {self.gender}')
        print(f'The Enrollment Number is: {self.enrollment_no}')

    def get_avg(self, marks_lst):

        if len(marks_lst) == 0:
            return 0

        return round(sum(marks_lst) / len(marks_lst), 2)


# Accepting Data From User to Build Object:
f_name = input('Please Enter The First Name: ')
l_name = input('Please Enter The Last Name: ')
gen = input('Please Enter The Gender: ')
e_no = input('Please Enter The Enrollment Number: ')

# Creating The Object of Class Student:
s1 = Student(f_name, l_name, gen, e_no)

# Printing Data of The Object:
s1.print_student_info()

# # Accepting Marks for Three Subjects and Printing Average Marks Obtained:
# marks_list = []
# count = 0
# while count < 3:
#
#     marks = input(f'Please Enter Marks for Subject{count+1}: ')
#
#     if not marks.isdigit():
#         print('Please Provide a Valid Number.')
#     else:
#         marks_list.append(int(marks))
#         count += 1
#
#
# avg_marks = s1.get_avg(marks_list)
# print(f'Average Marks: {avg_marks}')

# Accepting Marks for Maximum of 7 Subjects and Printing Average Marks Obtained:
marks_list = []
count = 0

while count < 7:

    marks = input(f'Please Enter Marks for Subject{count+1} (Enter E to Exit): ')

    if not marks.isdigit() and marks.upper() != 'E':
        print('Please Enter a Valid Number.')

    elif marks.upper() == 'E':
        break

    else:
        marks_list.append(int(marks))
        count += 1

avg_marks = s1.get_avg(marks_list)
print(f'Average Marks: {avg_marks}')