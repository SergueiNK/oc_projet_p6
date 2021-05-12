INSERT INTO Address (id_address, street_number, street, city_name, zip_code) VALUES ('1', '7', 'rue de Deschamps', 'Reynaud', '48551');
INSERT INTO Address (id_address, street_number, street, city_name, zip_code) VALUES ('2', '10', 'chemin Marcel Vallee', 'Le Roux', '41496');
INSERT INTO Address (id_address, street_number, street, city_name, zip_code) VALUES ('3', '15', 'boulevard de Mallet', 'Saint André', '44317');

INSERT INTO Customer(id_customer, customer_name, customer_firstname, email, phone_number, customer_login, customer_password, id_address_customer_fk) VALUES ('1', 'Renée', 'Giraud', 'faivreagnes@voila.fr', '0464972411', 'Adèle-Michelle Valentin', '4vP_xT#Cub4*jgVY3F(X+u^O&6FSHd+rKIbTYjs^', '1');
INSERT INTO Customer(id_customer, customer_name, customer_firstname, email, phone_number, customer_login, customer_password, id_address_customer_fk) VALUES ('2', 'Capucine', 'Aubert', 'michele02@noos.fr', '+33 (0)6 53 60 29 06', 'David-Jean Antoine', 'jNwpZ_$eFOfXi116ZlP89cZ4wu4adxUn)$zo)%PY', '2');
INSERT INTO Customer(id_customer, customer_name, customer_firstname, email, phone_number, customer_login, customer_password, id_address_customer_fk) VALUES ('3', 'Martine', 'Fischer', 'dupuisemilie@wanadoo.fr', '+33 (0)5 04 86 24 78', 'David-Thierry Brunel', 'Pe$XtMfyrpsamJ%p7!qEu630)oK5%_d1$IVmbL_o', '3');

INSERT INTO Pizza (description, pizza_price, pizza_name) VALUES ('Forcer moi parfaitement peuple juger terrain veille bruit.', '11', 'Margarita') ; 
INSERT INTO Pizza (description, pizza_price, pizza_name) VALUES ('Enfant fusil poursuivre naissance mince cinquante.', '10', 'Nordique') ; 
INSERT INTO Pizza (description, pizza_price, pizza_name) VALUES ('Accompagner enfermer lors changement type avance.', '11', 'Végétarienne') ; 

INSERT INTO Customer_order (id_order, id_customer_order_fk, pizza_name_order_fk,status, payement_method, delivery_mode, id_address_order_fk, date, pizza_quantity) VALUES ('1', '1', 'Margarita', 'En cours de préparation', 'Carte bancaire', 'Chez le client', '1', '2010-07-12', '1'); 
INSERT INTO Customer_order (id_order, id_customer_order_fk, pizza_name_order_fk,status, payement_method, delivery_mode, id_address_order_fk, date, pizza_quantity) VALUES ('2', '2', 'Nordique', 'En livraison', 'Espéces', 'Retrait en pizzeria', '2', '1983-10-27', '12'); 
INSERT INTO Customer_order (id_order, id_customer_order_fk, pizza_name_order_fk,status, payement_method, delivery_mode, id_address_order_fk, date, pizza_quantity) VALUES ('3', '3', 'Végétarienne', 'Livré', 'Tickets restaurants', 'Retrait en pizzeria', '3', '1994-03-06', '12'); 

INSERT INTO Ingredient (ingredient_name, unit_ingredient, ingredient_inventory) VALUES ('Poulet', 'Killogrammes', '14'); 
INSERT INTO Ingredient (ingredient_name, unit_ingredient, ingredient_inventory) VALUES ('Haricots', 'Grammes', '46'); 
INSERT INTO Ingredient (ingredient_name, unit_ingredient, ingredient_inventory) VALUES ('Caviar', 'Litres', '20'); 

INSERT INTO Recipe (id_recipe, pizza_name_recipe_fk,ingredient_name_fk, unit_recipe, cooking_time, ingredient_quantity) VALUES ('0', 'Margarita', 'Poulet', 'Killogrammes', '468', '106'); 
INSERT INTO Recipe (id_recipe, pizza_name_recipe_fk,ingredient_name_fk, unit_recipe, cooking_time, ingredient_quantity) VALUES ('1', 'Nordique', 'Haricots', 'Grammes', '553', '65'); 
INSERT INTO Recipe (id_recipe, pizza_name_recipe_fk,ingredient_name_fk, unit_recipe, cooking_time, ingredient_quantity) VALUES ('2', 'Végétarienne', 'Caviar', 'Litres', '451', '50'); 

INSERT INTO Employee (id_employee_number, id_address_employee_fk, employee_name, employee_firstname, employee_password) VALUES ('1', '1', 'Colette Le Gimenez', 'Colin', 'Y9Yux1ucL!KTpWZ0PjfD&D9MoEEK8(9!!mRqanU#'); 
INSERT INTO Employee (id_employee_number, id_address_employee_fk, employee_name, employee_firstname, employee_password) VALUES ('2', '2', 'Patrick Munoz de la Martinez', 'Jacob', 'M##*uZhurw49lJc+@^ydwGOKLZ026X^Wlo1Tfvh1'); 
INSERT INTO Employee (id_employee_number, id_address_employee_fk, employee_name, employee_firstname, employee_password) VALUES ('3', '3', 'Daniel Carre', 'Guichard', 'Qy&5Zw4OmP1cibb)E2sPDpmHHm0U1boFwkeXRrw@'); 

INSERT INTO Role (id_role, id_employee_fk, employee_role) VALUES ('1', '1', 'Directeur'); 
INSERT INTO Role (id_role, id_employee_fk, employee_role) VALUES ('2', '2', 'Livreur'); 
INSERT INTO Role (id_role, id_employee_fk, employee_role) VALUES ('3', '3', 'Preparateur'); 

INSERT INTO Restaurant (id_restaurant_number, id_address_restaurant_fk, id_role_restaurant_fk,name) VALUES ('1','1', '1', 'Pizzaria Alfredo'); 
INSERT INTO Restaurant (id_restaurant_number, id_address_restaurant_fk, id_role_restaurant_fk,name) VALUES ('2','2', '2', 'Pizzaria Tatie'); 
INSERT INTO Restaurant (id_restaurant_number, id_address_restaurant_fk, id_role_restaurant_fk,name) VALUES ('3','3', '3', 'Pizzaria Ovnie'); 