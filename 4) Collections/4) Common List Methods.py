# Accept The List Elements:
var_t = True
num_list = []
while var_t:
    num = int(input('Enter a Number (Enter 0 to Quit): '))
    if num == 0:
        var_t= False # Can also use break statement here.
    else:
        num_list.append(num)

print(num_list)

# Number of Elements in List:
print(f'Number of Elements in The List: {len(num_list)}')

# Concatenate Lists:
list2 = [45, 15, 35]
con_list = num_list + list2
print(con_list)

num_list.extend(list2)
print(num_list)

# Average of List (For Numerical Lists):
avg = sum(num_list) / len(num_list)
print(f'Average of List is: {avg}')

# Sort:
num_list.sort()
print(num_list)

num_list.sort(reverse= True)
print(num_list)

# Index Method:
s_num = int(input('Enter a Number to Search for: '))
position = num_list.index(s_num) # Returns Index of First Occurrence of Given Element
print(f'Position of Given Number {s_num} is: {position}')