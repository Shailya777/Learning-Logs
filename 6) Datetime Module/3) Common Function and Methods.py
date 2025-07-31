from datetime import date

date1 = date(2017, 10, 25)
print(date1)

date1 = date1.replace(year= 2018, month= 8)
print(date1)

# Date to String:
print(str(date1))
print(date1.isoformat())
print(type(date1.isoformat()))

# String (ISO Format) to Date:
date_str = str(date1)
date_iso = date.fromisoformat(date_str)
print(date_iso)
print(type(date_iso))

# Weekday:
print(date1.isoweekday())
print(date1.isocalendar())