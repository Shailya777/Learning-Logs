var_str = 'Python programming is fun!'
sub_str = input('Enter Keyword to Search: ')

if sub_str in var_str:
    print('Sub-String is Part of The String.')
else:
    print('Sub-String is NOT a Part of The String.')