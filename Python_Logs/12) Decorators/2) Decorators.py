# Adding Functionality of Capitalizing to both hello and hru functions using decorator:

def accept_function(func):

    def inner_function(name):
        return func(name.capitalize())

    return inner_function

def hello(name):
    print(f'Hello {name}!')

def hru(name):
    print(f'How are you, {name}?')

new_func = accept_function(hru)
new_func(name= 'BRUCE')