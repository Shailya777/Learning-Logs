salary = int(input('Enter your Salary:'))

if salary >= 7000:
    print("Loan Approved!")
else:
    if salary >= 5000:
        print('Manual Approval Needed!')
    else:
        print("Not Approved!")

# Using if-elif:
if salary >= 7000:
    print("Loan Approved!")
elif salary >= 5000:
    print('Manual Approval Needed!')
else:
    print('Not Approved!')