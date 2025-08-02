# Tax Rebate Calculation Using a Function:
def tax_rebate(f_tax, f_gender):
    if f_gender == 'F':
        f_tax -= 500
    if f_tax < 0:
        f_tax = 0
    return f_tax

# Getting Income and Gender From User:
income = int(input('Please Enter Your Income: '))
gender = input('Please Enter Your Gender (M/F): ').upper()

if income > 100000:
    tax = income * 0.3
elif income > 50000:
    tax = income * 0.2
    tax = tax_rebate(tax, gender)
else:
    tax = income * 0.1
    tax = tax_rebate(tax, gender)

print(f'Tax Amount is: {tax}')