# Initialize Required Variables:
phonebook = []
sub_list = []

# Run The Loop:
while True:
    print('')
    print('Welcome to The PhoneBook!')
    print('-------------------------')
    print('Please choose one of The Options Below:')
    print('A: To add a Contact.')
    print('S: To Search a Contact.')
    print('E: To Exit Phonebook.')
    print('-------------------------')
    option = input('Option: ')

    if option.upper() == 'E':
        break

    elif option.upper() == 'A':

       while True:
           name = input('Enter Name: ')
           if not name.isalpha():
                print('Please Enter Valid Name.')
           else:
               break

       while True:
           number = input('Enter Contact Number: ')
           if not number.isnumeric():
               print('Please Enter Valid Number:')
           else:
               break

       email = input('Enter Email: ')

       sub_list = [name.capitalize(), number, email]

       phonebook.append(sub_list)

       print(f'The Contact {name} is added Successfully.')

    elif option.upper() == 'S':
        s_name = input('Enter The Name to Search in PhoneBook: ')
        flag = False
        for sub_list in phonebook:
            if s_name.capitalize() in sub_list:
                print('Contact Details: ')
                print(f'Name: {sub_list[0]}')
                print(f'Number: {sub_list[1]}')
                print(f'Email: {sub_list[2]}')
                flag = True

        if not flag:
            print(f'Contact {s_name} Not Found in PhoneBook.')

    else:
        print('Please Chose Valid Option!')