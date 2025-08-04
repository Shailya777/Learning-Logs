import mysql.connector

# Connection to The Server:
mydb = mysql.connector.connect(
    host= 'localhost',
    user= 'root',
    password = 'SH@il77723',
    database = 'ecommerce'
)

# Cursor:
my_cursor = mydb.cursor()

# Selecting Records from CUSTOMER Table:
sql = 'select * from customer'
my_cursor.execute(operation= sql)

for rec in my_cursor:
    print(rec)

print('=' * 100)

# Selecting Specific Columns:
sql = 'select firstname, lastname from customer'
my_cursor.execute(operation= sql)

for rec in my_cursor:
    print(rec)

print('=' * 100)

# Selecting Specific Rows:
sql = """ select firstname, lastname from customer
            where firstname like 'B%'
"""
my_cursor.execute(operation= sql)

for rec in my_cursor:
    print(rec)

print('=' * 100)

# Using Placeholder:
sql = """select firstname, lastname from customer
        where firstname = %s
"""
values = 'Clark'

my_cursor.execute(sql, (values, ))

for rec in my_cursor:
    print(rec)

# Closing DataBase Connection:
mydb.close()