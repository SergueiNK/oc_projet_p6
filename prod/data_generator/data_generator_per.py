from random import randrange
from data import pizza
from faker import Faker



for key, object in data:
    # key => pizza, customer, address (nom des tables)
    # list d'objet contenant chacun les données
    if key == pizza:
        for pizza in object:
            # pizza => un objet contenant les données pizza
            # Statement insert pizza
            print INSERT INTO PIZZA( pk, champ2, champ3) VALUES (pizza[pk], fake(dssdj), fake(djfsh))


class GenerateFakeData:

    def __init__(self):

        self.fake = Faker("fr_FR")
        self.order_status = [1, 2, 3]

    def fake_address(self, data_number=3):

        for _ in range(data_number):
            print(
                f"INSERT INTO Address "
                f"(id_address, street_number, "
                f"street, city_name, "
                f"zip_code) "
                f"VALUES "
                f"(default, '{randrange(1, 17)}', "
                f"'{self.fake.street_name()}', "
                f"'{self.fake.city()}', '{randrange(40000, 49999)}');"
            )

    def fake_restaurant(self):
        print(
            f"INSERT INTO Restaurant "
            f"(id_restaurant_number, "
            f"id_address_restaurant_fk, "
            f"id_role_restaurant_fk, "
            f"name) "
            f"VALUES "
            f"(default, "
            f"'1', "
            f"'1', "
            f"'Pizzaria Alfredo');"
        )
        print(
            f"INSERT INTO Restaurant "
            f"(id_restaurant_number, "
            f"id_address_restaurant_fk, "
            f"id_role_restaurant_fk, "
            f"name) "
            f"VALUES "
            f"(default, "
            f"'2', "
            f"'2', "
            f"'Pizzaria Tatie');"
        )
        print(
            f"INSERT INTO Restaurant "
            f"(id_restaurant_number, "
            f"id_address_restaurant_fk, "
            f"id_role_restaurant_fk, "
            f"name) "
            f"VALUES "
            f"(default, "
            f"'3', "
            f"'3', "
            f"'Pizzaria Ovnie');"
        )

    def fake_role(self):
        print(
            f"INSERT INTO Role (id_role, employee_role) "
            f"VALUES "
            f"(default, 'Directeur');"
        )
        print(
            f"INSERT INTO Role (id_role, employee_role) "
            f"VALUES "
            f"(default, 'Livreur');"
        )
        print(
            f"INSERT INTO Role (id_role, employee_role) "
            f"VALUES "
            f"(default, 'Preparateur');"
        )

    def fake_employee(self, data_number=3):

        print(
            f"INSERT INTO Customer (id_address_employee_fk) "
            f"VALUES "
            f"('1');"
        )
        print(
            f"INSERT INTO Customer (id_address_employee_fk) "
            f"VALUES "
            f"('2');"
        )
        print(
            f"INSERT INTO Customer (id_address_employee_fk) "
            f"VALUES "
            f"('3');"
        )

        for _ in range(data_number):
            print(
                f"INSERT INTO Employee "
                f"(id_employee_number, "
                f"employee_name, "
                f"employee_firstname, "
                f"employee_password) "
                f"VALUES "
                f"(default, '{self.fake.name()}', "
                f"'{self.fake.last_name()}', "
                f"'{self.fake.password(40)}');"
            )



    def fake_customer(self, data_number=3):

        for _ in range(data_number):
            print(
                f"INSERT INTO Customer"
                f"(id_customer, customer_name, "
                f"customer_firstname, email, "
                f"phone_number, customer_login, "
                f"customer_password, id_address_customer_fk) "
                f"VALUES "
                f"(default, '{self.fake.first_name()}', "
                f"'{self.fake.last_name()}', '{self.fake.email()}', "
                f" '{self.fake.phone_number()}', '{self.fake.name()}', "
                f"'{self.fake.password(40)}', '{randrange(40000, 49999)}');"
            )


    def fake_customer_order(self, data_number=3):



        print(
            f"INSERT INTO Customer_order "
            f"(id_order, "
            f"id_customer_order_fk, "
            f"pizza_name_order_fk, "
            f"status, "
            f"payement_method) "
            f"VALUES "
            f"(default, "
            f"'1', "
            f"'Margarita', "
            f"'En cours de préparation', "
            f"'Carte bancaire');"
        )
        print(
            f"INSERT INTO Customer_order "
            f"(id_order, "
            f"id_customer_order_fk, "
            f"pizza_name_order_fk, "
            f"status, "
            f"payement_method) "
            f"VALUES "
            f"(default, "
            f"'2', "
            f"'Nordique', "
            f"'En livraison', "
            f"'Espéces');"
        )
        print(
            f"INSERT INTO Customer_order "
            f"(id_order, "
            f"id_customer_order_fk, "
            f"pizza_name_order_fk, "
            f"status, "
            f"payement_method) "
            f"VALUES "
            f"(default, "
            f"'3', "
            f"'Végétarienne',  "
            f"'Livré', "
            f"'Tickets restaurants');"
        )


        for _ in range(data_number):
            print(
                f"INSERT INTO Customer_order "
                f"(id_order, date, pizza_quantity) "
                f"VALUES "
                f"(default, '{self.fake.date()}', '{randrange(1,17)}');"
            )

        print(
            f"INSERT INTO Customer_order "
            f"(id_order, delivery_mode) "
            f"VALUES "
            f"(default, 'Chez le client');"
        )
        print(
            f"INSERT INTO Customer_order "
            f"(id_order, delivery_mode) "
            f"VALUES "
            f"(default, 'Retrait en pizzeria');"
        )


        # for _ in range(data_number):
        #     print(
        #         f"INSERT INTO \"Order\" "
        #         f"(id, status) "
        #         f"VALUES (default, '{self.order_status}');"
        #     )

    def fake_pizza(self, data_number=3):

        print(
            f"INSERT INTO Pizza "
            f"(pizza_name) "
            f"VALUES "
            f"('Margarita');"
        )
        print(
            f"INSERT INTO Pizza "
            f"(pizza_name) "
            f"VALUES "
            f"('Nordique');"
        )
        print(
            f"INSERT INTO Pizza "
            f"(pizza_name) "
            f"VALUES "
            f"('Végétarienne');"
        )

        for _ in range(data_number):
            print(
                f"INSERT INTO Pizza "
                f"(description, "
                f"pizza_price) "
                f"VALUES "
                f"('{self.fake.paragraph(nb_sentences=1)}', "
                f"'{randrange(8,14)}');"
            )

    def fake_recipe(self, data_number=3):


        for _ in range(data_number):
            print(
                f"INSERT INTO Recipe "
                f"(id_recipe, cooking_time, ingredient_quantity,) "
                f"VALUES "
                f"(default, '{randrange(360,600)}', '{randrange(50,150)}');"
            )

        print(
            f"INSERT INTO Recipe "
            f"(id_recipe, "
            f"pizza_name_recipe_fk, "
            f"ingredient_name_fk, "
            f"unit_recipe) "
            f"VALUES "
            f"(default, "
            f"'Margarita', "
            f"'Poulet', "
            f"'Killogrammes');"
        )
        print(
            f"INSERT INTO Recipe "
            f"(id_recipe, "
            f"pizza_name_recipe_fk, "
            f"ingredient_name_fk, "
            f"unit_recipe) "
            f"VALUES "
            f"(default, "
            f"'Nordique', "
            f"'Haricots', "
            f"'Grammes'); "
        )
        print(
            f"INSERT INTO Recipe "
            f"(id_recipe, "
            f"pizza_name_recipe_fk, "
            f"ingredient_name_fk, "
            f"unit_recipe) "
            f"VALUES "
            f"(default, "
            f"'Végétarienne', "
            f"'Caviar', "
            f"'Litres'); "
        )

    def fake_ingredient(self, data_number=3):



        print(
            f"INSERT INTO Ingredient "
            f"(ingredient_name,unit_ingredien) "
            f"VALUES "
            f"('Poulet', 'Killogrammes');"
        )
        print(
            f"INSERT INTO Ingredient "
            f"(ingredient_name, unit_ingredient) "
            f"VALUES "
            f"('Haricots', 'Grammes');"
        )
        print(
            f"INSERT INTO Ingredient "
            f"(ingredient_name, unit_ingredient) "
            f"VALUES "
            f"('Caviar', 'Litres');"
        )

        for _ in range(data_number):
            print(
                f"INSERT INTO Ingredient "
                f"(ingredient_inventory) "
                f"VALUES "
                f"('{randrange(0,50)}');"
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
