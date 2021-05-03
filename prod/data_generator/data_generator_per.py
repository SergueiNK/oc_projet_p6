from random import randrange

from faker import Faker

class GenerateFakeData:

    def __init__(self):

        self.fake = Faker("fr_FR")
        self.order_status = [1, 2, 3]

    def fake_address(self, data_number=3):

        for _ in range(data_number):
            print(
                f"INSERT INTO \"Address\" (id, street_number, street, city_name, zip_code,) "
                f"VALUES (default, '{randrange(1, 17)}', '{self.fake.street_address()}','{self.fake.city()}', ';'"
            )

    def fake_restaurant(self):
        print(
            f"INSERT INTO \"Restaurant\" (id, name) VALUES "
            f"(default, 'Pizzaria Alfredo');"
        )
        print(
            f"INSERT INTO \"Restaurant\" (id, name) VALUES "
            f"(default, 'Pizzaria Tatie');"
        )
        print(
            f"INSERT INTO \"Restaurant\" (id, name) VALUES "
            f"(default, 'Pizzaria Ovnie');")

    def fake_role(self):
        print(
            f"INSERT INTO \"Role\" (id, employee_role) VALUES "
            f"(default, 'Directeur');"
        )
        print(
            f"INSERT INTO \"Role\" (id, employee_role) VALUES "
            f"(default, 'Livreur');"
        )
        print(
            f"INSERT INTO \"Role\" (id, employee_role) VALUES "
            f"(default, 'Preparateur');"
        )

    def fake_employee(self, data_number=3):

        for _ in range(data_number):
            print(
                f"INSERT INTO \"Employee\" (id, employee_name, employee_last_name, employee_password) "
                f"VALUES (default, '{self.fake.name()}', "
                f"'{self.fake.last_name()}', "
                f"'{self.fake.password(40)}');"
            )

    def fake_customer(self, data_number=3):

        for _ in range(data_number):
            print(
                f"INSERT INTO \"Customer\" "
                f"(id, customer_name, customer_firstname, email, phone_number, customer_login, customer_password) "
                f"VALUES (default, '{self.fake.first_name()}', '{self.fake.last_name()}', "
                f"'{self.fake.email()}', '{self.fake.phone_number()}', '{self.fake.name()}', '{self.fake.password(40)}' );"
            )


    def fake_order(self, data_number=3):



        print(
            f"INSERT INTO \"Order\" (id, status) VALUES (default, 'En cours de préparation');"
        )
        print(
            f"INSERT INTO \"Order\" (id, status) VALUES (default, 'En livraison');"
        )
        print(
            f"INSERT INTO \"Order\" (id, status) VALUES (default, 'Livré');")


        print(
            f"INSERT INTO \"Order\" (id, payement_method) VALUES (default, 'Carte bancaire');"
        )
        print(
            f"INSERT INTO \"Order\" (id, payement_method) VALUES (default, 'Espéces');"
        )
        print(
            f"INSERT INTO \"Order\" (id, payement_method) VALUES (default, 'Tickets restaurants');")



        for _ in range(data_number):
            print(
                f"INSERT INTO \"Order\" "
                f"(id, date) "
                f"VALUES (default, '{self.fake.date()}');"
            )

        print(
            f"INSERT INTO \"Order\" (id, delivery_mode) VALUES (default, 'Chez le client');"
        )
        print(
            f"INSERT INTO \"Order\" (id, delivery_mode) VALUES (default, 'Retrait en pizzeria');"
        )


        for _ in range(data_number):
            print(
                f"INSERT INTO \"Order\" "
                f"(id, pizza_quantity) "
                f"VALUES (default, '{randrange(1,17)}');"
            )

        # for _ in range(data_number):
        #     print(
        #         f"INSERT INTO \"Order\" "
        #         f"(id, status) "
        #         f"VALUES (default, '{self.order_status}');"
        #     )

    def fake_pizza(self, data_number=3):

        for _ in range(data_number):
            print(
                f"INSERT INTO \"Pizza\" (id, description, pizza_price) VALUES (default, '{self.fake.paragraph(nb_sentences=1)}', '{randrange(8,14)}');"
            )

        print(
            f"INSERT INTO \"Pizza\" (id, pizza_name) VALUES (default, 'Margarita');"
        )
        print(
            f"INSERT INTO \"Pizza\" (id, pizza_name) VALUES (default, 'Nordique');"
        )
        print(
            f"INSERT INTO \"Pizza\" (id, pizza_name) VALUES (default, 'Végétarienne');"
        )

    def fake_recipe(self, data_number=3):


        for _ in range(data_number):
            print(
                f"INSERT INTO \"Recipe\" (id, cooking_time_sec, ingredient_quantity_g) VALUES (default, '{randrange(360,600)}', '{randrange(50,150)}' );"
            )

    def fake_ingredient(self, data_number=3):

        for _ in range(data_number):
            print(
                f"INSERT INTO \"Ingredient\" (id, ingredient_inventory_kg) VALUES (default, '{randrange(0,50)}' );"
            )

        print(
            f"INSERT INTO \"Ingredient\" (id, ingredient_name) VALUES (default, 'Poulet');"
        )
        print(
            f"INSERT INTO \"Ingredient\" (id, ingredient_name) VALUES (default, 'Haricots');"
        )
        print(
            f"INSERT INTO \"Ingredient\" (id, ingredient_name) VALUES (default, 'Caviar');"
        )


if __name__ == "__main__":
    print("\n\n################ BEGINING REQUEST #######################\n")

    generate_data = GenerateFakeData()

    generate_data.fake_address()
    print()
    generate_data.fake_restaurant()
    print()
    generate_data.fake_role()
    print()
    generate_data.fake_employee()
    print()
    generate_data.fake_customer()
    print()
    generate_data.fake_order()
    print()
    generate_data.fake_pizza()
    print()
    generate_data.fake_recipe()
    print()
    generate_data.fake_ingredient()
    print()

    print("\n\n################ END REQUEST #######################\n")