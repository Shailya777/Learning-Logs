import mysql.connector

# Connect to Server:
mydb = mysql.connector.connect(
    host= 'localhost',
    user= 'root',
    password= 'SH@il77723'
)

print(mydb)

# Creating a Cursor:
my_cursor = mydb.cursor()

# Creating Database:
sql = 'create database ecommerce'
my_cursor.execute(operation= sql)

# Displaying The Newly Created Database:
sql = 'show databases'
my_cursor.execute(operation= sql)

for items in my_cursor:
    print(items)

# Dropping The Database:
sql = 'drop database ecommerce'
my_cursor.execute(operation= sql)

print('=' * 100)
# Checking if The Database is Dropped:
sql = 'show databases'
my_cursor.execute(operation= sql)

for items in my_cursor:
    print(items)

# Closing The Connection with Database:
mydb.close()