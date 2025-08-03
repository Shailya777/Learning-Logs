# Exception Handling:

a = input('Please Enter a: ')
b = input('Please Enter b: ')

try:
    x = int(a) / int(b)
    print(x)

except ZeroDivisionError:
    print(f'Can Not Divide by Zero.')

except ValueError:
    print('Number expected, got character or strings.')

except Exception as err:
    print(f'Error: {err}')

print('Outside Try Except Block.')