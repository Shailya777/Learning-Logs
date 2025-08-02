salary = int(input('Enter your Salary: '))

# Conventional if-else Statement:
if salary > 5000:
    print('Loan is Approved.')
else:
    print('Loan is not Approved.')

# Short Hand if Statement:
if salary > 5000 : print('Approved.')

# Short Hand if-else Statement:
print('Approved') if salary > 5000 else print('Not Approved.')