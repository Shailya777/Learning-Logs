# Continue:
# Printing Table for 1-20 (For Even Numbers Only):

for i in range(1, 21, 1):
    if i % 2 != 0:
        continue
    for j in range(1, 11, 1):
        print(i * j, end='\t')

    print(end='\n')

# Break:
# Printing Table for 1-20 (When range has more numbers):

for i in range(1, 100, 1):

    if i > 20:
        break

    for j in range(1, 10, 1):
        print(i * j, end= '\t')

    print(end= '\n')