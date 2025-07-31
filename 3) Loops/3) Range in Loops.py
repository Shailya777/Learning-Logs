for i in range(1, 10, 1):
    print(i)
#--------------------------------------------------------------------------------------------------
name = input('Please Enter Your Name: ')
length = len(name)

for i in range(0, length, 1):
    print(f'Character number {i+1} i {name[i]}')