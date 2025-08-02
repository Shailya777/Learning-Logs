# Bonus Calculation:

from datetime import date, timedelta

def calc_bonus(doj):
    # 5000: >= 10 Years
    # 2000: >= 5 Years

    today = date.today()
    one_year = timedelta(days= 365)
    five_year = one_year * 5
    ten_year = one_year * 10

    difference = today - doj

    if difference >= ten_year:
        bonus = 5000.0
    elif difference >= five_year:
        bonus = 2000.0
    else:
        bonus = 0.0

    return bonus