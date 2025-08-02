# Map Function: To Apply a Function of All Elements of Given Iterable Object.

# Function to find Area of Square:
def sq_area(side):
    return side ** 2

list_sq = [1,2,3,4]
list_area= []

for square_side in list_sq:
    list_area.append(sq_area(square_side))

print(list_area)

# Map Function:
area_list = list(map(sq_area, list_sq))
print(area_list)