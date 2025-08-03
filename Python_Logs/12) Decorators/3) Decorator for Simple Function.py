def type_conv(func):
    def wrapper(a, b):
        return func(int(a), int(b))

    return wrapper

@type_conv          # Useful when we have full access to source code of function.
def add(a, b):
    return a + b

@type_conv          # Useful when we have full access to source code of function.
def sub(a, b):
    return a - b

a = '2'
b = 3

print(add(a, b))
print(sub(a, b))

# int_add = type_conv(add) # Useful when the Source code of function is not available
# int_sub = type_conv(sub) # Useful when the Source code of function is not available
#
# print(int_add(a, b))
# print(int_sub(a, b))