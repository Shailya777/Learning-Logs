# keyword Arguments:
# 1) Parameter names are used in Function Call.
# 2) The Keys are Mapped to the Argument.
# 3) The Position of The Argument Does Not Matter.

def myfunction(name, age):
    print(f'My name is {name} and I am {age} years old.')
    return

myfunction(name= 'Batman', age= 40)
myfunction(age= 40, name= 'Batman') # Both Works despite changing order of arguments, due to usage of parameter names for passing arguments while calling function.

myname, myage = 'Batman', 40

myfunction(age= myage, name= myname)

# print(name, age) # this won't work as name and age used in function call are not variable names but rather parameter keys to be mapped to passed values.

# ----------------------------------------------------------------------------------------------

def myfunction(name, age):
    print(f'My name is {name} and I am {age} years old.')
    return

name = 'Batman'
age = 40

myfunction(name= name, age= age) # Function call Will Automatically treat first value as Parameter Key and Second as Variable.