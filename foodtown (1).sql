-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Eki 2019, 20:10:28
-- Sunucu sürümü: 10.1.37-MariaDB
-- PHP Sürümü: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `foodtown`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `aname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `amail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `apass` varchar(32) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `amail`, `apass`) VALUES
(1, 'Aziz Sancar', 'admin@mail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'Aziz Sancar', 'erkan@mail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `cname` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`cid`, `cname`) VALUES
(1, 'Burgers'),
(2, 'Pizzas'),
(3, 'Vegetarians'),
(4, 'Drinks'),
(5, 'Desserts'),
(6, 'Special Offers');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer`
--

CREATE TABLE `customer` (
  `cstid` int(11) NOT NULL,
  `cstname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `cstmail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `cstpassword` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `orderid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `customer`
--

INSERT INTO `customer` (`cstid`, `cstname`, `cstmail`, `cstpassword`, `orderid`) VALUES
(1, 'Alice Grace', 'customer@customer.com', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(2, 'burcu', 'burcu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `ptitle` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `pdesc` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `pphoto` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `pprice` decimal(10,2) NOT NULL,
  `pcid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`pid`, `ptitle`, `pdesc`, `pphoto`, `pprice`, `pcid`) VALUES
(1, 'Luger Burger', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/burger1.jpg', '12.50', 1),
(2, 'Pigeon Burger', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/burger2.jpg\r\n', '9.00', 1),
(3, 'Double Animal Style', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/burger3.jpg', '13.50', 1),
(6, 'Whiskey King Burger', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/burger4.jpg', '14.00', 1),
(8, 'Pizza Alla Napoletana', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/pizza1.jpg', '22.50', 2),
(9, 'Pizza Marinara', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/pizza2.jpg', '23.50', 2),
(10, 'Pizza Veronese', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/pizza3.jpg', '24.50', 2),
(11, 'Pizza Ai Quattro', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/pizza4.jpg', '25.50', 2),
(12, 'Pilachu Fruit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/salad1.jpg', '12.50', 3),
(13, 'Choloride', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/salad2.jpg', '13.50', 3),
(14, 'Brocco Flower', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/salad3.jpg', '14.50', 3),
(15, 'Brussels Sprouts', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/salad4.jpg', '15.50', 3),
(16, 'Keurig Dr Pepper', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/drink1.jpg', '12.50', 4),
(17, 'Hamoud Boualem', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/drink2.jpg', '13.50', 4),
(18, 'National Beverage', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/drink3.jpg', '14.50', 4),
(19, 'Polar Beverages', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/drink4.jpg', '15.50', 4),
(20, 'Mint Oreo Cake', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/dessert1.jpg', '12.50', 5),
(21, 'Ultimate Gooey', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/dessert2.jpg', '13.50', 5),
(22, 'Butter Finger Cookie', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/dessert3.jpg', '14.50', 5),
(23, 'Meyer Lemon Bars', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/dessert4.jpg', '15.50', 5),
(24, 'Big Bowl Salad\r\n', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/big-salad.png', '15.50', 6),
(25, 'Best Pizza Slide\r\n', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. natoque penatibus et magnis', '/resources/dist/img/big-pizza.png', '15.50', 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `productorder`
--

CREATE TABLE `productorder` (
  `oid` int(11) NOT NULL,
  `otitle` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `odesc` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ophoto` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `oprice` decimal(10,2) NOT NULL,
  `oqty` int(11) NOT NULL,
  `ostatu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `otime` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `odtime` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Tablo için indeksler `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cstid`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Tablo için indeksler `productorder`
--
ALTER TABLE `productorder`
  ADD PRIMARY KEY (`oid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `customer`
--
ALTER TABLE `customer`
  MODIFY `cstid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `productorder`
--
ALTER TABLE `productorder`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
