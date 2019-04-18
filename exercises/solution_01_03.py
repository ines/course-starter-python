import json

# This code will run relative to the root of the repo, so we can load files
with open("exercises/bookquotes.json") as f:
    DATA = json.loads(f.read())

# Print the first record in the DATA
print(DATA[0])

# Assign the length of DATA to some_var
some_var = len(DATA)
