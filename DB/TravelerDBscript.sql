-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Travel_Destinations
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Travel_Destinations` ;

-- -----------------------------------------------------
-- Schema Travel_Destinations
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Travel_Destinations` ;
USE `Travel_Destinations` ;

-- -----------------------------------------------------
-- Table `travel_destinations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `travel_destinations` ;

CREATE TABLE IF NOT EXISTS `travel_destinations` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `city` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `rating` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS Traveler;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'Traveler' IDENTIFIED BY 'Traveler';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'Traveler';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'Traveler';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `travel_destinations`
-- -----------------------------------------------------
START TRANSACTION;
USE `Travel_Destinations`;
INSERT INTO `travel_destinations` (`id`, `city`, `country`, `rating`) VALUES (1, 'Vigo', 'Spain', 86);
INSERT INTO `travel_destinations` (`id`, `city`, `country`, `rating`) VALUES (2, 'Brighton', 'England', 80);
INSERT INTO `travel_destinations` (`id`, `city`, `country`, `rating`) VALUES (3, 'Split', 'Croatia', 88);
INSERT INTO `travel_destinations` (`id`, `city`, `country`, `rating`) VALUES (4, 'Durres', 'Albania', 77);

COMMIT;

