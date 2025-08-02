file1 = open('C://Users//shail//Downloads//sales.txt', mode= 'r')
filew = open('C://Users//shail//Downloads//salesType.txt', mode= 'x') # x = Creating a New File
                                                                      # and Open it for Writing

# Reading and Processing Records from First File:
for record in file1:
    order_id, order_value = record.split(',')

    if float(order_value) >= 150:
        order_type = 'H'
    elif float(order_value) >= 125:
        order_type = 'M'
    else:
        order_type = 'L'

    record = record.strip('\n')

    write_record = record + ',' + order_type + '\n'

    filew.write(write_record)

# Close The Files:
file1.close()
filew.close()