'''
1) Write code to accept the numbers from the user.
If they are equal, print “Both are equal. “.
Otherwise print a statement as “The numbers are not equal.”
'''
num1 = int(input('Enter Number 1: '))
num2 = int(input('Enter Number 2: '))
if num1 == num2:
    print("Both are equal.")
else:
    print('The numbers are not equal.')

'''
2) Accept the input from the user. The user can enter a string or a number. 
If the user enters a number, don’t do anything. 
But if the user enters a string such as "abc", provide a message,
“Error: Expected a number.”
'''
var = input('Enter a Valid Number: ')
if var.isnumeric():
    pass
else:
    print('Error: Expected a number.')

'''
3) Accept a number from the user and print whether it is odd or even. 
Make use of f-string to print the number inside the string.
'''
num = int(input('Enter a Number: '))
if num % 2 == 0:
    print(f'{num} is Even!')
else:
    print(f'{num} is Odd!')

'''
4) An ecommerce company adds a delivery charge of $2.00 to the orders below $50. 
Ask the user to enter the total order value and add an appropriate delivery charge. 
Print total payable amount.
'''
order_value = float(input("Enter The Total Order Amount: "))
if order_value < 50:
    payable_amt = order_value + 2.00
else:
    payable_amt = order_value
print(f'Your Total Payable Amount is {payable_amt}')

'''
5) An ecommerce company has decided to give higher discounts for higher order values. 
Ask the user to enter the order value. Apply the discount based on the purchase amount. 
Display the final payable amount. The discount slabs are as follows,
a. Less than $100, no discount
b. Greater than $100, 5% discount.
c. Greater than $200, 10% discount.
d. Greater than $300, flat $50 discount.
'''
order_value = float(input("Enter The Total Order Amount: "))
if order_value > 300:
    payable_amt = order_value - 50
elif order_value > 200:
    payable_amt = order_value - order_value*0.1
elif order_value > 100:
    payable_amt = order_value - order_value*0.05
else:
    payable_amt = order_value
print(f'Your Total Payable Amount is {payable_amt}')