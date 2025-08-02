# String to Date Conversion: yyyymmdd

from datetime import date

def str_to_date(date_str):

    years = int(date_str[0:4])
    months = int(date_str[4:6])
    days = int(date_str[6:8])

    date_c = date(years, months, days)

    return date_c