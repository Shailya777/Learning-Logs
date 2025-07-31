# Default Arguments:
# 1) Similar to Required / Positional Arguments but with Default values:
# 2) Takes from 0 to n Arguments
# 3) Accepts Default Arguments when Not Provided in Function Call.

#-----------------------------------------------------------------------------------------------
def myfunction(var1 = 0, var2 = 0):
    print(f'Var1 is : {var1}')
    print(f'Var2 is : {var2}')
    return var1 + var2

a, b = 10, 20
print(myfunction()) # Calling Function without Providing any Arguments, Prompting Usage of Default Values.
print(myfunction(a)) # Calling Function with just 1 argument, prompting usage of one default value.
print(myfunction(a, b)) # Calling with both arguments, no default value usage.

#-----------------------------------------------------------------------------------------------
def myfunction(var1, var2 = 0): # Positional Arguments Comes first, then we can use arguments with default values.
    print(f'Var1 is : {var1}')
    print(f'Var2 is : {var2}')
    return var1 + var2

a, b = 10, 20
# print(myfunction()) # Will Give Error as Function requires at least one argument to be passed when called.
print(myfunction(a)) # Calling with One Positional Argument and One Default.
print(myfunction(a, b)) # Calling With Both Arguments, no Default Value Usage.
#-----------------------------------------------------------------------------------------------
# def myfunction(var1 = 0, var2): # This won't work as Non-Default / Positional Argument is put after Default Argument.
#     print(f'Var1 is : {var1}')
#     print(f'Var2 is : {var2}')
#     return var1 + var2