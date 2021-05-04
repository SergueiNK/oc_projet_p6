from random import randrange

from faker import Faker

class GenerateFakeData:

    def __init__(self):

        self.fake = Faker("fr_FR")
        self.order_status = [1, 2, 3]

    def fake_address(self, data_number=3):

        for _ in range(data_number):
            print(
                f"INSERT INTO Address (id_address, street_number, street, city_name, zip_code) "
                f"VALUES (default, '{randrange(1, 17)}', '{self.fake.street_name()}', '{self.fake.city()}', '{randrange(40000, 49999)}');"
            )

    def fake_restaurant(self):
        print(
            f"INSERT INTO Restaurant (id_restaurant_number, name) VALUES "
            f"(default, 'Pizzaria Alfredo');"
        )
        print(
            f"INSERT INTO Restaurant (id, name) VALUES "
            f"(default, 'Pizzaria Tatie');"
        )
        print(
            f"INSERT INTO Restaurant (id, name) VALUES "
            f"(default, 'Pizzaria Ovnie');"
        )

    def fake_role(self):
        print(
            f"INSERT INTO Role (id_role, employee_role) VALUES "
            f"(default, 'Directeur');"
        )
        print(
            f"INSERT INTO Role (id_role, employee_role) VALUES "
            f"(default, 'Livreur');"
        )
        print(
            f"INSERT INTO Role (id_role, employee_role) VALUES "
            f"(default, 'Preparateur');"
        )

    def fake_employee(self, data_number=3):

        for _ in range(data_number):
            print(
                f"INSERT INTO Employee (id_employee_number, employee_name, employee_last_name, employee_password) "
                f"VALUES (default, '{self.fake.name()}', "
                f"'{self.fake.last_name()}', "
                f"'{self.fake.password(40)}');"
            )

    def fake_customer(self, data_number=3):

        for _ in range(data_number):
            print(
                f"INSERT INTO Customer"
                f"(id_customer, customer_name, customer_firstname, email, phone_number, customer_login, customer_password) "
                f"VALUES (default, '{self.fake.first_name()}', '{self.fake.last_name()}', "
                f"'{self.fake.email()}', '{self.fake.phone_number()}', '{self.fake.name()}', '{self.fake.password(40)}');"
            )


    def fake_customer_order(self, data_number=3):



        print(
            f"INSERT INTO Customer_order (id_order, status, payement_method) "
            f"VALUES (default, 'En cours de préparation', 'Carte bancaire');"
        )
        print(
            f"INSERT INTO Customer_order (id_order, status, payement_method) "
            f"VALUES (default, 'En livraison', 'Espéces');"
        )
        print(
            f"INSERT INTO Customer_order (id_order, status, payement_method) "
            f"VALUES (default, 'Livré', 'Tickets restaurants');"
        )


        for _ in range(data_number):
            print(
                f"INSERT INTO Customer_order "
                f"(id_order, date, pizza_quantity) "
                f"VALUES (default, '{self.fake.date()}', '{randrange(1,17)}');"
            )

        print(
            f"INSERT INTO Customer_order (id_order, delivery_mode) "
            f"VALUES (default, 'Chez le client');"
        )
        print(
            f"INSERT INTO Customer_order (id_order, delivery_mode) "
            f"VALUES (default, 'Retrait en pizzeria');"
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
                f"INSERT INTO Pizza (id_pizza, description, pizza_price) "
                f"VALUES (default, '{self.fake.paragraph(nb_sentences=1)}', "
                f"'{randrange(8,14)}');"
            )

        print(
            f"INSERT INTO Pizza (id, pizza_name) "
            f"VALUES (default, 'Margarita');"
        )
        print(
            f"INSERT INTO Pizza (id, pizza_name) "
            f"VALUES (default, 'Nordique');"
        )
        print(
            f"INSERT INTO Pizza (id, pizza_name) "
            f"VALUES (default, 'Végétarienne');"
        )

    def fake_recipe(self, data_number=3):


        for _ in range(data_number):
            print(
                f"INSERT INTO Recipe (id_recipe, cooking_time, ingredient_quantity) VALUES (default, '{randrange(360,600)}', '{randrange(50,150)}' );"
            )

        print(
            f"INSERT INTO Recipe (id_recipe, unit_recipe) VALUES (default, 'Killogrammes');"
        )
        print(
            f"INSERT INTO Recipe (id_recipe, unit_recipe) VALUES (default, 'Grammes');"
        )
        print(
            f"INSERT INTO Recipe (id_recipe, unit_recipe) VALUES (default, 'Litres');"
        )

    def fake_ingredient(self, data_number=3):



        print(
            f"INSERT INTO Ingredient (id_ingredient, ingredient_name, unit_ingredient) "
            f"VALUES (default, 'Poulet', 'Killogrammes');"
        )
        print(
            f"INSERT INTO Ingredient (id_ingredient, ingredient_name, unit_ingredient) "
            f"VALUES (default, 'Haricots', 'Grammes');"
        )
        print(
            f"INSERT INTO Ingredient (id_ingredient, ingredient_name, unit_ingredient) "
            f"VALUES (default, 'Caviar', 'Litres');"
        )

        for _ in range(data_number):
            print(
                f"INSERT INTO \"Ingredient\" (id, ingredient_inventory) VALUES (default, '{randrange(0,50)}' );"
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
    generate_data.fake_customer_order()
    print()
    generate_data.fake_pizza()
    print()
    generate_data.fake_recipe()
    print()
    generate_data.fake_ingredient()
    print()

    print("\n\n################ END REQUEST #######################\n")
