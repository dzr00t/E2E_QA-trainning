from faker import Faker

fake = Faker('fr_FR')

def generer_profil():
    profil = {
        "prenom": fake.first_name(),
        "nom": fake.last_name(),
        "email": fake.email(),
        "adresse": fake.street_address(), 
        "code_postal": fake.postcode(),
        "card_number": fake.credit_card_number(card_type='visa'),
        "Date_expiration": fake.credit_card_expire(),
        "cryptograme":  fake.credit_card_security_code()
        

    }
    return profil


print(generer_profil())