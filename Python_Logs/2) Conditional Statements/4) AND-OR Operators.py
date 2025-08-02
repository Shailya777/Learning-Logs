salary = int(input('Enter your Salary: '))
age = int(input('Enter your Age: '))

# AND:
if salary >= 7000 and age >= 45:
    print('Loan Approved!')
else:
    print("Manual Approval Needed!")

# OR:
if salary >= 7000 or age >= 45:
    print('Loan Approved!')
else:
    print("Manual Approval Needed!")