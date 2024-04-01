-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 01, 2024 at 04:07 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `make` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `safety_rating` varchar(50) DEFAULT NULL,
  `price_range` varchar(50) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `make`, `model`, `year`, `category`, `full_name`, `safety_rating`, `price_range`, `image_url`) VALUES
(1, 'Toyota', 'Camry', 2021, 'Sedan', 'Toyota Camry LE 2021', '5 Stars (NHTSA)', '$24,970 - $35,420', 'images/camry.jpeg\r\n'),
(2, 'Ford F-150 XLT 2022', 'F-150', 2022, 'Pickup Truck', 'Ford.jpeg', '5 Stars (NHTSA)', '$29,290 - $70,825', 'images/Ford.jpeg'),
(3, 'Tesla', 'Model 3', 2021, 'Electric', 'Tesla Model 3 Long Range 2021', '5 Stars (NHTSA)', '$46,990 - $58,990', 'images/TeslaModel3.jpeg'),
(4, 'Honda', 'CR-V', 2020, 'SUV', 'Honda CR-V LX 2020', '5 Stars (NHTSA)', '$25,150 - $34,850', 'images/HondaCR-V.jpeg'),
(5, 'BMW', '3 Series', 2021, 'Luxury Sedan', 'BMW 330i Sedan 2021', '5 Stars (Euro NCAP)', '$41,250 - $56,700', 'images/BMW3Series.jpeg'),
(6, 'Chevrolet', 'Bolt EV', 2022, 'Electric', 'Chevrolet Bolt EV LT 2022', '5 Stars (NHTSA)', '$31,995 - $35,695', 'images/ChevroletBoltEV.jpeg'),
(7, 'Audi', 'Q5', 2021, 'Luxury SUV', 'Audi Q5 Premium 2021', '5 Stars (Euro NCAP)', '$43,300 - $52,900', 'images/AudiQ5.jpeg'),
(8, 'Mazda', 'CX-5', 2021, 'SUV', 'Mazda CX-5 Sport 2021', '5 Stars (NHTSA)', '$25,370 - $37,505', 'images/MazdaCX-5.jpeg\r\n'),
(9, 'Ford', 'Mustang', 2022, 'Sports Car', 'Ford Mustang GT 2022', 'Not Rated', '$27,155 - $70,300', 'images/FordMustang.jpeg\r\n'),
(10, 'Hyundai', 'Sonata', 2020, 'Sedan', 'Hyundai Sonata SE 2020', '5 Stars (NHTSA)', '$23,600 - $33,850', 'images/HyundaiSonata.jpeg\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
