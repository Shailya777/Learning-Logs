# Define and Call a Function:
def myfunction():
    print('This is My First Function.')

myfunction()

# Function to Multiply Two Integers:
def multiply(number1, number2):
    return number1 * number2

num1 = int(input('Enter First Number: '))
num2 = int(input('Enter Second Number: '))

result = multiply(num1, num2)
print(f'Multiplication of {num1} and {num2} is: {result}')