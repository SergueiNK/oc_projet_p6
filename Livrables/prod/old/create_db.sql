SET NAMES utf8;
SET CHARACTER SET utf8;

DROP DATABASE IF EXISTS ocpizza;
CREATE DATABASE ocpizza;
USE purbeurre;

CREATE TABLE  Ingredient(
    id_ingredient BIGINT(50) NOT NULL AUTO_INCREMENT,
    ingredient_name VARCHAR(100),
    ingredient_invenotory_kg VARCHAR(50),
    PRIMARY KEY(id_ingredient),
)ENGINE=INNODB;

CREATE TABLE  Order(
    id_order BIGINT(50) NOT NULL AUTO_INCREMENT,
    id_user_fk BIGINT(50) NOT NULL,
    id_pizza_fk BIGINT(50) NOT NULL,
    status VARCHAR(50),
	payement_method VARCHAR(50),
	date DATETIME,
	delivery_mode VARCHAR(50),
	pizza_quantity INT,
    PRIMARY KEY(id_ingredient),
	PRIMARY KEY(id_user_fk),
	PRIMARY KEY(id_pizza_fk),
	FOREIGN KEY (id_user_fk) REFERENCES User(id_user)
	FOREIGN KEY (id_pizza_fk) REFERENCES Pizza(id_pizza)
)ENGINE=INNODB;

CREATE TABLE  Pizza(
    id_pizza BIGINT(50) NOT NULL AUTO_INCREMENT,
    description VARCHAR(200),
    pizza_price VARCHAR(50),
	pizza_name VARCHAR(100),
    PRIMARY KEY(id_pizza),
)ENGINE=INNODB;

CREATE TABLE  Recipe(
    id_recipe BIGINT(50) NOT NULL AUTO_INCREMENT,
    id_pizza_fk BIGINT(50) NOT NULL,
    id_ingredient_fk BIGINT(50),
	cooking_time_sec VARCHAR(50),
	ingredient_quantity_g VARCHAR(100),
    PRIMARY KEY(id_recipe),
	PRIMARY KEY(id_pizza_fk),
	PRIMARY KEY(id_ingredient_fk),
	FOREIGN KEY (id_ingredient_fk) REFERENCES User(id_ingredient)
	FOREIGN KEY (id_pizza_fk) REFERENCES Pizza(id_pizza)
)ENGINE=INNODB;

CREATE TABLE  Role(
    id_role BIGINT(50) NOT NULL AUTO_INCREMENT,
    user_role BIGINT(50) NOT NULL,
	PRIMARY KEY(id_role),	
)ENGINE=INNODB;

CREATE TABLE  User(
    id_user BIGINT(50) NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(100),
	user_firstname VARCHAR(100),
	email VARCHAR(100),
	phone_number VARCHAR(50),
	login VARCHAR(50),
	password VARCHAR(50),
	street_name VARCHAR(200),
	zip_code VARCHAR(50),
	city_name VARCHAR(100),
	PRIMARY KEY(id_user),	
)ENGINE=INNODB;
