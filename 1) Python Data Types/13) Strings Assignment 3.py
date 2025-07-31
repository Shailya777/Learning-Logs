'''
1) Write the code to separate the values from the following string and
store them in different variables of name, last name, city, age and the salary.
"John|Woods|Chicago|31|9000"
'''
var = 'John|Woods|Chicago|31|9000'
first_name, last_name, city, age, salary = var.split('|')
print(first_name)
print(last_name)
print(city)
print(age)
print(salary)

# 2) In the above code, check if the age and salary are numeric.
# Also, convert the age into an integer and salary into float variables.
print(age.isnumeric())
print(salary.isnumeric())

age = int(age)
salary = float(salary)

print(type(age), type(salary))

'''
3) In the following string, separate the values on "|". 
But the name has got some junk commas. Remove all the commas from the name.
",,Edward,,|Smith|8000"
'''
var = ',,Edward,,|Smith|8000'
first_name, last_name, salary = var.split('|')
print(first_name)
first_name = first_name.strip(',')
print(first_name)

# 4) From the following string replace apple with Mango and store
# it in a new variable as var2.
#
# var1 = "Apple is a fruit. Apple is sweet."
var1 = 'Apple is a fruit. Apple is sweet.'
var2 = var1.replace('Apple', 'Mango')
print(var2)

'''
5) From the user, accept the name of the city and then the state. Print a statement that the city belong to the state. For example,
"Chicago is in the state of Illinois."
Use the format method with named indices or keys.
'''
user_city = input('Enter Name of The City: ')
user_state = input('Enter Name of The State: ')
result = '{city} is in the state of {state}.'
print(result.format(state = user_state, city = user_city))
