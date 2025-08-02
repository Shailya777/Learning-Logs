# Tuples:
from os import remove

t1 = (1, 2, 3)
print(t1)

# Accessing Elements:
print(t1[1])
print(t1[0:2])

# Length Of Tuple:
print(len(t1))

# Concatenate Tuples:
t2 = ('Batman', 'Superman', 'Lobo')
t3 = t1 + t2
print(t3)

t1 = t1 + t2
print(t1)

# Update and Delete Elements:
# t1[0] = 'Magneto' # Will give Error Due to Immutability of Tuple.
# del t1[0] # Will give Error Due to Immutability of Tuple.

# Counting Occurrences of Given Elements:
print(t1.count(1))

# Index of Given Element:
print(t1.index('Batman'))