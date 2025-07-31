from datetime import date, datetime, timedelta

# Subtraction:
date1 = date(2017, 11, 20)
date2 = date(2017, 11, 10)

print(date1)
print(date2)

print(date1 - date2)
print(type(date1 - date2))

# ------------------------------
date1 = datetime(2017, 11, 20, 1)
date2 = datetime(2017, 11, 10)

print(date1)
print(date2)

print(date1 - date2)
print(type(date1 - date2))

# Duration in date Terms:
one_day = timedelta(days= 1)
date1 = date1 + one_day
print(date1)

# Check if Date is within One Month of Today:
one_month = timedelta(days= 30)
t_date = datetime(2025, 6, 30)
today = datetime.today()

if today - t_date <= one_month:
    print('True')
else:
    print('False')

# TimeDelta Arithmetic:
print(one_month * 10)
print(one_month * 2.75)

print(one_month / 10)
print(one_month / 12)

t1 = timedelta(days = 5)
t2 = timedelta(days= 30)

t3 = t1 + t2
print(t3)

t3 = t1 - t2
print(t3)

t3 = t1 * 10
print(t3)

t3 = t1 / 10
print(t3)

t3 = t2 * 10.7
print(t3)

t3 = t2 / 10.7
print(t3)

t3 = t2 / t1
print(t3) # Result is a Float and Not TimeDelta.