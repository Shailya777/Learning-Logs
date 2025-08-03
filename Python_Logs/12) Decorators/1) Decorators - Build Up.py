"""
Decorators:
1) Function is an object.
2) Function object can be renamed or assigned.
3) Function object can be passed as an argument to another function and
   such an argument is callable.
4) Function objects can be returned and assigned.
"""
#=========================================================================================
def accept_function(func):
    print('Inside The Accept Function!')

    def inner_function():
        print('I am an Inner Function.')
        func()

    return inner_function

def hello():
    print('Hello!')

def hru():
    print('How are you?')

hello()
print(hello)

h = hello
h()

# accept_function(hello)
# accept_function(hru)

new_func = accept_function(hru)
new_func()