# Sequence of Use:
# 1) In Definition of Function, Arguments with Default Value Can Not be Before Positional / Required
#    / Non-Default Arguments.
# 2) In Function Call, Keyword Arguments Can Not be Before Positional / Required Arguments.

def myfunction(name, age, gender = 'F'):
# def myfunction(name, gender = 'F', age): # This will give Error as Non-Default / Positional Parameter is after Default Parameter.
    print(name, age, gender)

my_name = 'Batman'
my_age = 40
my_gender = 'M'

myfunction(my_name, my_age, my_gender)
myfunction('Diana', 130)
myfunction(my_name, my_age, gender = my_gender)
myfunction(my_name, age= my_age, gender= my_gender)
# myfunction(name= my_name, my_age, my_gender) # ERROR: positional argument follows keyword argument.