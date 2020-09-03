import json
from faker import Faker

SELLERS_LENGTH = 500
fake = Faker()
sellers = []

for _ in range(SELLERS_LENGTH):
    sellers.append({
        "name": fake.company(),
        "country": fake.country(),
        "catalog": []
    })

print(sellers)

with open('../catalog/sellers.json', 'w') as outfile:
    json.dump(sellers, outfile)
