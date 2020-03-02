-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 12 2019 г., 17:09
-- Версия сервера: 5.6.41
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(1, 'Смартфоны', 1, 1),
(2, 'Ноутбуки', 2, 1),
(3, 'Планшеты', 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_news` int(11) NOT NULL,
  `is_recommended` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `image`, `description`, `is_news`, `is_recommended`, `status`, `date`) VALUES
(0, 'Ноутбук Prestigio SmartBook 141S', 2, 5122223, 2899, 1, 'Prestigio ', '', 'Экран 14.1\" IPS (1920x1080) Full HD, матовый / Intel Celeron N3350 (1.1 - 2.4 ГГц) / RAM 3 ГБ / eMMC 32 ГБ / Intel HD Graphics 500 / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 10 Home / 1.4 кг / синий', 0, 0, 1, '2019-05-11 18:12:59'),
(1, 'Ноутбук Acer Nitro 5', 2, 1122223, 2899, 1, 'Asus', '', 'Экран 15.6\" (1366x768) WXGA HD, матовый / Intel Pentium N4200 (1.1 - 2.5 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics 505 / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 10 Home 64bit / 2 кг / темно-коричневый', 0, 1, 1, '2019-04-16 17:52:17'),
(2, 'Ноутбук Lenovo IdeaPad ', 2, 1234567, 1200, 1, 'Lenovo ', '', 'Экран 15.6\" TN+film (1366x768) HD, матовый / AMD E2-9000 (1.8 - 2.2 ГГц) / RAM 4 ГБ / HDD 500 ГБ / AMD Radeon R2 Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.2 кг / черный', 0, 1, 1, '2019-04-16 17:52:17'),
(3, 'Ноутбук Lenovo IdeaPad ', 2, 7654321, 6500, 0, 'Lenovo ', '', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 0, 1, 1, '2019-04-16 17:52:17'),
(4, 'Ноутбук Acer Nitro 5 ', 2, 1212121, 4999, 1, 'Acer ', '', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 1, 1, 1, '2019-04-16 18:56:29'),
(5, 'Ноутбук HP 250 G6', 2, 4554455, 1111, 1, 'HP ', '', 'Экран 15.6” (1920x1080) Full HD, матовый / Intel Celeron N4000 (1.1 - 2.6 ГГц) / RAM 4 ГБ / SSD 128 ГБ / Intel UHD Graphics 600 / DVD+/-RW / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 1.86 кг / темно-серый', 1, 1, 1, '2019-04-16 17:52:17');

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(1, 'bvv', '2222222111', 'dhgh', 0, '2019-04-22 21:24:41', '{\"5\":1,\"3\":1}', 1),
(2, 'Илья', '0687828348', 'Мариуполь', 1, '2019-05-11 18:30:26', '{\"5\":1,\"4\":1,\"3\":1,\"1\":1}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Admin', 'polakilyaser@gmail.com', '111111', 'admin'),
(2, 'Илья Поляк', 'polakser@ukr.net', '111111', ''),
(3, 'Ілля', 'polak@ukr.net', '111111', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
