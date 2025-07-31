# Define and Initialize Dictionary:

address = {'Street': '180 Adams Street',
           'City': 'Chicago',
           'State': 'IL',
           'Country': 'USA'}

print(address['Street'])
print(address['City'])
print(address['State'])
print(address['Country'])

# Updating values:
address['Street'] = '181 Adams Street'
print(address['Street'])

# Add new Key-Value Pair in Dictionary:
address['Zip-Code'] = 60611
print(address['Zip-Code'])

# Delete a Key-Value Pair from Dictionary:
del address['Zip-Code']
print(address)