-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2019 at 01:23 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2019-01-01 16:21:18', '07-03-2019 06:31:07 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Tablet', 'We have the best quality for our customers.', '2019-02-24 19:19:32', ''),
(2, 'SmartPhone', 'Best smartphones in the market. ', '2019-02-24 23:00:00', '10-03-2019 12:22:24 AM'),
(3, 'Laptop', 'Our laptops have the greatest performance and capacity for your needs.', '2019-02-25 19:19:54', ''),
(4, 'TV', 'If you are looking to make your home feel like cinema, we are the right place to come.', '2019-03-01 19:18:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2019-03-06 19:32:57', 'COD', 'Delivered'),
(2, 1, '4', 1, '2019-03-05 23:00:00', 'Debit / Credit card', 'Delivered'),
(14, 1, '3', 2, '2019-03-06 12:47:22', 'Debit / Credit card', 'Delivered'),
(15, 1, '15', 2, '2019-03-06 12:47:22', 'Debit / Credit card', NULL),
(16, 1, '15', 1, '2019-03-06 12:55:44', 'Internet Banking', NULL),
(17, 1, '3', 1, '2019-03-06 12:57:40', 'COD', 'Delivered'),
(18, 1, '6', 1, '2019-03-06 13:03:36', 'Internet Banking', NULL),
(19, 1, '15', 1, '2019-03-06 13:03:36', 'Internet Banking', NULL),
(20, 1, '20', 1, '2019-03-06 13:12:28', 'COD', 'Delivered'),
(21, 6, '7', 1, '2019-03-14 22:32:39', 'COD', NULL),
(22, 6, '8', 1, '2019-03-14 22:32:39', 'COD', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

DROP TABLE IF EXISTS `ordertrackhistory`;
CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2019-02-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2019-02-10 20:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2019-02-11 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2019-02-11 21:50:36'),
(5, 7, 'Delivered', 'thank u for choosing us.', '2019-03-06 02:21:50'),
(6, 10, 'in Process', 'test', '2019-03-06 02:24:44'),
(7, 1, 'in Process', 'test ', '2019-03-06 13:09:26'),
(8, 14, 'in Process', 'test', '2019-03-06 13:16:06'),
(9, 1, 'Delivered', 'nb', '2019-03-06 13:16:37'),
(10, 14, 'Delivered', 'test', '2019-03-06 13:27:39'),
(11, 20, 'in Process', 'in process', '2019-03-06 13:32:00'),
(12, 20, 'Delivered', 'd', '2019-03-06 13:32:46'),
(13, 16, 'in Process', 'www', '2019-03-07 23:54:45'),
(14, 18, 'Delivered', 'Produkti juaj u dergua me sukses!', '2019-03-08 01:39:07'),
(15, 17, 'in Process', 'tsszttstts', '2019-03-11 00:25:01'),
(16, 17, 'Delivered', 'test', '2019-03-14 22:25:27'),
(17, 22, 'Delivered', 'Flm skerdi qe bleve produktin tone. ', '2019-03-14 22:36:07');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(5, 3, 1, 2, 3, 'test', 'test', 'test', '2019-03-06 12:46:30'),
(6, 6, 2, 2, 3, 'test2', 'test2', 'test2', '2019-03-13 22:17:58'),
(7, 6, 2, 2, 3, 'test2', 'test2', 'test2', '2019-03-13 22:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 1, 'LG ', 'LG', 500, 550, 'A stands for a high-quality picture, such as a 4K Ultra High Definition (UHD) TV with a resolution of 3,840 x 2,160. LG also names its OLED TVs from 2015 and earlier with this designation, even though they are not 4K TVs and have a regular HD resolution of 1,920 x 1,080', 'l1.jpg', 'l2.jpg', 'l3.jpg', 20, 'In Stock', '2019-01-30 16:54:35', ''),
(2, 4, 2, 'Sony', 'Sony Corporation', 650, 700, 'All Sony high-definition flat-panel LCD televisions in North America have carried the logo for BRAVIA since 2005.', 's1.jpg', 's2.jpg', 's3.jpeg', 10, 'In Stock', '2019-01-30 16:59:00', ''),
(3, 3, 3, 'Dell', 'DELL Electronics', 700, 749, 'It runs on Windows 8.1 64 bit OS, a dual-core 1.7 GHz Intel Core i5 processor and Intel HD graphics 4400 processor. The laptop has a 15.6 inch HD LED backlit display with Truelife and 1366 x 768 pixels resolution. It has 1 TB HDD, 4GB DDR3 RAM and built-in DVD drive.', 'd1.jpg', 'd2.jpg', 'd3.jpg', 20, 'In Stock', '2019-02-14 23:00:00', ''),
(4, 3, 4, 'Asus', 'AsusTek Computer Inc', 530, 590, 'ASUS X551MA 15.6 Inch Laptop (Intel Celeron, 4 GB, 500GB HDD, Black) Intel Dual-Core Celeron N2830 2.16 GHz, 4GB RAM, 500GB Hard Drive. 15.6-Inch High-Definition LED-lit display (1366*768) Webcam for Skype. High-speed wireless LAN (802.11n) and fast ethernet LAN port.', 'a1.jpg', 'a2.jpg', 'a3.jpg', 0, 'In Stock', '2019-02-04 04:11:54', ''),
(5, 3, 5, 'HP', 'Hewlett-Packard', 259, 360, 'Product name. HP Notebook - 15-ac650tu. Microprocessor. Intel® Core™ i5-4210U with Intel HD Graphics 4400 (1.7 GHz, up to 2.7 GHz, 3 MB cache, 2 cores).', 'h1.jpg', 'h2.jpg', 'h3.jpg', 10, 'In Stock', '2019-02-04 04:17:03', ''),
(6, 1, 6, 'Samsung S5e', 'SAMSUNG GROUP', 300, 370, 'Samsung Galaxy Tab S5e Android tablet wa realized in 2017 and it has been the best product ever.', 'download.jpg', 'sa2.jpg', 'sa3.jpg', 0, 'In Stock', '2019-02-04 04:26:17', ''),
(7, 1, 7, 'Lenovo Tab 4', 'Lenovo Group Ltd', 270, 300, 'Designed with cord-cutters in mind, the Tab 4 8 is great for kicking back to watch your favorite TV shows on Amazon, Hulu, or Netflix.', 'le1.jpg', 'le2.jpg', 'le3.jpg', 12, 'In Stock', '2019-02-04 04:28:17', ''),
(8, 2, 9, 'Iphone X', 'APPLE', 990, 1100, 'Apple\'s aim with the iPhone X was to create an iPhone that\'s all display, blurring the line between physical object and experience. The 5.8-inch front screen melts into a highly polished curved-edge stainless steel band encircling a durable all-glass body available in two pearlescent finishes: Space Gray and Silver', 'i2.jpg', 'i3.jpg', 'ifon.jpg', 13, 'In Stock', '2019-02-04 04:32:15', ''),
(9, 2, 10, 'Xiaomi Redmi Note 4', 'Xiaomi Corporation', 450, 518, 'Xiaomi Redmi Note 4 is powered by a 2GHz octa-core Qualcomm Snapdragon 625 processor. It comes with 4GB of RAM. The Xiaomi Redmi Note 4 runs Android 6.0 and is powered by a 4,100mAh non-removable battery. ... The Xiaomi Redmi Note 4 is a dual-SIM (GSM and GSM) smartphone that accepts Micro-SIM and Nano-SIM cards.', 'xi1.jpg', 'xi2.jpg', 'xi3.jpg', 0, 'In Stock', '2019-02-04 04:35:13', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 4, 'LG', '2019-01-26 16:24:52', '2019-01-27 11:03:40 PM'),
(2, 4, 'Sony', '2019-01-26 16:29:09', ''),
(3, 3, 'Dell', '2019-02-04 04:13:54', ''),
(4, 3, 'Asus', '2019-02-04 04:36:45', ''),
(5, 3, 'HP', '2019-02-04 04:37:02', ''),
(6, 1, 'Samsung', '2019-02-04 04:37:51', ''),
(7, 1, 'Lenovo', '2019-02-05 20:12:59', ''),
(9, 2, 'Apple', '2019-03-06 20:17:54', NULL),
(10, 2, 'Xiaomi', '2019-03-06 20:17:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'test@test.com', 0x3a3a3100000000000000000000000000, '2019-03-06 02:17:21', NULL, 0),
(2, 'test@t.t', 0x3a3a3100000000000000000000000000, '2019-03-06 02:19:14', '06-03-2019 07:57:25 AM', 1),
(3, 'test@test.com', 0x3a3a3100000000000000000000000000, '2019-03-13 22:15:05', NULL, 0),
(4, 'test@t.t', 0x3a3a3100000000000000000000000000, '2019-03-13 22:15:13', NULL, 1),
(5, 'eva@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-14 18:24:45', '14-03-2019 07:27:08 PM', 1),
(6, 'eva@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-14 18:27:31', '14-03-2019 08:21:12 PM', 1),
(7, 'frida@f.f', 0x3a3a3100000000000000000000000000, '2019-03-14 19:32:11', NULL, 1),
(8, 'skerdilajd@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-14 22:32:16', '15-03-2019 12:37:24 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` longtext,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `address`, `state`, `city`, `regDate`, `updationDate`) VALUES
(1, 'test', 'test@t.t', 544, '098f6bcd4621d373cade4e832627b4f6', NULL, NULL, NULL, '2019-03-06 02:17:43', NULL),
(2, 'Frida', 'frida@f.f', 201, '098f6bcd4621d373cade4e832627b4f6', 'shippingAddress', 'shippingState', 'shippingCity', '2019-03-07 00:56:38', NULL),
(3, 'skerdi', 'skerdi@s.s', 11, '098f6bcd4621d373cade4e832627b4f6', 'shippingAddress', 'shippingState', 'shippingCity', '2019-03-07 00:57:51', NULL),
(4, 'xhulio', 'xhulio@xh.xh', 5612, '098f6bcd4621d373cade4e832627b4f6', 'al', 'albania', 'tirane', '2019-03-07 00:59:44', NULL),
(5, 'eva', 'eva@gmail.com', 5554558552, '14bd76e02198410c078ab65227ea0794', 'test2', 'albania', 'tirane', '2019-03-14 18:24:15', NULL),
(6, 'sk', 's@g.com', 77, '9294099bd26d257bfd67d360cb2075d8', 'komuna', 'albania', 'tirane', '2019-03-14 22:31:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2019-03-01 18:53:17');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
