-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2023 at 06:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_me`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Add_Person` (IN `InputLname` VARCHAR(30), IN `InputFname` VARCHAR(30), IN `InputMname` VARCHAR(30), IN `InputEname` VARCHAR(6), IN `Inputsex` CHAR(1), IN `InputBirthdate` DATE, IN `InputAge` INT(2), IN `InputHome_Address` VARCHAR(75), IN `InputCivil_Status` VARCHAR(12), IN `InputReligion` VARCHAR(20), IN `InputNationality` VARCHAR(20), IN `InputBoarding_address` VARCHAR(75), IN `InputContact_Number` CHAR(11), IN `InputEmail_address` VARCHAR(25))   BEGIN 
    	INSERT INTO person (`Lname`, `Fname`, `Mname`, `Ename`, `Sex`, `Birthdate`, `Age`, `Home_Address`, `Civil_status`, `Religion`, `Nationality`, `Boarding_address`, `Contact_Number`, `Email_address`) VALUES (InputLname,InputFname,InputMname,InputEname,InputSex,InputBirthdate,Inputage,InputHome_Address,InputCivil_status,InputReligion,InputNationality,InputBoarding_address,InputContact_Number,InputEmail_address);
    END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(9) NOT NULL,
  `Lname` varchar(30) DEFAULT NULL,
  `Fname` varchar(30) DEFAULT NULL,
  `Mname` varchar(30) DEFAULT NULL,
  `Ename` varchar(30) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `Age` int(2) DEFAULT NULL,
  `Home_Address` varchar(75) DEFAULT NULL,
  `Civil_status` varchar(12) DEFAULT NULL,
  `Religion` varchar(20) DEFAULT NULL,
  `Nationality` varchar(20) DEFAULT NULL,
  `Boarding_address` varchar(75) DEFAULT NULL,
  `Contact_Number` char(11) DEFAULT NULL,
  `Email_address` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `Lname`, `Fname`, `Mname`, `Ename`, `Sex`, `Birthdate`, `Age`, `Home_Address`, `Civil_status`, `Religion`, `Nationality`, `Boarding_address`, `Contact_Number`, `Email_address`) VALUES
(1, 'Esperila', 'Marc', 'PAttung', '', 'm', '2023-10-09', 0, 'tallang', 'single', 'Catholic', 'Filipino', '', '09164367543', 'marc@gmail.com'),
(2, 'Talbo', 'Jerdine', 'Bawat', 'N/A', 'M', '2002-08-06', 21, 'Lasilat, Baggao, Cagayan', 'Single', 'Roman Catholic', 'Filipino', 'N/A', '09657236675', 'jhonmarla42@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
