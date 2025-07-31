# Variable Length or Arbitrary Keyword Arguments:

def myfunction(**kwargs): # can Use any Name instead of kwargs.
    print(kwargs)
    print(type(kwargs))

myfunction(name= 'Batman', age= 40, gender= 'M')

# -----------------------------------------------------------------------------------------------
def myfunction(required, *args, **kwargs): # *args has to be before **kwargs.
    print(f'Required Argument: {required}')
    print(f'Variable Length Argument: {args}')
    print(f'Variable Length Keyword Argument: {kwargs}')

myfunction('ID-001',
           75, 79, 82, 68,
           name= 'Batman', age= 40, gender= 'M')