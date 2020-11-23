-- MySQL Script generated by MySQL Workbench
-- Mon Nov 23 11:01:47 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema PizzaSP3
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `PizzaSP3` ;

-- -----------------------------------------------------
-- Schema PizzaSP3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `PizzaSP3` DEFAULT CHARACTER SET utf8 ;
USE `PizzaSP3` ;

-- -----------------------------------------------------
-- Table `PizzaSP3`.`SavedPizzaOrders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `PizzaSP3`.`SavedPizzaOrders` ;

CREATE TABLE IF NOT EXISTS `PizzaSP3`.`SavedPizzaOrders` (
  `OrderID` INT NOT NULL AUTO_INCREMENT,
  `Date` DATETIME NOT NULL DEFAULT now(),
  `CustomerName` VARCHAR(45) NULL,
  `CustomerPhoneNumber` INT NULL,
  PRIMARY KEY (`OrderID`),
  UNIQUE INDEX `orderID_UNIQUE` (`OrderID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PizzaSP3`.`PizzaOrder`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `PizzaSP3`.`PizzaOrder` ;

CREATE TABLE IF NOT EXISTS `PizzaSP3`.`PizzaOrder` (
  `PizzaOrderID` INT NOT NULL AUTO_INCREMENT,
  `PizzaNR` INT NULL,
  `PizzaName` VARCHAR(45) NULL,
  `Ingredients` VARCHAR(45) NULL,
  `Price` INT NULL,
  `Currency` VARCHAR(45) NULL,
  `Saved_pizza_orders_orderID` INT NOT NULL,
  PRIMARY KEY (`PizzaOrderID`),
  INDEX `fk_PizzaOrder_ Saved_pizza_orders_idx` (`Saved_pizza_orders_orderID` ASC) VISIBLE,
  UNIQUE INDEX `PizzaOrderID_UNIQUE` (`PizzaOrderID` ASC) VISIBLE,
  CONSTRAINT `fk_PizzaOrder_ Saved_pizza_orders`
    FOREIGN KEY (`Saved_pizza_orders_orderID`)
    REFERENCES `PizzaSP3`.`SavedPizzaOrders` (`OrderID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
