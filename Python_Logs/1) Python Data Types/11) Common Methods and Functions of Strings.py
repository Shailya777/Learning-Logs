var1 = 'Programming is easy with Python'
#index: 0123456789012345678901234567890

# Length of String:
print(len(var1))

# Count Number of Times Given Character or Sub-String exists in String:
print(var1.count('i'))
print(var1.count('easy'))

# Find The Index of Given Character or Sub-String in String:
print(var1.index('i'))
print(var1.index('Python'))

print(var1.find('i'))
print(var1.find('Python'))

# Case Change:
print(var1.upper())
print(var1.lower())
print(var1.capitalize())

# Adding Leading and/or Trimming Spaces or Characters:
var2 = 'Python'
print(var2)

print(var2.ljust(10, ' '))
print(var2.ljust(10, '1'))

print(var2.rjust(10, ' '))
print(var2.rjust(10, '1'))

# Assigning Values to Multiple Variables at Once:
name, age = 'XYZ', 33
print(name)
print(age)

# Splitting The String:
var3 = 'John,M,42,8000,Software Developer'

name, gender, age, salary, role = var3.split(',')
print(name, gender, age, salary, role)

# isnumeric:
print(salary.isnumeric())
print(age.isnumeric())
print(gender.isnumeric())

x = '4000 '
print(x.isnumeric())

print(type(salary))
print(type(age))
salary = int(salary)
age = int(age)
print(type(salary))
print(type(age))

# Strip:
var4 = 'John        ,M,42,    8000    ,     Software Developer\n'
name, gender, age, salary, role = var4.split(',')
print(name)
print(gender)
print(age)
print(salary)
print(role)

name = name.rstrip()
print(name)

role = role.strip('\n')
role = role.lstrip()
print(role)

salary = salary.strip()
print(salary)

# Replace:
var1 = 'X plays Football. X plays Cricket.'
print(var1)

var_cur = input('Value to be Replaced:')
var_new = input('Enter new Value:')

print(var1.replace(var_cur, var_new))

#-------
var1 = 'X plays Football. X plays Cricket.'
print(var1)

var_cur = input('Value to be Replaced:')
var_new = input('Enter new Value:')
count = int(input('Number of Instances to be Replaced:'))

print(var1.replace(var_cur, var_new, count))

# String Format:
user_name = 'Gates'
order_value = int(input('Enter Order Value: '))

# 1) Format by Sequence:
result = 'The total order value for Mr. {} is ${}.'
print(result.format(user_name, order_value))

# 2) Format by Numeric Index:
result = 'Name of the Customer is {0}. The total order value for Mr. {0} is ${1}.'
print(result.format(user_name, order_value))

# 3) Format by Named Indexes or Keys:
result = 'Name of the Customer is {name}. The total order value for Mr. {name} is ${value}.'
print(result.format(name = user_name, value = order_value))