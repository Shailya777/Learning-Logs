# Global vs Local Variables:

# Function:
def myfunction():
    var1 = 15
    print(f'var1 inside myfunction: {var1}')
    print(f'var2 inside myfunction: {var2}')

# Main Program:
var2 = 10
myfunction()
# print(f'var1 outside myfunction: {var1}') # This will Give an Error as var1 is Local to myfunction and can't be accessed outside the function.
print(f'var2 outside myfunction: {var2}')

# -----------------------------------------------------------------------------------------------
# Function:
def myfunction():
    var1 = 15
    var2 = 50
    print(f'var1 inside myfunction: {var1}')
    print(f'var2 inside myfunction: {var2}')

# Main Program:
var2 = 10
myfunction()
# print(f'var1 inside myfunction: {var1}') # This will Give an Error as var1 is Local to myfunction and can't be accessed outside the function.
print(f'var2 outside myfunction: {var2}')