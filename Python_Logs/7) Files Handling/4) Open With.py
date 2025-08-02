# With Open for Opening and Processing Files:

# Open The File:
file1 = open('C://Users//shail//Downloads//sales.txt', mode= 'r')
filew = open('C://Users//shail//Downloads//newsales.txt', mode= 'x')

for record in file1:
    filew.write(record)

# Close The Files:
file1.close()
filew.close()

# Check Status of File:
print(file1.closed)
print(filew.closed)

#----------------------------------------------------------------------------------------------
# Using With Open:

with open('C://Users//shail//Downloads//sales.txt', mode= 'r') as file1:
    with open('C://Users//shail//Downloads//new_sales.txt', mode= 'x') as filew:
        for record in file1:
            filew.write(record)

# Check Status of File:
print(file1.closed)
print(filew.closed)