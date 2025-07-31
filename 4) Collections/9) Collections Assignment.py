'''
1) Print all the elements of the following list
list1 = [2, 3, 4, 5]
'''
list1 = [2, 3, 4, 5]
for element in list1:
    print(element)

'''
2) After printing all the elements from first question, print “done”.
'''
list1 = [2, 3, 4, 5]
for element in list1:
    print(element)
else:
    print('Done')

'''
3) From the following list print all the numbers divisible by 10.
list1 = [22, 30, 10, 15, 60, 70, 81]
'''
list1 = [22, 30, 10, 15, 60, 70, 81]
for element in list1:
    if element % 10 == 0:
        print(element)

'''
4) From the following list create two lists, one divisible by 10 and other not divisible by 10.
list1 = [22, 30, 10, 15, 60, 70, 81]
'''
list1 = [22, 30, 10, 15, 60, 70, 81]
div10 = []
n_div10 = []

for element in list1:
    if element % 10 == 0:
        div10.append(element)
    else:
        n_div10.append(element)
print(div10)
print(n_div10)

'''
5) You are given a list of integers as follows. Create a separate list for all the numbers starting with “9”.
list1 = [90, 123, 78, 900012, 678, 91, 9, 9876]
'''
list1 = [90, 123, 78, 900012, 678, 91, 9, 9876]
list_9 = []

for element in list1:
    if str(element)[0] == '9':
        list_9.append(int(element))

print(list_9)

'''
6) Create a list of 5 numbers accepted from the user.
'''
list1 = []
flag = True

while flag:
    if len(list1) == 5:
        break
    else:
        num = input('Please Enter a Number: ')
        if num.isnumeric():
            list1.append(int(num))
        else:
            print('Please Enter a Valid Number!')

print(list1)

'''
7) Accept 10 inputs from the user in a loop.
Depending upon whether the user enters an integer number or a string,
create two separate lists, one for numbers and one for string.
'''

num_list = []
str_list = []
flag = True
count = 0

while flag:
    if count == 10:
        break
    else:
        inp = input('Please Enter a String or a Number: ')

        if inp.isnumeric():
            num_list.append(int(inp))
            count += 1
        else:
            str_list.append(inp)
            count += 1

print(f'List of Entered Numbers is: {num_list}')
print(f'List of Entered Strings is: {str_list}')

'''
8) Accept the numbers from the user until he or she enters Q.
Create a list of all the numbers entered by the user.
At the end print the sum and average of the accepted numbers.
'''
num_list = []

while True:
    num = input('Please Enter a Number (Enter Q to Exit): ')

    if num == 'Q' or num == 'q':
        break
    else:
        if num.isnumeric():
            num_list.append(int(num))
        else:
            print('Please Enter a Valid Number Only!')

if len(num_list) > 0:
    print(f'Sum of Entered Numbers is: {sum(num_list)}')
    print(f'Average of Entered Numbers is: {sum(num_list) / len(num_list)}')

'''
9) Create a list of 5 names based on the user input.
Then find one of the names based on user input.
If the name is found, ask the user whether he or she wants to delete it.
If the user enters Y, delete the element and provide the message.
'''

names = []

while True:
    if len(names) == 5:
        break
    else:
        name = input('Please Enter a Name: ')
        names.append(name)

search_name = input('Enter a Name to Search in the List:')

if search_name in names:
    print(f'Name {search_name} is found in the List.')

    inp = input('Do you want to Delete the Name from The List?? (Y: Yes / N: No): ')
    if inp == 'Y' or inp == 'y':
        names.remove(search_name)

else:
    print(f'Name {search_name} Not Found in The List.')

print(names)

'''
10) You are given a list of side of a square as follows,
list_side = [2, 6, 7, 3]
Create another list, list_area, for the area of the square.
'''
list_side = [2, 6, 7, 3]
list_area = []

for side in list_side:
    list_area.append(side * side)

print(list_area)

'''
11) You are given a list of length and second list for the width of a rectangle.
list_l = [2, 3, 6, 4, 7]
list_w = [5, 9, 8, 1, 3]
Create a third list of the area of the rectangle.
'''
list_l = [2, 3, 6, 4, 7]
list_w = [5, 9, 8, 1, 3]

list_a = []

for i in range(0, len(list_l)):
    list_a.append(list_l[i] * list_w[i])

print(list_a)

'''
12) You are given a multidimensional list as follows.
list_lw = [[2,5], [3,9], [6,8], [4,1], [7,3]]

The inner list contains the length and width of the rectangle.
Write code to add the area as the third element to the inner list of the list_lw as follows,
list_lw = [[2,5,10], [3,9,27], [6,8,48], [4,1,4], [7,3,21]]
'''
list_lw = [[2,5], [3,9], [6,8], [4,1], [7,3]]

for element in list_lw:
    element.append(element[0] * element[1])

print(list_lw)