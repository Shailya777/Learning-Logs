import mysql.connector

# Connecting To Server:
mydb = mysql.connector.connect(
    host= 'localhost',
    user = 'root',
    password = 'SH@il77723'
)
print(mydb)

# Creating A Cursor:
my_cursor = mydb.cursor()

# Creating The Database:
sql = 'create database ecommerce'
my_cursor.execute(operation= sql)

# Creating CUSTOMER Table in ECOMMERCE Database:
sql = 'use ecommerce' # Switching to ECOMMERCE Database
my_cursor.execute(operation= sql)

# Creating Table CUSTOMER
sql = """ create table customer (
            firstname varchar(255),
            lastname varchar(255)
            )
"""
my_cursor.execute(operation= sql)

# Showing Created Tables:
sql = 'show tables'
my_cursor.execute(operation= sql)

for item in my_cursor:
    print(item)

# Dropping The table:
sql = 'drop table customer'
my_cursor.execute(operation= sql)

# Checking The Table is Properly Dropped:
sql = 'show tables'
my_cursor.execute(operation= sql)

for item in my_cursor:
    print(item)

# Closing The Database Connection:
mydb.close()