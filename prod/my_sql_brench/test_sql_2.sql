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
-- Table `OCPizza`.`adresse`
-- -----------------------------------------------------
CREATE TABLE Adresse (
  `id_adresse` INT NOT NULL,
  `street` VARCHAR(100) NULL,
  `street_number` BIGINT(50) NULL,
  `city_name` VARCHAR(50) NULL,
  `zip_code` BIGINT(50) NULL,
  PRIMARY KEY (`id_adresse`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`customer`
-- -----------------------------------------------------
CREATE TABLE Customer (
  `id_customer` BIGINT(50) NOT NULL,
  `customer_name` VARCHAR(100) NULL,
  `customer_firstname` VARCHAR(100) NULL,
  `email` VARCHAR(100) NULL,
  `phone_number` VARCHAR(50) NULL,
  `customer_login` VARCHAR(50) NULL,
  `customer_password` VARCHAR(50) NULL,
  `id_adresse_fk` INT NULL,
  PRIMARY KEY (`id_customer`),
  CONSTRAINT `id_adresse_fk`
    FOREIGN KEY (`id_adresse_fk`)
    REFERENCES `Adresse` (`id_adresse`)
	)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`pizza`
-- -----------------------------------------------------
CREATE TABLE `Pizza` (
  `id_pizza` BIGINT(50) NOT NULL,
  `description` VARCHAR(200) NULL,
  `pizza_price` VARCHAR(50) NULL,
  `pizza_name` VARCHAR(100) NULL,
  PRIMARY KEY (`id_pizza`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`order`
-- -----------------------------------------------------
CREATE TABLE `Order` (
  `id_order` BIGINT(50) NOT NULL AUTO_INCREMENT,
  `id_customer_fk` BIGINT(50) NOT NULL,
  `id_pizza_fk` BIGINT(50) NOT NULL,
  `status` VARCHAR(50) NULL,
  `payement_method` VARCHAR(50) NULL,
  `date` DATETIME NULL,
  `delivery_mode` VARCHAR(50) NULL,
  `pizza_quantity` INT NULL,
  `id_adresse_fk` INT NULL,
  PRIMARY KEY (`id_order`, `id_customer_fk`, `id_pizza_fk`),
    FOREIGN KEY (`id_customer_fk`)
    REFERENCES `Customer` (`id_customer`),
	
    FOREIGN KEY (`id_pizza_fk`)
    REFERENCES `Pizza` (`id_pizza`),
	
    FOREIGN KEY (`id_adresse_fk`)
    REFERENCES `Adresse` (`id_adresse`)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`ingredient`
-- -----------------------------------------------------
CREATE TABLE `Ingredient` (
  `id_ingredient` BIGINT(50) NOT NULL AUTO_INCREMENT,
  `ingredient_name` VARCHAR(100) NULL,
  `ingredient_inventory_kg` VARCHAR(50) NULL,
  PRIMARY KEY (`id_ingredient`),
  ON DELETE NO ACTION
  ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`recipe`
-- -----------------------------------------------------
CREATE TABLE `Recipe` (
  `id_recipe` BIGINT(50) NOT NULL AUTO_INCREMENT,
  `id_pizza_fk` BIGINT(50) NOT NULL,
  `id_ingredient_fk` BIGINT(50) NOT NULL,
  `cooking_time_sec` VARCHAR(50) NULL,
  `ingredient_quantity_g` VARCHAR(100) NULL,
  PRIMARY KEY (`id_recipe`, `id_pizza_fk`, `id_ingredient_fk`),
  CONSTRAINT `id_pizza_fk`
    FOREIGN KEY (`id_pizza_fk`)
    REFERENCES `Pizza` (`id_pizza`),
  CONSTRAINT `id_ingredient_fk`
    FOREIGN KEY (id_ingredient_fk)
    REFERENCES `Ingredient` (id_ingredient)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`employee`
-- -----------------------------------------------------
CREATE TABLE `Employee` (
  `id_employee_number` INT NOT NULL,
  `employee_name` VARCHAR(50) NULL,
  `employee_firstname` VARCHAR(50) NULL,
  `id_adresse_fkk` INT NULL,
  PRIMARY KEY (`id_employee_number`),
  
  CONSTRAINT `id_adresse_fkk`
    FOREIGN KEY (`id_adresse_fkk`)
    REFERENCES `Adresse` (`id_adresse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`role`
-- -----------------------------------------------------
CREATE TABLE `Role` (
  `id_role` INT NOT NULL,
  `employee_role` VARCHAR(50) NULL,
  `id_employee_fk` INT NULL,
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
CREATE TABLE IF NOT EXISTS `Restaurant` (
  `id_restaurant_number` INT NOT NULL,
  `name` VARCHAR(50) NULL,
  `id_adresse_fk` INT NULL,
  `id_role_fk` INT NULL,
  PRIMARY KEY (`id_restaurant_number`),
  CONSTRAINT `id_adresse_fk`
    FOREIGN KEY (`id_adresse_fk`)
    REFERENCES `Adresse` (`id_adresse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_role_fk`
    FOREIGN KEY (id_role_fk)
    REFERENCES `Role` (id_role)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


