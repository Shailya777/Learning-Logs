from datetime import datetime
from idlelib.autocomplete import FORCE

date1 = datetime(2017, 11, 10, 21, 45, 19)
print(str(date1))

#---------------------------------------------------
# Date to String:

# dd-mm-yyyy Format:
print(datetime.strftime(date1, format= '%d'))
print(datetime.strftime(date1, format= '%m'))
print(datetime.strftime(date1, format= '%d-%m-%y'))
print(datetime.strftime(date1, format= '%d:%m:%y'))
print(datetime.strftime(date1, format= '%d:%m-%y'))
print(datetime.strftime(date1, format= '%d-%m-%Y'))
print(datetime.strftime(date1, format= '%d/%m/%Y'))

print(datetime.strftime(date1, format= '%d-%m-%Y (%H:%M:%S)'))
print(datetime.strftime(date1, format= '%d-%m-%Y (%Hh:%Mm:%Ss)'))

# Weekday:
print(datetime.strftime(date1, format= '%a')) # Day of the Week, Short Name
print(datetime.strftime(date1, format= '%A')) # Day of the Week, Full name
print(datetime.strftime(date1, format= '%w')) # Number of The Day of The Week
print(datetime.strftime(date1, format= '%W')) # Week of The Year

# Month:
print(datetime.strftime(date1, format= '%m')) # Month of The Year in Number
print(datetime.strftime(date1, format= '%b')) # name of The Month, Short Name
print(datetime.strftime(date1, format= '%B')) # name of The Month, Full Name

# 12 Hour Time:
print(datetime.strftime(date1, format= '%I')) # Hour in 12-hour Cycle
print(datetime.strftime(date1, format= '%I %p')) # To add AM/PM in 12-Hour Cycle
print(datetime.strftime(date1, format= '%I:%M:%S %p'))

# ------------------------------------------------------------------------
# String To Date:
date2_str = '19/06/2018'
date2 = datetime.strptime(date2_str, '%d/%m/%Y')
print(type(date2))
print(date2)

datetime_str = '2025-01-02 03:12:24 PM'
datetime3 = datetime.strptime(datetime_str, '%Y-%m-%d %I:%M:%S %p')
print(type(datetime3))
print(datetime3)