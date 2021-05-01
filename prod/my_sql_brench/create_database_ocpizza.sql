-- MySQL Script generated by MySQL Workbench
-- Fri Apr 30 17:35:13 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema OCPizza
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema OCPizza
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `OCPizza` DEFAULT CHARACTER SET utf8 ;
USE `OCPizza` ;

-- -----------------------------------------------------
-- Table `OCPizza`.`adresse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OCPizza`.`adresse` (
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
CREATE TABLE IF NOT EXISTS `OCPizza`.`customer` (
  `id_customer` BIGINT(50) NOT NULL,
  `customer_name` VARCHAR(100) NULL,
  `customer_firstname` VARCHAR(100) NULL,
  `email` VARCHAR(100) NULL,
  `phone_number` VARCHAR(50) NULL,
  `customer_login` VARCHAR(50) NULL,
  `customer_password` VARCHAR(50) NULL,
  `id_adresse_fk` INT NULL,
  PRIMARY KEY (`id_customer`),
  INDEX `id_adresse_fk_idx` (`id_adresse_fk` ASC) VISIBLE,
  CONSTRAINT `id_adresse_fk`
    FOREIGN KEY (`id_adresse_fk`)
    REFERENCES `OCPizza`.`adresse` (`id_adresse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`pizza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OCPizza`.`pizza` (
  `id_pizza` BIGINT(50) NOT NULL,
  `description` VARCHAR(200) NULL,
  `pizza_price` VARCHAR(50) NULL,
  `pizza_name` VARCHAR(100) NULL,
  PRIMARY KEY (`id_pizza`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OCPizza`.`order` (
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
  INDEX `iduser_fk_idx` (`id_customer_fk` ASC) VISIBLE,
  INDEX `idpizza_fk_idx` (`id_pizza_fk` ASC) VISIBLE,
  INDEX `id_adresse_fk_idx` (`id_adresse_fk` ASC) VISIBLE,
  CONSTRAINT `id_customer_fk`
    FOREIGN KEY (`id_customer_fk`)
    REFERENCES `OCPizza`.`customer` (`id_customer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_pizza_fk`
    FOREIGN KEY (`id_pizza_fk`)
    REFERENCES `OCPizza`.`pizza` (`id_pizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_adresse_fk`
    FOREIGN KEY (`id_adresse_fk`)
    REFERENCES `OCPizza`.`adresse` (`id_adresse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`ingredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OCPizza`.`ingredient` (
  `id_ingredient` BIGINT(50) NOT NULL AUTO_INCREMENT,
  `ingredient_name` VARCHAR(100) NULL,
  `ingredient_inventory_kg` VARCHAR(50) NULL,
  PRIMARY KEY (`id_ingredient`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`recipe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OCPizza`.`recipe` (
  `id_recipe` BIGINT(50) NOT NULL AUTO_INCREMENT,
  `id_pizza_fk` BIGINT(50) NOT NULL,
  `id_ingredient_fk` BIGINT(50) NOT NULL,
  `cooking_time_sec` VARCHAR(50) NULL,
  `ingredient_quantity_g` VARCHAR(100) NULL,
  PRIMARY KEY (`id_recipe`, `id_pizza_fk`, `id_ingredient_fk`),
  INDEX `id_pizza_fk_idx` (`id_pizza_fk` ASC) VISIBLE,
  CONSTRAINT `id_pizza_fk`
    FOREIGN KEY (`id_pizza_fk`)
    REFERENCES `OCPizza`.`pizza` (`id_pizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_ingredient_fk`
    FOREIGN KEY ()
    REFERENCES `OCPizza`.`ingredient` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OCPizza`.`employee` (
  `id_employee_number` INT NOT NULL,
  `employee_name` VARCHAR(50) NULL,
  `employee_firstname` VARCHAR(50) NULL,
  `id_adresse_fk` INT NULL,
  PRIMARY KEY (`id_employee_number`),
  INDEX `id_adresse_fk_idx` (`id_adresse_fk` ASC) VISIBLE,
  CONSTRAINT `id_adresse_fk`
    FOREIGN KEY (`id_adresse_fk`)
    REFERENCES `OCPizza`.`adresse` (`id_adresse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OCPizza`.`role` (
  `id_role` INT NOT NULL,
  `employee_role` VARCHAR(50) NULL,
  `id_employee_fk` INT NULL,
  PRIMARY KEY (`id_role`),
  INDEX `id_employee_fk_idx` (`id_employee_fk` ASC) VISIBLE,
  CONSTRAINT `id_employee_fk`
    FOREIGN KEY (`id_employee_fk`)
    REFERENCES `OCPizza`.`employee` (`id_employee_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OCPizza`.`restaurant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OCPizza`.`restaurant` (
  `id_restaurant_number` INT NOT NULL,
  `name` VARCHAR(50) NULL,
  `id_adresse_fk` INT NULL,
  `id_role_fk` INT NULL,
  PRIMARY KEY (`id_restaurant_number`),
  INDEX `id_adresse_fk_idx` (`id_adresse_fk` ASC) VISIBLE,
  CONSTRAINT `id_adresse_fk`
    FOREIGN KEY (`id_adresse_fk`)
    REFERENCES `OCPizza`.`adresse` (`id_adresse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_role_fk`
    FOREIGN KEY ()
    REFERENCES `OCPizza`.`role` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
