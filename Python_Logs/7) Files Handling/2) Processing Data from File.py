# Reading The File:
file1 = open('C://Users//shail//Downloads//sales.txt', mode= 'r')

# Reading The Whole File:
records = file1.readlines()
print(records)

# Processing Data in records:
total = 0.0
for record in records:
    order_id, order_value = record.split(',')
    total += float(order_value)

total = round(total, 2)
print(total)

# Closing The File:
file1.close()

# ---------------------------------------------------------------------------------------

# Another Way to Read and Process Data from Files:
file1 = open('C://Users//shail//Downloads//sales.txt', mode= 'r')

total = 0.0
for record in file1:
    order_id, order_value = record.split(',')
    total += float(order_value)

total = round(total, 2)
print(total)

# Closing The File:
file1.close()