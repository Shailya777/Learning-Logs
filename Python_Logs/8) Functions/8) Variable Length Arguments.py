# Variable Length of Arbitrary Arguments:

def myfunction(*args): # Can use any name after * instead of args.
    print(args)
    print(type(args))

    for element in args:
        print(element)

myfunction(1)
myfunction('X', 'Y')
myfunction(1, 'X', 3)
myfunction(1, 'X', 3, 4.5)
myfunction(1, 'X', 3, 4.5, 'Batman')
myfunction(1, 'X', 3, 4.5, 'Batman', [1,2,3])
myfunction(1, 'X', 3, 4.5, 'Batman', [1,2,3], ('x', 'y'))
myfunction(1, 'X', 3, 4.5, 'Batman', [1,2,3], ('x', 'y'), {'a': 1, 'b':2})