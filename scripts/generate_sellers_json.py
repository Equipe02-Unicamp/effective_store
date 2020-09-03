import json
from faker import Faker

COMPANIES_LENGTH = 500
fake = Faker()
companies = []

for _ in range(COMPANIES_LENGTH):
    companies.append({
        "name": fake.company(),
        "country": fake.country(),
        "catalog": []
    })

print(companies)
