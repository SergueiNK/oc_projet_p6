-- MySQL Script generated by MySQL Workbench
-- Fri Apr 30 17:35:13 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering


-- -----------------------------------------------------
-- Schema OCPizza
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema OCPizza
-- -----------------------------------------------------
DROP DATABASE IF EXISTS OCPizza;
SET NAMES utf8;
SET CHARACTER SET utf8;
CREATE DATABASE `OCPizza`;
USE `OCPizza` ;

-- -----------------------------------------------------
-- Table `OCPizza`.`address`
-- -----------------------------------------------------
CREATE TABLE Address (
  `id_address` INT NOT NULL ,
  `street` VARCHAR(100) NULL,
  `street_number` INT NULL,
  `city_name` VARCHAR(50) NULL,
  `zip_code` INT NULL,
  PRIMARY KEY (`id_address`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`customer`
-- -----------------------------------------------------
CREATE TABLE Customer (
  `id_customer` INT NOT NULL ,
  `customer_name` VARCHAR(100) NULL,
  `customer_firstname` VARCHAR(100) NULL,
  `email` VARCHAR(500) NULL,
  `phone_number` VARCHAR(50) NULL,
  `customer_login` VARCHAR(50) NULL,
  `customer_password` VARCHAR(100) NULL,
  `id_address_customer_fk` INT NOT NULL,
  PRIMARY KEY (`id_customer`),
  CONSTRAINT `id_address_customer_fk`
    FOREIGN KEY (`id_address_customer_fk`)	
    REFERENCES `Address` (`id_address`)
	ON DELETE NO ACTION
    ON UPDATE NO ACTION
	)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`pizza`
-- -----------------------------------------------------
CREATE TABLE `Pizza` (
  `description` VARCHAR(500) NULL,
  `pizza_price` FLOAT NULL,
  `pizza_name` VARCHAR(50) NULL,
  PRIMARY KEY (pizza_name))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`Customer_order`
-- -----------------------------------------------------
CREATE TABLE `Customer_order` (
  `id_order` INT NOT NULL ,
  `id_customer_order_fk` INT NOT NULL,
  `pizza_name_order_fk` VARCHAR(50) NOT NULL,
  `status` VARCHAR(50) NULL,
  `payement_method` VARCHAR(50) NULL,
  `date` DATETIME NULL,
  `delivery_mode` VARCHAR(50) NULL,
  `pizza_quantity` INT NULL,
  `id_address_order_fk` INT NOT NULL,
  PRIMARY KEY (`id_order`),
   CONSTRAINT `id_customer_order_fk`
    FOREIGN KEY (`id_customer_order_fk`)
    REFERENCES `Customer` (`id_customer`)
	ON DELETE NO ACTION
    ON UPDATE NO ACTION,
   CONSTRAINT `pizza_name_order_fk`
    FOREIGN KEY (`pizza_name_order_fk`)
    REFERENCES `Pizza` (`pizza_name`)
	ON DELETE NO ACTION
    ON UPDATE NO ACTION,
   CONSTRAINT `id_address_order_fk` 	
    FOREIGN KEY (`id_address_order_fk`)
    REFERENCES `Address` (`id_address`)
	ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `OCPizza`.`ingredient`
-- -----------------------------------------------------
CREATE TABLE `Ingredient` (
  `ingredient_name` VARCHAR(50) NOT NULL,
  `ingredient_inventory` INT NULL,
  `unit_ingredient` VARCHAR(20) NULL,
  PRIMARY KEY (`ingredient_name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`recipe`
-- -----------------------------------------------------
CREATE TABLE `Recipe` (
  `id_recipe` INT NOT NULL ,
  `pizza_name_recipe_fk` VARCHAR(50) NOT NULL,
  `ingredient_name_fk` VARCHAR(50) NOT NULL,
  `cooking_time` VARCHAR(50) NULL,
  `ingredient_quantity` INT NULL,
  `unit_recipe` VARCHAR(20) NULL,
  PRIMARY KEY (`id_recipe`),
  CONSTRAINT `pizza_name_recipe_fk`
    FOREIGN KEY (`pizza_name_recipe_fk`)
    REFERENCES `Pizza` (`pizza_name`)
	ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ingredient_name_fk`	
    FOREIGN KEY (`ingredient_name_fk`)
    REFERENCES `Ingredient` (`ingredient_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`employee`
-- -----------------------------------------------------
CREATE TABLE `Employee` (
  `id_employee_number` INT NOT NULL ,
  `employee_name` VARCHAR(50) NULL,
  `employee_firstname` VARCHAR(50) NULL,
  `employee_password` VARCHAR(50) NULL,
  `id_address_employee_fk` INT NOT NULL,
  PRIMARY KEY (`id_employee_number`),  
  CONSTRAINT `id_address_employee_fk`
    FOREIGN KEY (`id_address_employee_fk`)
    REFERENCES `Address` (`id_address`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`role`
-- -----------------------------------------------------
CREATE TABLE `Role` (
  `id_role` INT NOT NULL ,
  `employee_role` VARCHAR(50) NULL,
  `id_employee_fk` INT NOT NULL,
  PRIMARY KEY (`id_role`),
  CONSTRAINT `id_employee_fk`
    FOREIGN KEY (`id_employee_fk`)
    REFERENCES `Employee` (`id_employee_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`restaurant`
-- -----------------------------------------------------
CREATE TABLE `Restaurant` (
  `id_restaurant_number` INT NOT NULL ,
  `name` VARCHAR(50) NULL,
  `id_address_restaurant_fk` INT NOT NULL,
  `id_role_restaurant_fk` INT NOT NULL,
  PRIMARY KEY (`id_restaurant_number`),
  CONSTRAINT id_address_restaurant_fk
    FOREIGN KEY (`id_address_restaurant_fk`)
    REFERENCES `Address` (`id_address`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_role_restaurant_fk`
    FOREIGN KEY (id_role_restaurant_fk)
    REFERENCES `Role` (id_role)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


