from traceback import print_tb

list1 = ['Batman', 'Superman', 'Captain America', 'Wonder Woman']

list1.append('Spider Man') # Append element at last position in List.
print(list1)

list1.insert(1, 'Iron Man') # insert Element at Desired Position in List.
print(list1)

# Update Element of The List:
list1[1] = 'Hulk'
print(list1)

# Delete Element from The List:
del list1[1] # delete Element by Index from List.
print(list1)

list1.remove('Wonder Woman') # Remove Element by Value from List.
print(list1)

p_el = list1.pop(1) # Remove Element by Index from List.
print(list1)
print(f'Popped Element is: {p_el}')

p_el = list1.pop() # Remove The Last Element of List.
print(list1)
print(f'Popped Element is: {p_el}')

list1.clear() # Remove All the Elements from the List and Clear it.
print(list1)