-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 06:33 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(57, 7, 'ኦሮማይ', 200, 1, 'LF4.jpg'),
(58, 7, 'ትኩሳት', 200, 1, 'LF10.jpg'),
(59, 7, 'ብርቅርታ', 250, 1, 'LF9.jpg'),
(60, 6, 'ሌላ ሰው', 250, 1, 'lelasew.jpg'),
(62, 6, 'ብርቅርታ', 250, 2, 'LF9.jpg'),
(74, 9, 'እቴጌ ጣይቱ', 200, 1, 'tahitu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(12, 9, 'kidus Tadesse', '0970951608', 'kiduman@gmail.com', 'paytm', 'flat no. 4, ii, AA, Ethiopia - 5555', ', ምትሀተኛው ተራራ (4) ', 200, '20-Jul-2022', 'completed'),
(13, 9, 'kidus Tadesse', '0970951608', 'kiduman@gmail.com', 'cash on delivery', 'flat no. 6, iiiii, AA, Ethiopia - 5555', ', ረጅሙ የነፃነት ጉዞ (1) , ህልም አለኝ (2) , የሃበሻ ጅብዱ (3) , ብርቅርታ (1) ', 1350, '20-Jul-2022', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `product2`
--

CREATE TABLE `product2` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product2`
--

INSERT INTO `product2` (`id`, `name`, `price`, `image`) VALUES
(1, 'ሲንደሬላ', 70, 'ch5.jpg'),
(2, 'ሚስጢራዊው መንደር', 50, 'ch3.jpg'),
(3, 'ምትሀተኛው ተራራ', 50, 'ch4.jpg'),
(4, 'ባለዋሽንቱ እረኛ', 50, 'ch7.jpg'),
(5, 'የአየለ ጦጣ', 50, 'ch19.jpg'),
(6, 'ቆንጂት እና አውሬው', 50, 'ch6.jpg'),
(7, 'አሻንጉሊቴ', 50, 'ch8.jpg'),
(8, 'ትልቁ ማንጎ', 50, 'ch1.jpg'),
(9, 'ውለታቢሱ ነብር', 50, 'ch20.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product4`
--

CREATE TABLE `product4` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product4`
--

INSERT INTO `product4` (`id`, `name`, `price`, `image`) VALUES
(1, 'አጤ ምኒልክ', 200, 'download.jpeg'),
(2, 'አጤ ቴዎድሮስ', 200, 'download (1).jpeg'),
(3, 'አጤ ዮሃንስ ', 200, 'kk.jpg'),
(4, 'የሃበሻ ጅብዱ', 200, 'images (6).jpeg'),
(5, 'እቴጌ ጣይቱ', 200, 'tahitu.jpg'),
(6, 'ኢትዮጵያዊው ጃንደረባ', 200, 'jan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product5`
--

CREATE TABLE `product5` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product5`
--

INSERT INTO `product5` (`id`, `name`, `price`, `image`) VALUES
(1, 'ከሞት ጋር ቀጠሮ', 250, 'uuu.jpg'),
(2, 'መከረኞቹ', 200, 'mekeryocu (1).jpg'),
(3, 'የአና ማስታወሻ', 250, 'annafrank.png');

-- --------------------------------------------------------

--
-- Table structure for table `product6`
--

CREATE TABLE `product6` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product6`
--

INSERT INTO `product6` (`id`, `name`, `price`, `image`) VALUES
(1, 'Eleven Minutes', 250, 'fb4.jpg'),
(2, 'Fire and Fury', 200, 'fb2.jpg'),
(3, 'Harry potter', 250, 'fb3.jpg'),
(4, 'Free Fall', 200, 'freefall.jpg'),
(5, 'Holy Ghosts', 250, 'holy_ghosts.jpg'),
(6, 'Red Queen', 250, 'red_queen.jpg'),
(7, 'The World Of Abstract Art', 200, 'the_world.jpg'),
(8, 'The Happy Lemon', 250, 'the_happy_lemon.jpg'),
(9, 'Night Shade', 250, 'nightshade.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product7`
--

CREATE TABLE `product7` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product7`
--

INSERT INTO `product7` (`id`, `name`, `price`, `image`) VALUES
(1, 'ሔምሎክ', 250, 'phb11.jpg'),
(2, 'ዮቶር', 250, 'phb3.jpg'),
(3, 'ጥበብ ከ ጲላጦስ 1', 200, 'phb5.jpg'),
(4, 'ደቂቀ እስጢፋኖስ', 250, 'phb4.jpg'),
(5, 'ፓይታጎረስ', 250, 'ph10.jpg'),
(6, 'ቅኔ', 250, 'phb8.jpg'),
(7, 'ሱፊዝም', 250, 'ph6.jpg'),
(8, 'የጠቢባን መንገድ', 250, 'phb2.jpg'),
(9, 'ነፃ ስሜቶች', 250, 'ph7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'ኦሮማይ', 200, 'LF4.jpg'),
(7, 'ፍቅር እስከመቃብር', 300, 'fikereske.jpg'),
(9, 'አለመኖር', 300, 'alemenor.jpg'),
(10, 'ሌላ ሰው', 250, 'lelasew.jpg'),
(12, 'ዮራቶራድ', 150, 'yoratorad.jpg'),
(13, 'ከአድማስ ባሻገር', 200, 'LF15.jpg'),
(14, 'ሜሎሪና', 200, 'melorina.jpg'),
(16, 'ዴርቶጋዳ', 200, 'dertogada.jpg'),
(17, 'እመጎ', 200, 'images (7).jpeg'),
(18, 'ራማቶሓራ', 200, 'ramatohara.jpeg'),
(19, 'ዣንቶዣራ', 200, 'zantozora.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `products3`
--

CREATE TABLE `products3` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products3`
--

INSERT INTO `products3` (`id`, `name`, `price`, `image`) VALUES
(1, 'ሁቱትሲ', 200, 'Bg1.jpg'),
(2, 'መሆን', 150, 'bg3.jpg'),
(3, 'ማሃትማ ጋንዲ', 150, 'Bg8.jpg'),
(4, 'ህልም አለኝ', 150, 'Bg7.jpg'),
(5, 'ባራክ ኦባማ', 150, 'bg4.jpg'),
(6, 'ረጅሙ የነፃነት ጉዞ', 200, 'nm.jpg'),
(7, 'ማስታወሻ', 150, 'Bg5.jpg'),
(8, 'ሰውዬው', 200, 'gg.jpg'),
(9, 'በአሉ ግርማ ህይወቱና ስራዎቹ', 150, 'jjj.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'natnael', 'natman@gmail.com', '4dbe7a56d69f0be6425657020e7d1184', 'admin'),
(2, 'Natnael Berhanu', 'natma@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(6, 'kidus Tadesse', 'kiduman@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'user'),
(9, 'kidus Tadesse', 'Kidu@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product2`
--
ALTER TABLE `product2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product4`
--
ALTER TABLE `product4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product5`
--
ALTER TABLE `product5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product6`
--
ALTER TABLE `product6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product7`
--
ALTER TABLE `product7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products3`
--
ALTER TABLE `products3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product2`
--
ALTER TABLE `product2`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product4`
--
ALTER TABLE `product4`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product5`
--
ALTER TABLE `product5`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product6`
--
ALTER TABLE `product6`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product7`
--
ALTER TABLE `product7`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products3`
--
ALTER TABLE `products3`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
