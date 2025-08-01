class Customer:

    def __init__(self, f_name, l_name):
        self.f_name = f_name
        self.l_name = l_name

    def __str__(self):
        string_version_of_object = self.f_name + ' ' + self.l_name
        return string_version_of_object

c1 = Customer('Bruce', 'Wayne')
print(c1)