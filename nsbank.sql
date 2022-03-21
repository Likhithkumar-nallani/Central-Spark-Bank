-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2022 at 02:17 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` int(5) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `acc_no` int(10) NOT NULL,
  `balance` double(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `customer_name`, `acc_no`, `balance`) VALUES
(1, 'Abinavan', 1, 36441.00),
(2, 'wazid', 2, 805299.99),
(3, 'janaki sai', 3, 40183.99),
(4, 'khan arfaz', 4, 230191.00),
(5, 'Vicky', 5, 148689.00),
(6, 'anil kumar', 6, 70009.99),
(7, 'Likhith', 7, 69000.99),
(8, 'Srihari', 8, 183650.00),
(9, 'Amar sai', 9, 82001.01),
(10, 'Siva', 10, 14809.77);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` int(5) NOT NULL,
  `sender` varchar(35) NOT NULL,
  `receiver` varchar(35) NOT NULL,
  `amount` double(12,2) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`trans_id`, `sender`, `receiver`, `amount`, `time`) VALUES
(1, 'Likhith', 'anil kumar', 10000.00, '2022-03-21 16:35:01'),
(2, 'Srihari', 'Abinavan', 5000.00, '2022-03-21 16:35:11'),
(3, 'Siva', 'khan arfaz', 10000.00, '2022-03-21 16:35:43'),
(4, 'janaki sai', 'Siva', 5000.00, '2022-03-21 16:36:18'),
(5, 'Siva', 'janaki sai', 10000.00, '2022-03-21 16:36:35'),
(6, 'anil kumar', 'Amar sai', 30000.00, '2022-03-21 16:37:05'),
(7, 'Vicky', 'Srihari', 10000.00, '2022-03-21 16:37:23'),
(8, 'Likhith', 'janaki sai', 10000.00, '2022-03-21 16:38:09'),
(9, 'wazid', 'Abinavan', 20000.00, '2022-03-21 16:39:14'),
(10, 'Abinavan', 'Amar sai', 30000.00, '2022-03-21 16:39:24'),
(11, 'Likhith', 'Amar sai', 10000.00, '2022-03-21 17:59:54'),
(12, 'Srihari', 'Abinavan', 10000.00, '2022-03-21 18:30:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `trans_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
