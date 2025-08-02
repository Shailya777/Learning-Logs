'''
1) Define and initialize three string variables for London, New York and Chicago.
Create a concatenated string with three names.
The three names should be separated by comma as follows:

London,New York,Chicago
'''
a = 'London'
b = 'New York'
c = 'Chicago'

conc_str = a + ',' + b + ',' + c
print(conc_str)

# 2) Convert the string from the output of the first question to all upper case or all lower case.
print(conc_str.upper())
print(conc_str.lower())

# 3) Create a string variable. Write the code to get the length of the string.
var1 = 'I am Batman!'
print(len(var1))

'''
4) Write the code to produce the following output.
The order number 9876 from Chicago is worth 789.25.
The order number, city name and the amount should come from variables.
'''
order_no = 9876
city_name = 'Chicago'
order_amt = 789.25

print('The order number %i from %s is worth %f' %(order_no, city_name, order_amt))