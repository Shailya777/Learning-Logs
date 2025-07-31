name = input('Please Enter Your Name: ')

for i, letter in enumerate(name):
    print(f'Character number {i+1} is {letter}')

#---------------------------------------------------------

name = input('Please Enter Your Name: ')

for i, letter in enumerate(name, start= 100):
    print(f'Character number {i} is {letter}')