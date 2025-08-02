from classes.employee import Employee
from commons.conversions import str_to_date
from commons.b_rules import calc_bonus

# Open the files in respective mode:
emp_file = open('C://Users//shail//PycharmProjects//pythonRev//Python//11) EmployeeProject//input//employee.csv', mode= 'r')
benefits = open('C://Users//shail//PycharmProjects//pythonRev//Python//11) EmployeeProject//output//benefits.csv', mode= 'w')

# Read Records from file:
for emp in emp_file:

    name, e_id, doj, email, salary = emp.split(sep= ',')
    emp_obj = Employee(name, e_id, doj, int(salary))

    # Converting doj date from string to date object:
    doj = str_to_date(doj)

    # Calculating Bonus on bases of Joining Date:
    bonus = calc_bonus(doj)
    print(emp, bonus)

    # Set Bonus:
    emp_obj.set_bonus(bonus)

    # Writing Data to Benefits file:
    benefits.write(str(emp_obj) + '\n')

benefits.close()
emp_file.close()