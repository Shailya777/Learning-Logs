# getting The path of Current Working Directory:
import os
cur_path = os.getcwd()
print(cur_path)

# Open The File:
file1 = open('C://Users//shail//Downloads//sales.txt', mode= 'r')

# Check The Mode in Which File is Opened:
print(file1.mode)

# Closing The File:
file1.close()

# Reading Content of The File:
file1 = open('C://Users//shail//Downloads//sales.txt', mode= 'r')

# Read a Single Line:
record1 = file1.readline()
record2 = file1.readline()
print(record1)
print(record2)

# Setting File Reader to Beginning of The File:
file1.seek(0)

# Read Multiple Lines:
records = file1.readlines()
print(records)