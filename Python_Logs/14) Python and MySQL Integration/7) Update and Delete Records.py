import mysql.connector

# Connection to The Server:
mydb = mysql.connector.connect(
    host = 'localhost',
    user = 'root',
    password = 'SH@il77723',
    database = 'ecommerce'
)

# Cursor:
my_cursor = mydb.cursor()

# Data From CUSTOMER Table:
sql = 'select * from customer'
my_cursor.execute(sql)

for rec in my_cursor:
    print(rec)

print('=' * 100)

# Delete a Record:
sql = """ delete from customer
            where firstname = %s
"""
values = 'Diana'
my_cursor.execute(sql, (values, ))

# Data From CUSTOMER Table:
sql = 'select * from customer'
my_cursor.execute(sql)

for rec in my_cursor:
    print(rec)

print('=' * 100)

# Updating a Record:
sql = """update customer
        set firstname = %s
        where firstname = %s
"""
new_name = 'Martha'
cust_id = 'Clark'

my_cursor.execute(sql, (new_name, cust_id))

# Data From CUSTOMER Table:
sql = 'select * from customer'
my_cursor.execute(sql)

for rec in my_cursor:
    print(rec)

print('=' * 100)

# Commit:
mydb.commit()

# Closing The Connection:
mydb.close()
