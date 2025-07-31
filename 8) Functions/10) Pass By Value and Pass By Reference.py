# Python Does Not Pass By Value or Pass By Reference.
# Python Does 'Pass By Object Reference'.

# Immutable Object Spaces in Python: int. str, float, tuple.
# Mutable Object Spaces in python: list, dict, set, User Defined Classes.

#===============================================================================================
'''
Call a Function:------------>Pass The Object Reference/Address:---(Re-Assignment)
                                        |                                 |
                                        |                                 |
                                     (Change)                             |
                                        |                                 |
                                        |                                 |
                                    Object Is Mutable?-----(NO)-----> Create a Local Reference
                                        |
                                        |
                                      (YES)
                                        |
                                        |
                                    Use The Global Reference
'''
#================================================================================================

# Passing immutable objects as arguments:
def _fun(var1):
    print(f'Address-1 Inside The Function: {id(var1)}')
    print(f'Value-1 Inside The Function: {var1}')

    var1= 'xyz'

    print(f'Address-2 Inside The Function: {id(var1)}')
    print(f'Value-2 Inside The Function: {var1}')

var1 = 'abc'
print('')
print(f'Address Before The Function Call: {id(var1)}')
print(f'Value Before The Function Call: {var1}')
print('')

_fun(var1)

print('')
print(f'Address After The Function Call: {id(var1)}')
print(f'Value After The Function Call: {var1}')

print('-----------------------------------------------------------------------------------------')
# Passing mutable objects as arguments for re-assignment:
def _fun1(var1):
    print(f'Address-1 Inside The Function: {id(var1)}')
    print(f'Value-1 Inside The Function: {var1}')

    var1= ['xyz']

    print(f'Address-2 Inside The Function: {id(var1)}')
    print(f'Value-2 Inside The Function: {var1}')

var1 = ['abc']
print('')
print(f'Address Before The Function Call: {id(var1)}')
print(f'Value Before The Function Call: {var1}')
print('')

_fun1(var1)

print('')
print(f'Address After The Function Call: {id(var1)}')
print(f'Value After The Function Call: {var1}')
print('-----------------------------------------------------------------------------------------')

#-------------------------------------------------------------------------------------------------
# Passing mutable objects as arguments for operation:
def _fun2(var1):
    print(f'Address-1 Inside The Function: {id(var1)}')
    print(f'Value-1 Inside The Function: {var1}')

    var1.append('xyz')

    print(f'Address-2 Inside The Function: {id(var1)}')
    print(f'Value-2 Inside The Function: {var1}')

var1 = ['abc']
print('')
print(f'Address Before The Function Call: {id(var1)}')
print(f'Value Before The Function Call: {var1}')
print('')

_fun2(var1)

print('')
print(f'Address After The Function Call: {id(var1)}')
print(f'Value After The Function Call: {var1}')
print('-----------------------------------------------------------------------------------------')