# Lambda with Map:
# Finding Area of Squares:
square_sides = [1, 2, 3, 4, 5]
square_area = list(map(lambda side: side * side, square_sides))
print(square_area)

# Lambda with Filter:
# Create a list of numbers greater than 5 from another list:
lst = [10, 12, 4, 6, 2, 90, 23, 1, 56]
new_lst = list(filter(lambda number: number > 5, lst))
print(new_lst)

# Using lambda To Sort Multi-Dimensional List:
list1 = [['Batman', 92, 'A'],
         ['Superman', 80, 'A'],
         ['Diana', 71, 'B'],
         ['Selina', 75, 'B'],
         ['Steve', 83, 'D']]

list1.sort() # sorts list on first element of the list, ascending order.
print(list1)

list1.sort(key= lambda item: item) # Results Same as Above
print(list1)

list1.sort(key= lambda item: item[0]) # Results Same as Above Both
print(list1)

list1.sort(key= lambda item: item[1]) # Sorts based on second element of inner list / marks
print(list1)

list1.sort(key= lambda item: item[2]) # Sorts based on third element of inner list / Division of Class
print(list1)