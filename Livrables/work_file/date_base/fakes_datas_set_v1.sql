INSERT INTO Address (id_address, street_number, street, city_name, zip_code) VALUES ('1', '7', 'rue Pascal', 'Le Gall-sur-Gallet', '41760');
INSERT INTO Address (id_address, street_number, street, city_name, zip_code) VALUES ('2', '9', 'rue Dominique Barbe', 'Saint daisynec', '43907');
INSERT INTO Address (id_address, street_number, street, city_name, zip_code) VALUES ('3', '11', 'rue de Dufour', 'Saint MichelleBourg', '40646');

INSERT INTO Customer(id_customer, customer_name, customer_firstname, email, phone_number, customer_login, customer_password, id_address_customer_fk) VALUES ('1', 'Odette', 'Thierry', 'wnormand@didier.org', '0435383205', 'Philippe Chauveau', 'la()_dRb+!lc7Tu&o&N!Q#nDEMX(9EeUFrx^UTof', '1');
INSERT INTO Customer(id_customer, customer_name, customer_firstname, email, phone_number, customer_login, customer_password, id_address_customer_fk) VALUES ('2', 'Michel', 'Delmas', 'dorotheeguibert@charrier.fr', '0360036942', 'Lucas Payet', 'c2RtQD8v%+j+@!a0WmqMpsR!4v6AJ_5fZxj%Qf0@', '2');
INSERT INTO Customer(id_customer, customer_name, customer_firstname, email, phone_number, customer_login, customer_password, id_address_customer_fk) VALUES ('3', 'Rémy', 'Vaillant', 'amelie85@paul.fr', '+33 4 49 71 58 60', 'Gérard Lelievre', '4ioNXXp8$nzX$Ge()uEEH&7j%_Z(5fIEOaARem(5', '3');

INSERT INTO Pizza (description, pizza_price, pizza_name) VALUES ('Sujet douter payer patron essuyer.', '11', 'Margarita') ; 
INSERT INTO Pizza (description, pizza_price, pizza_name) VALUES ('Appartenir propos billet saint car public coin noir.', '9', 'Nordique') ; 
INSERT INTO Pizza (description, pizza_price, pizza_name) VALUES ('Taille étendue chaque selon magnifique bas tout plonger.', '8', 'Végétarienne') ; 

INSERT INTO CustomerOrder (id_order, id_customer_order_fk, status, payement_method, delivery_mode, id_address_order_fk, date) VALUES ('1', '1', 'En cours de préparation', 'Carte bancaire', 'Chez le client', '1', '2013-08-23'); 
INSERT INTO CustomerOrder (id_order, id_customer_order_fk, status, payement_method, delivery_mode, id_address_order_fk, date) VALUES ('2', '2', 'En livraison', 'Espéces', 'Retrait en pizzeria', '2', '1977-03-19'); 
INSERT INTO CustomerOrder (id_order, id_customer_order_fk, status, payement_method, delivery_mode, id_address_order_fk, date) VALUES ('3', '3', 'Livré', 'Tickets restaurants', 'Retrait en pizzeria', '3', '1994-06-27'); 

INSERT INTO Ingredient (ingredient_name, ingredient_description) VALUES ('Poulet', 'atomise en petits morceaux'); 
INSERT INTO Ingredient (ingredient_name, ingredient_description) VALUES ('Haricots', 'de tchernobyl'); 
INSERT INTO Ingredient (ingredient_name, ingredient_description) VALUES ('Caviar', 'de la reine Elisabeth'); 

INSERT INTO Recipe (id_recipe, pizza_name_recipe_fk,ingredient_name_fk, unit_recipe, cooking_time, ingredient_quantity) VALUES ('0', 'Margarita', 'Poulet', 'Killogrammes', '403', '74'); 
INSERT INTO Recipe (id_recipe, pizza_name_recipe_fk,ingredient_name_fk, unit_recipe, cooking_time, ingredient_quantity) VALUES ('1', 'Nordique', 'Haricots', 'Grammes', '492', '145'); 
INSERT INTO Recipe (id_recipe, pizza_name_recipe_fk,ingredient_name_fk, unit_recipe, cooking_time, ingredient_quantity) VALUES ('2', 'Végétarienne', 'Caviar', 'Litres', '504', '58'); 

INSERT INTO Employee (id_employee_number, id_address_employee_fk, employee_name, employee_firstname, employee_password) VALUES ('1', '1', 'Maggie Bousquet-Bailly', 'Fabre', 'Jj8g)3zsAJsvK^Hj7r0!%OF2PHQDs5BT8fDI^!qq'); 
INSERT INTO Employee (id_employee_number, id_address_employee_fk, employee_name, employee_firstname, employee_password) VALUES ('2', '2', 'Diane Brunel', 'Berger', 'qoLx4YspK%J7y@js9k1H(tbICe#UNynW%3$&6nDs'); 
INSERT INTO Employee (id_employee_number, id_address_employee_fk, employee_name, employee_firstname, employee_password) VALUES ('3', '3', 'Hélène Delaunay-Roger', 'Hardy', '#^WvW%x(8mx9je%4JO0H^pOvpfQFTlL_xwryGoqt'); 

INSERT INTO Role (id_role, id_employee_fk, employee_role) VALUES ('1', '1', 'Directeur'); 
INSERT INTO Role (id_role, id_employee_fk, employee_role) VALUES ('2', '2', 'Livreur'); 
INSERT INTO Role (id_role, id_employee_fk, employee_role) VALUES ('3', '3', 'Preparateur'); 

INSERT INTO Restaurant (id_restaurant_number, id_address_restaurant_fk, id_role_restaurant_fk,name) VALUES ('1', '1', '1', 'Pizzaria Alfredo'); 
INSERT INTO Restaurant (id_restaurant_number, id_address_restaurant_fk, id_role_restaurant_fk,name) VALUES ('2', '2', '2', 'Pizzaria Tatie'); 
INSERT INTO Restaurant (id_restaurant_number, id_address_restaurant_fk, id_role_restaurant_fk,name) VALUES ('3', '3', '3', 'Pizzaria Ovnie'); 

INSERT INTO PizzaOrder (id_pizza_order, pizza_name_fk, id_order_fk,pizza_quantity) VALUES ('1', 'Margarita', '1', '2'); 
INSERT INTO PizzaOrder (id_pizza_order, pizza_name_fk, id_order_fk,pizza_quantity) VALUES ('2', 'Nordique', '2', '6'); 
INSERT INTO PizzaOrder (id_pizza_order, pizza_name_fk, id_order_fk,pizza_quantity) VALUES ('3', 'Végétarienne', '3', '4'); 

INSERT INTO RestaurantInventory (id_restaurant_inventory, ingredient_name_inventory_fk, id_restaurant_number_fk,ingredient_inventory,unit_ingredient) VALUES ('1', 'Poulet', '1', '3', 'Killogrammes'); 
INSERT INTO RestaurantInventory (id_restaurant_inventory, ingredient_name_inventory_fk, id_restaurant_number_fk,ingredient_inventory,unit_ingredient) VALUES ('2', 'Haricots', '2', '6', 'Grammes'); 
INSERT INTO RestaurantInventory (id_restaurant_inventory, ingredient_name_inventory_fk, id_restaurant_number_fk,ingredient_inventory,unit_ingredient) VALUES ('3', 'Caviar', '3', '5', 'Litres'); 