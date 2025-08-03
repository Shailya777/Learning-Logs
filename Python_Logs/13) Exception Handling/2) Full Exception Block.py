
try:
    fr = open('employeee.txt', mode= 'r')
except Exception as err:
    print(f'Error: {err}')
else:
    print('File Opened Successfully.')
    fr.close()
finally:
    print('Inside Finally.')