list1 = ['Batman', 'Superman', 'Captain America', 'Wonder Woman']

# Accessing Elements:
print(list1[0])
print(list1[1])
print(list1[-1])

# Accessing Portion of List:
print(list1[0:3])
print(list1[0:4:2])
print(list1[-3:-1])
print(list1[:3])
print(list1[2:])
print(list1[::2])
print(list1[::])

# Access all the elements and process the data:
print('Elements in Our List are:')
for element in list1:
    print(element)

# Search Elements in the List:
sname = input('Enter a name to Search: ')
if sname in list1:
    print('Name Found.')
else:
    print('Name Not Found.')