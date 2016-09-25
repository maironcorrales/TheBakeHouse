-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema TheBakehouse
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema TheBakehouse
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `TheBakehouse` DEFAULT CHARACTER SET utf8 ;
USE `TheBakehouse` ;

-- -----------------------------------------------------
-- Table `TheBakehouse`.`Menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TheBakehouse`.`Menu` (
  `idProducto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(255) NOT NULL,
  `precio` INT NOT NULL,
  `foto` VARCHAR(255) NOT NULL,
  `cantidad` INT NOT NULL,
  PRIMARY KEY (`idProducto`),
  UNIQUE INDEX `idProducto_UNIQUE` (`idProducto` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TheBakehouse`.`Factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TheBakehouse`.`Factura` (
  `idFactura` INT NOT NULL AUTO_INCREMENT,
  `Monto` DOUBLE NOT NULL,
  `Fecha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idFactura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TheBakehouse`.`Ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TheBakehouse`.`Ventas` (
  `idVenta` INT NOT NULL AUTO_INCREMENT,
  `Factura_idFactura` INT NOT NULL,
  PRIMARY KEY (`idVenta`, `Factura_idFactura`),
  INDEX `fk_Ventas_Factura_idx` (`Factura_idFactura` ASC),
  CONSTRAINT `fk_Ventas_Factura`
    FOREIGN KEY (`Factura_idFactura`)
    REFERENCES `TheBakehouse`.`Factura` (`idFactura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TheBakehouse`.`Factura_has_Menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TheBakehouse`.`Factura_has_Menu` (
  `numero de orden` INT NOT NULL AUTO_INCREMENT,
  `Factura_idFactura` INT NOT NULL,
  `Menu_idProducto` INT NOT NULL,
  PRIMARY KEY (`numero de orden`, `Factura_idFactura`, `Menu_idProducto`),
  INDEX `fk_Factura_has_Menu_Menu1_idx` (`Menu_idProducto` ASC),
  INDEX `fk_Factura_has_Menu_Factura1_idx` (`Factura_idFactura` ASC),
  CONSTRAINT `fk_Factura_has_Menu_Factura1`
    FOREIGN KEY (`Factura_idFactura`)
    REFERENCES `TheBakehouse`.`Factura` (`idFactura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Factura_has_Menu_Menu1`
    FOREIGN KEY (`Menu_idProducto`)
    REFERENCES `TheBakehouse`.`Menu` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TheBakehouse`.`Administradores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TheBakehouse`.`Administradores` (
  `idAdministradores` INT NOT NULL AUTO_INCREMENT,
  `nombre_usuario` VARCHAR(50) NOT NULL,
  `contraseña` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idAdministradores`),
  UNIQUE INDEX `nombre_usuario_UNIQUE` (`nombre_usuario` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TheBakehouse`.`Suscriptores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TheBakehouse`.`Suscriptores` (
  `id_Suscriptor` INT NOT NULL AUTO_INCREMENT,
  `nombre_suscriptor` VARCHAR(45) NOT NULL,
  `email` VARCHAR(80) NOT NULL,
  `telefono` VARCHAR(45) NULL,
  PRIMARY KEY (`id_Suscriptor`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TheBakehouse`.`Notificaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TheBakehouse`.`Notificaciones` (
  `idNotificacion` INT NOT NULL AUTO_INCREMENT,
  `notificacion` VARCHAR(250) NOT NULL,
  `visto` TINYINT(1) NOT NULL,
  PRIMARY KEY (`idNotificacion`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
