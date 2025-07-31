'''
1) Print first ten even numbers.
'''
# Using FOR Loop:
count = 0
for i in range(1, 100, 1):
    if i % 2 == 0:
        print(i)
        count += 1
        if count == 10:
            break

# Using WHILE Loop:
count = 0
i = 0
while count < 10:
    i += 1
    if i % 2 == 0:
        print(i)
        count += 1

'''
2) Write the program to print all the elements of a string one by one.
'''
var_str = input("Please Enter Your Name: ")
for letter in var_str:
    print(letter)

'''
3) Name can not have numbers. However, some variables can accidentally have numbers.
Write a program to check if a given string of name has a number in it or not.
'''
var_str = input("Enter any String: ")
for letter in var_str:
    if letter.isnumeric():
        print(f"Sorry! Number {letter} Detected in a String.")
        break

'''
4) Accept 5 numbers from the user. 
In the end, print the average of 5 numbers accepted from the user.
'''
count = 0
total = 0
while count < 5:
    num = int(input("Please Enter a Number: "))
    count += 1
    total += num
print(f'Average of Entered Numbers is: {total / 5}')

'''
5) Accept the input, either a string or number, from the user in a loop. 
Print the input given by the user. The loop should terminate only after the user has entered “Q”.
'''
flag = True
while flag:
    var = input('Enter a String or a Number (Enter Q if you want to Quit the Program): ')
    if var == 'Q':
        break
    print(f'You have Entered: {var}')

'''
6) Accept the numbers from the user until he or she enters Q. 
Before terminating the program, print the average of the accepted numbers.
'''
total = 0
count = 0
avg = 0
flag = True

while flag:
    num = input("Please Enter a Number (Enter Q if you want to Quit The Program): ")
    if num == "Q":
        break
    total += float(num)
    count += 1

if count > 0:
    avg = total / count

print(f'Average of All Entered Numbers is: {avg}')

'''
7) Print all the prime numbers starting from 2 to 100.
'''
for i in range(2, 101, 1):
    for j in range(2, i, 1):
        if i % j == 0:
            break
    else:
        print(f'{i} is a Prime Number.')