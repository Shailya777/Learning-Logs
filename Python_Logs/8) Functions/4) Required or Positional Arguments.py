# Required or Positional Arguments:
# 1) Number of Arguments passed must be same as expected.
# 2) The arguments must be in the same sequence.

def myfunction(var1, var2):
    print(f'Var1 is : {var1}')
    print(f'Var2 is : {var2}')
    return var1 + var2

a, b = 10, 20
res = myfunction(a, b)
# res= myfunction(a) # Error: myfunction() missing 1 required positional argument: 'var2'
# res = myfunction(a, b, 10) myfunction() takes 2 positional arguments but 3 were given
print(res)

res = myfunction(b, a)
print(res)