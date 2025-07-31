import datetime

# Date:
date1 = datetime.date(2014, 12, 31)
print(date1)
print(date1.year)
print(date1.month)
print(date1.day)

year = 2018
month = 11
day = 30
date2 = datetime.date(year, month, day)
print(date2)

# Time:
time1 = datetime.time()
print(time1)
print(time1.hour)
print(time1.minute)
print(time1.second)
print(time1.microsecond)

time2 = datetime.time(23, 59, 59, 976)
print(time2)
print(time2.hour)
print(time2.minute)
print(time2.second)
print(time2.microsecond)

# DateTime:
dt = datetime.datetime(2016, 10, 23)
print(dt)
print(dt.year)
print(dt.month)
print(dt.day)
print(dt.hour)
print(dt.minute)
print(dt.second)
print(dt.microsecond)

dt1 = datetime.datetime(2016, 10, 23, 22, 45, 20, 12345)
print(dt1)
print(dt1.year)
print(dt1.month)
print(dt1.day)
print(dt1.hour)
print(dt1.minute)
print(dt1.second)
print(dt1.microsecond)

# Today:
d1 = datetime.date.today()
print(d1)

dt1 = datetime.datetime.today()
print(dt1)