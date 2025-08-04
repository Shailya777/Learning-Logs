# Run In Console:
# pip install mysql-connector --user

import mysql.connector

# Connect to Server:
mydb = mysql.connector.connect(
    host= 'localhost',
    user = 'root',
    password = 'SH@il77723'
)

print(mydb)