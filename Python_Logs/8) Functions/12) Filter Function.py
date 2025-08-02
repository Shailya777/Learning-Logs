# The filter() function is used to construct an iterator from elements of an iterable for
# which a function returns true.

# Function to return Number Greater Than 5:
def check_num(number):
    return number > 5


num_list = [4, 7, 2, 6, 10, 8, 1]
result_list = []
for element in num_list:
    if check_num(element):
        result_list.append(element)

print(result_list)

# Using Filter Function:
result_list = list(filter(check_num, num_list))
print(result_list)

# Filter Out all Zeroes and Empty Strings from List:
#==================================================
# If None is passed for function, filter() will remove elements that are inherently "falsy"
# (like 0, False, None, or empty strings/lists).
#==================================================
list1 = ['abc', 'xyz', '', 4, 0, 5]
result = list(filter(None, list1))
print(result)