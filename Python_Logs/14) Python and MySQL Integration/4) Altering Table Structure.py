import mysql.connector

# Connecting To Server:
mydb = mysql.connector.connect(
    host = 'localhost',
    user = 'root',
    password = 'SH@il77723',
    database = 'ecommerce'
)

# Creating The Cursor:
my_cursor = mydb.cursor()

# Creating The CUSTOMER Table:
sql = """ create table customer (
            firstname varchar(255),
            lastname varchar(255)
            )
"""
my_cursor.execute(operation= sql)

# Seeing Table Structure:
sql = 'describe customer'
my_cursor.execute(operation= sql)

for item in my_cursor:
    print(item)

print('=' * 100)
# Altering Table Structure (Adding a Column):
sql = """ alter table customer
        add customer_id int primary key auto_increment 
"""
my_cursor.execute(operation= sql)

# Seeing The Table Structure after Alteration:
sql = 'describe customer'
my_cursor.execute(operation= sql)

for item in my_cursor:
    print(item)

print('=' * 100)

# Closing Database Connection:
mydb.close()