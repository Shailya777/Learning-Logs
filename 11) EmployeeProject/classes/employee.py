class Employee:

    def __init__(self, name, e_id, doj, salary, bonus = 0.0):

        self.name = name
        self.e_id = e_id
        self.doj = doj
        self.salary = salary
        self.bonus = bonus

    def get_bonus(self):
        return self.bonus

    def set_bonus(self, bonus):
        self.bonus = bonus

    # name,id,doj,salary,bonus
    def __str__(self):
        return self.name + ',' + self.e_id + ',' + self.doj + ',' + str(self.salary) + ',' + str(self.bonus)