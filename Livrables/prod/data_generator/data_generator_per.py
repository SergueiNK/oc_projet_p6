from random import randrange
from prod.data_generator.data import data
from faker import Faker

class GenerateFakeData:

    def __init__(self):

        self.fake = Faker("fr_FR")

    def fake_address(self):

        for key, object in data.items():
            # key => pizza, customer, address (nom des tables)
            # list d'objet contenant chacun les données
            if key == 'address':
                for address in object:
                    # pizza => un objet contenant les données pizza
                    # Statement insert pizza
                    print(
                        f"INSERT INTO Address "
                        f"(id_address, street_number, "
                        f"street, city_name, "
                        f"zip_code) "
                        f"VALUES "
                        f"('{address['id_address']}', "
                        f"'{randrange(1, 17)}', "
                        f"'{self.fake.street_name()}', "
                        f"'{self.fake.city()}', "
                        f"'{randrange(40000, 49999)}');"
                    )


    def fake_customer(self):

        for key, object in data.items():
            # key => pizza, customer, address (nom des tables)
            # list d'objet contenant chacun les données
            if key == 'customer':
                for customer in object:
                    # pizza => un objet contenant les données pizza
                    # Statement insert pizza
                    print(
                        f"INSERT INTO Customer"
                        f"(id_customer, "
                        f"customer_name, "
                        f"customer_firstname, "
                        f"email, "
                        f"phone_number, "
                        f"customer_login, "
                        f"customer_password, "
                        f"id_address_customer_fk) "
                        f"VALUES "
                        f"('{customer['id_customer']}', "
                        f"'{self.fake.first_name()}', "
                        f"'{self.fake.last_name()}', "
                        f"'{self.fake.email()}', "
                        f"'{self.fake.phone_number()}', "
                        f"'{self.fake.name()}', "
                        f"'{self.fake.password(40)}', "
                        f"'{customer['id_address_customer_fk']}');"
                    )

    def fake_pizza(self):

        for key, object in data.items():
            # key => pizza, customer, address (nom des tables)
            # list d'objet contenant chacun les données
            if key == 'pizza':
                for pizza in object:
                    # pizza => un objet contenant les données pizza
                    # Statement insert pizza
                    print(
                        f"INSERT INTO Pizza "
                        f"(description, "
                        f"pizza_price, "
                        f"pizza_name) "
                        f"VALUES "
                        f"('{self.fake.paragraph(nb_sentences=1)}', "
                        f"'{randrange(8,14)}', "
                        f"'{pizza['pizza_name']}') ; "
                    )

    def fake_customer_order(self, data_number=3):

        for key, object in data.items():
            # key => pizza, customer, address (nom des tables)
            # list d'objet contenant chacun les données
            if key == 'customer_order':
                for customer_order in object:
                    # customer_order => un objet contenant les données pizza
                    # Statement insert pizza
                    print(
                        f"INSERT INTO Customer_order "
                        f"(id_order, "
                        f"id_customer_order_fk, "
                        f"pizza_name_order_fk,"
                        f"status, "
                        f"payement_method, "
                        f"delivery_mode, "
                        f"id_address_order_fk, "
                        f"date, "
                        f"pizza_quantity) "
                        f"VALUES "
                        f"('{customer_order['id_order']}', "
                        f"'{customer_order['id_customer_order_fk']}', "
                        f"'{customer_order['pizza_name_order_fk']}', "
                        f"'{customer_order['status']}', "
                        f"'{customer_order['payement_method']}', "
                        f"'{customer_order['delivery_mode']}', "
                        f"'{customer_order['id_address_order_fk']}', "
                        f"'{self.fake.date()}', "
                        f"'{randrange(1,17)}'); "
                    )

    def fake_ingredient(self, data_number=3):

        for key, object in data.items():
            # key => pizza, customer, address (nom des tables)
            # list d'objet contenant chacun les données
            if key == 'ingredient':
                for ingredient in object:
                    # pizza => un objet contenant les données pizza
                    # Statement insert pizza
                    print(
                        f"INSERT INTO Ingredient "
                        f"(ingredient_name, "
                        f"unit_ingredient, "
                        f"ingredient_inventory) "
                        f"VALUES "
                        f"('{ingredient['ingredient_name']}', "
                        f"'{ingredient['unit_ingredient']}', "
                        f"'{randrange(0,100)}'); "
                    )

    def fake_recipe(self, data_number=3):

        for key, object in data.items():
            # key => pizza, customer, address (nom des tables)
            # list d'objet contenant chacun les données
            if key == 'recipe':
                for recipe in object:
                    # customer_order => un objet contenant les données pizza
                    # Statement insert pizza
                    print(
                        f"INSERT INTO Recipe "
                        f"(id_recipe, "
                        f"pizza_name_recipe_fk,"
                        f"ingredient_name_fk, "
                        f"unit_recipe, "
                        f"cooking_time, "
                        f"ingredient_quantity) "
                        f"VALUES "
                        f"('{recipe['id_recipe']}', "
                        f"'{recipe['pizza_name_recipe_fk']}', "
                        f"'{recipe['ingredient_name_fk']}', "
                        f"'{recipe['unit_recipe']}', "
                        f"'{randrange(360,600)}', "
                        f"'{randrange(50,150)}'); "
                    )

    def fake_employee(self, data_number=3):

        for key, object in data.items():
            # key => pizza, customer, address (nom des tables)
            # list d'objet contenant chacun les données
            if key == 'employee':
                for employee in object:
                    # pizza => un objet contenant les données pizza
                    # Statement insert pizza
                    print(
                        f"INSERT INTO Employee "
                        f"(id_employee_number, "
                        f"id_address_employee_fk, "
                        f"employee_name, "
                        f"employee_firstname, "
                        f"employee_password) "
                        f"VALUES "
                        f"('{employee['id_employee_number']}', "
                        f"'{employee['id_address_employee_fk']}', "
                        f"'{self.fake.name()}', "
                        f"'{self.fake.last_name()}', "
                        f"'{self.fake.password(40)}'); "
                    )

    def fake_role(self):

        for key, object in data.items():
            # key => pizza, customer, address (nom des tables)
            # list d'objet contenant chacun les données
            if key == 'role':
                for role in object:
                    # pizza => un objet contenant les données pizza
                    # Statement insert pizza
                    print(
                        f"INSERT INTO Role "
                        f"(id_role, "
                        f"id_employee_fk, "
                        f"employee_role) "
                        f"VALUES "
                        f"('{role['id_role']}', "
                        f"'{role['id_employee_fk']}', "
                        f"'{role['employee_role']}'); "
                    )

    def fake_restaurant(self):

        for key, object in data.items():
            # key => pizza, customer, address (nom des tables)
            # list d'objet contenant chacun les données
            if key == 'restaurant':
                for restaurant in object:
                    # pizza => un objet contenant les données pizza
                    # Statement insert pizza
                    print(
                        f"INSERT INTO Restaurant "
                        f"(id_restaurant_number, "
                        f"id_address_restaurant_fk, "
                        f"id_role_restaurant_fk,"
                        f"name) "
                        f"VALUES "
                        f"('{restaurant['id_restaurant_number']}',"
                        f"'{restaurant['id_address_restaurant_fk']}', "
                        f"'{restaurant['id_role_restaurant_fk']}', "
                        f"'{restaurant['name']}'); "
                    )


if __name__ == "__main__":
    print("\n\n################ BEGINING REQUEST #######################\n")

    generate_data = GenerateFakeData()

    generate_data.fake_address()
    print()
    generate_data.fake_customer()
    print()
    generate_data.fake_pizza()
    print()
    generate_data.fake_customer_order()
    print()
    generate_data.fake_ingredient()
    print()
    generate_data.fake_recipe()
    print()
    generate_data.fake_employee()
    print()
    generate_data.fake_role()
    print()
    generate_data.fake_restaurant()
    print()







    print("\n\n################ END REQUEST #######################\n")
