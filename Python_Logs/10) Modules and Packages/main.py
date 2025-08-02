# Approach 1:
from customer import info
info.get_details('Bruce')

# Approach 2:
from customer.info import get_details
get_details('Bruce')

# Approach 3:
from customer.info import get_details as gt
gt('Bruce')

# Approach 4:
from customer import *
info.get_details('Bruce')

# Approach 5:
from customer.info import *
get_details('Bruce')