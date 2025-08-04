import mysql.connector

# Connection to The Server:
mydb = mysql.connector.connect(
    host= 'localhost',
    user = 'root',
    password = 'SH@il77723',
    database = 'ecommerce'
)

# Creating Cursor:
my_cursor = mydb.cursor()

# Seeing Available Tables:
sql = 'show tables'
my_cursor.execute(operation= sql)

for item in my_cursor:
    print(item)

print('=' * 100)

# Seeing Structure of CUSTOMER Table:
sql = 'describe customer'
my_cursor.execute(operation= sql)

for item in my_cursor:
    print(item)

print('=' * 100)

# Inserting Records into CUSTOMER Table:
sql = """ insert into customer (firstname, lastname)
            values
            ('Bruce', 'Wayne'),
            ('Clark', 'Kent')
"""
my_cursor.execute(operation= sql)

# Inserting Records into CUSTOMER Table using Placeholders:
sql = """ insert into customer (firstname, lastname)
            values
            (%s, %s)"""
values = ('Diana', 'Prince')

my_cursor.execute(sql, values)

# Inserting Multiple Records using Placeholders:
sql = """ insert into customer (firstname, lastname)
            values
            (%s, %s)"""

values = [('Peter', 'Parker'),
          ('Bruce', 'Banner'),
          ('Steve', 'Rogers')
          ]

my_cursor.executemany(sql, values)

# Commit:
mydb.commit()

# Selecting Table Data:
sql = 'select * from customer'
my_cursor.execute(operation= sql)

for record in my_cursor:
    print(record)

# Closing The Database Connection:
mydb.close()