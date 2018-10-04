-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema drogaria
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `drogaria` ;

-- -----------------------------------------------------
-- Schema drogaria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `drogaria` DEFAULT CHARACTER SET utf8 ;
USE `drogaria` ;

-- -----------------------------------------------------
-- Table `drogaria`.`fabricante`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `drogaria`.`fabricante` ;

CREATE TABLE IF NOT EXISTS `drogaria`.`fabricante` (
  `codigo` INT(11) NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB
AUTO_INCREMENT = 52
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `drogaria`.`produtos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `drogaria`.`produtos` ;

CREATE TABLE IF NOT EXISTS `drogaria`.`produtos` (
  `codigo` INT(11) NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(50) NOT NULL,
  `quantidade` INT(11) NOT NULL,
  `preco` DECIMAL(5,2) NOT NULL,
  `fabricante_codigo` INT(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_produtos_fabricante_idx` (`fabricante_codigo` ASC),
  CONSTRAINT `fk_produtos_fabricante`
    FOREIGN KEY (`fabricante_codigo`)
    REFERENCES `drogaria`.`fabricante` (`codigo`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
