# 1) List Initialization Using Initial set of values:

list1 = ['Batman', 'Superman', 'Captain America']
print(list1)

# 2) Using Empty Square Brackets:

list2 = []
print(list2)

# 3) using List Function:

list3 = list()
print(list3)

# 4) By assigning or copying existing List:

list4 = list1 # Just assigning another label to existing list.
list5 = list1.copy() # Copy the content to different location.

print(f'List1: {list1}')
print(f'List4: {list4}')
print(f'List5: {list5}')

list1.append('Wonder Woman')
print(f'List1: {list1}')
print(f'List4: {list4}')
print(f'List5: {list5}')