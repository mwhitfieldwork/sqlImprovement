-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Generation Time: Aug 23, 2025 at 07:04 PM
-- Server version: 8.0.43
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Northwind`
--

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `productId` int NOT NULL,
  `productName` varchar(40) COLLATE utf8mb3_bin NOT NULL,
  `supplierId` int DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `quantityPerUnit` varchar(20) COLLATE utf8mb3_bin DEFAULT NULL,
  `unitPrice` decimal(10,2) DEFAULT NULL,
  `unitsInStock` smallint DEFAULT NULL,
  `unitsOnOrder` smallint DEFAULT NULL,
  `reorderLevel` smallint DEFAULT NULL,
  `discontinued` char(1) COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`productId`, `productName`, `supplierId`, `categoryId`, `quantityPerUnit`, `unitPrice`, `unitsInStock`, `unitsOnOrder`, `reorderLevel`, `discontinued`) VALUES
(1, 'Product HHYDP', 1, 1, NULL, 18.00, NULL, NULL, NULL, '0'),
(2, 'Product RECZE', 1, 1, NULL, 19.00, NULL, NULL, NULL, '0'),
(3, 'Product IMEHJ', 1, 2, NULL, 10.00, NULL, NULL, NULL, '0'),
(4, 'Product KSBRM', 2, 2, NULL, 22.00, NULL, NULL, NULL, '0'),
(5, 'Product EPEIM', 2, 2, NULL, 21.35, NULL, NULL, NULL, '1'),
(6, 'Product VAIIV', 3, 2, NULL, 25.00, NULL, NULL, NULL, '0'),
(7, 'Product HMLNI', 3, 7, NULL, 30.00, NULL, NULL, NULL, '0'),
(8, 'Product WVJFP', 3, 2, NULL, 40.00, NULL, NULL, NULL, '0'),
(9, 'Product AOZBW', 4, 6, NULL, 97.00, NULL, NULL, NULL, '1'),
(10, 'Product YHXGE', 4, 8, NULL, 31.00, NULL, NULL, NULL, '0'),
(11, 'Product QMVUN', 5, 4, NULL, 21.00, NULL, NULL, NULL, '0'),
(12, 'Product OSFNS', 5, 4, NULL, 38.00, NULL, NULL, NULL, '0'),
(13, 'Product POXFU', 6, 8, NULL, 6.00, NULL, NULL, NULL, '0'),
(14, 'Product PWCJB', 6, 7, NULL, 23.25, NULL, NULL, NULL, '0'),
(15, 'Product KSZOI', 6, 2, NULL, 15.50, NULL, NULL, NULL, '0'),
(16, 'Product PAFRH', 7, 3, NULL, 17.45, NULL, NULL, NULL, '0'),
(17, 'Product BLCAX', 7, 6, NULL, 39.00, NULL, NULL, NULL, '1'),
(18, 'Product CKEDC', 7, 8, NULL, 62.50, NULL, NULL, NULL, '0'),
(19, 'Product XKXDO', 8, 3, NULL, 9.20, NULL, NULL, NULL, '0'),
(20, 'Product QHFFP', 8, 3, NULL, 81.00, NULL, NULL, NULL, '0'),
(21, 'Product VJZZH', 8, 3, NULL, 10.00, NULL, NULL, NULL, '0'),
(22, 'Product CPHFY', 9, 5, NULL, 21.00, NULL, NULL, NULL, '0'),
(23, 'Product JLUDZ', 9, 5, NULL, 9.00, NULL, NULL, NULL, '0'),
(24, 'Product QOGNU', 10, 1, NULL, 4.50, NULL, NULL, NULL, '1'),
(25, 'Product LYLNI', 11, 3, NULL, 14.00, NULL, NULL, NULL, '0'),
(26, 'Product HLGZA', 11, 3, NULL, 31.23, NULL, NULL, NULL, '0'),
(27, 'Product SMIOH', 11, 3, NULL, 43.90, NULL, NULL, NULL, '0'),
(28, 'Product OFBNT', 12, 7, NULL, 45.60, NULL, NULL, NULL, '1'),
(29, 'Product VJXYN', 12, 6, NULL, 123.79, NULL, NULL, NULL, '1'),
(30, 'Product LYERX', 13, 8, NULL, 25.89, NULL, NULL, NULL, '0'),
(31, 'Product XWOXC', 14, 4, NULL, 12.50, NULL, NULL, NULL, '0'),
(32, 'Product NUNAW', 14, 4, NULL, 32.00, NULL, NULL, NULL, '0'),
(33, 'Product ASTMN', 15, 4, NULL, 2.50, NULL, NULL, NULL, '0'),
(34, 'Product SWNJY', 16, 1, NULL, 14.00, NULL, NULL, NULL, '0'),
(35, 'Product NEVTJ', 16, 1, NULL, 18.00, NULL, NULL, NULL, '0'),
(36, 'Product GMKIJ', 17, 8, NULL, 19.00, NULL, NULL, NULL, '0'),
(37, 'Product EVFFA', 17, 8, NULL, 26.00, NULL, NULL, NULL, '0'),
(38, 'Product QDOMO', 18, 1, NULL, 263.50, NULL, NULL, NULL, '0'),
(39, 'Product LSOFL', 18, 1, NULL, 18.00, NULL, NULL, NULL, '0'),
(40, 'Product YZIXQ', 19, 8, NULL, 18.40, NULL, NULL, NULL, '0'),
(41, 'Product TTEEX', 19, 8, NULL, 9.65, NULL, NULL, NULL, '0'),
(42, 'Product RJVNM', 20, 5, NULL, 14.00, NULL, NULL, NULL, '1'),
(43, 'Product ZZZHR', 20, 1, NULL, 46.00, NULL, NULL, NULL, '0'),
(44, 'Product VJIEO', 20, 2, NULL, 19.45, NULL, NULL, NULL, '0'),
(45, 'Product AQOKR', 21, 8, NULL, 9.50, NULL, NULL, NULL, '0'),
(46, 'Product CBRRL', 21, 8, NULL, 12.00, NULL, NULL, NULL, '0'),
(47, 'Product EZZPR', 22, 3, NULL, 9.50, NULL, NULL, NULL, '0'),
(48, 'Product MYNXN', 22, 3, NULL, 12.75, NULL, NULL, NULL, '0'),
(49, 'Product FPYPN', 23, 3, NULL, 20.00, NULL, NULL, NULL, '0'),
(50, 'Product BIUDV', 23, 3, NULL, 16.25, NULL, NULL, NULL, '0'),
(51, 'Product APITJ', 24, 7, NULL, 53.00, NULL, NULL, NULL, '0'),
(52, 'Product QSRXF', 24, 5, NULL, 7.00, NULL, NULL, NULL, '0'),
(53, 'Product BKGEA', 24, 6, NULL, 32.80, NULL, NULL, NULL, '1'),
(54, 'Product QAQRL', 25, 6, NULL, 7.45, NULL, NULL, NULL, '0'),
(55, 'Product YYWRT', 25, 6, NULL, 24.00, NULL, NULL, NULL, '0'),
(56, 'Product VKCMF', 26, 5, NULL, 38.00, NULL, NULL, NULL, '0'),
(57, 'Product OVLQI', 26, 5, NULL, 19.50, NULL, NULL, NULL, '0'),
(58, 'Product ACRVI', 27, 8, NULL, 13.25, NULL, NULL, NULL, '0'),
(59, 'Product UKXRI', 28, 4, NULL, 55.00, NULL, NULL, NULL, '0'),
(60, 'Product WHBYK', 28, 4, NULL, 34.00, NULL, NULL, NULL, '0'),
(61, 'Product XYZPE', 29, 2, NULL, 28.50, NULL, NULL, NULL, '0'),
(62, 'Product WUXYK', 29, 3, NULL, 49.30, NULL, NULL, NULL, '0'),
(63, 'Product ICKNK', 7, 2, NULL, 43.90, NULL, NULL, NULL, '0'),
(64, 'Product HCQDE', 12, 5, NULL, 33.25, NULL, NULL, NULL, '0'),
(65, 'Product XYWBZ', 2, 2, NULL, 21.05, NULL, NULL, NULL, '0'),
(66, 'Product LQMGN', 2, 2, NULL, 17.00, NULL, NULL, NULL, '0'),
(67, 'Product XLXQF', 16, 1, NULL, 14.00, NULL, NULL, NULL, '0'),
(68, 'Product TBTBL', 8, 3, NULL, 12.50, NULL, NULL, NULL, '0'),
(69, 'Product COAXA', 15, 4, NULL, 36.00, NULL, NULL, NULL, '0'),
(70, 'Product TOONT', 7, 1, NULL, 15.00, NULL, NULL, NULL, '0'),
(71, 'Product MYMOI', 15, 4, NULL, 21.50, NULL, NULL, NULL, '0'),
(72, 'Product GEEOO', 14, 4, NULL, 34.80, NULL, NULL, NULL, '0'),
(73, 'Product WEUJZ', 17, 8, NULL, 15.00, NULL, NULL, NULL, '0'),
(74, 'Product BKAZJ', 4, 7, NULL, 10.00, NULL, NULL, NULL, '0'),
(75, 'Product BWRLG', 12, 1, NULL, 7.75, NULL, NULL, NULL, '0'),
(76, 'Product JYGFE', 23, 1, NULL, 18.00, NULL, NULL, NULL, '0'),
(77, 'Product LUNZZ', 12, 2, NULL, 13.00, NULL, NULL, NULL, '0'),
(78, 'Node-based Product', 1, 1, '300', 10.99, 50, 10, 5, '1'),
(79, 'Mike\'s hot sauce', 1, 1, '2333', 299.00, 0, 0, 0, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `supplierId` (`supplierId`),
  ADD KEY `categoryId` (`categoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `productId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Product`
--
ALTER TABLE `Product`
  ADD CONSTRAINT `Product_ibfk_1` FOREIGN KEY (`supplierId`) REFERENCES `Supplier` (`supplierId`),
  ADD CONSTRAINT `Product_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `Category` (`categoryId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
