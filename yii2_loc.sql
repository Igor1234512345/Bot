-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Жов 29 2018 р., 00:16
-- Версія сервера: 10.1.36-MariaDB
-- Версія PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `yii2_loc`
--

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `keywords`, `description`) VALUES
(1, 0, 'Пицца', 'вещи в бишкеке', 'фвывфывфывфыв'),
(8, 0, 'Напитки', NULL, NULL),
(9, 8, 'Соки', '', ''),
(14, 0, 'Блюда', '', ''),
(15, 0, 'Салаты', '', ''),
(16, 8, 'Коктейли', '', ''),
(17, 8, 'Молочные коктейли', '', '');

-- --------------------------------------------------------

--
-- Структура таблиці `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `image`
--

INSERT INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
(13, 'Products/Product5/bc8e61.jpg', 5, 0, 'Product', '8d472ba8e1-2', ''),
(14, 'Products/Product5/4dada6.jpg', 5, 1, 'Product', '2aa50b7a2a-1', ''),
(15, 'Products/Product1/8e93da.jpg', 1, 1, 'Product', 'd01ccd967e-1', ''),
(16, 'Products/Product1/cf7b7a.jpg', 1, NULL, 'Product', 'c9bc7abe8d-2', ''),
(17, 'Products/Product10/c9e957.jpg', 10, 1, 'Product', 'd84863249d-1', ''),
(18, 'Products/Product11/4d502a.jpg', 11, 1, 'Product', 'f0465a4b49-1', ''),
(19, 'Products/Product12/463683.jpg', 12, 1, 'Product', 'd16ff9bfa6-1', ''),
(20, 'Products/Product13/c3498b.jpg', 13, 1, 'Product', '1957223eba-1', ''),
(21, 'Products/Product14/1c55fb.jpg', 14, 1, 'Product', '0f70a44833-1', ''),
(22, 'Products/Product15/33cff3.jpg', 15, 1, 'Product', '0792adb8d1-1', ''),
(23, 'Products/Product16/fb61af.jpg', 16, 1, 'Product', 'd25bbd99d1-1', ''),
(25, 'Products/Product7/3d01bb.jpg', 7, 1, 'Product', '57fd034e98-1', ''),
(26, 'Products/Product8/abec8b.jpg', 8, 1, 'Product', '72f4240faf-1', ''),
(27, 'Products/Product9/5203db.jpg', 9, 1, 'Product', '00ab52e719-1', ''),
(28, 'Products/Product17/66857c.jpg', 17, 1, 'Product', 'ba7a10f6c3-1', '');

-- --------------------------------------------------------

--
-- Структура таблиці `migration`
--

---------------------

--
-- Структура таблиці `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(11) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `order`
--

INSERT INTO `order` (`id`, `created_at`, `updated_at`, `qty`, `sum`, `status`, `name`, `email`, `phone`, `address`) VALUES
(26, '2018-09-11 11:48:06', '2018-09-11 11:48:06', 1, 12, '1', 'Рафкат ака', 'rafkataka@gmail.com', '912312312312', 'Лермонтова 12А2'),
(29, '2018-09-11 15:32:28', '2018-09-11 15:32:28', 1, 335, '1', 'Рафкат ака', 'rafkat-karimov@mail.ru', '912312312312', 'Лермонтова 12А2'),
(30, '2018-09-21 09:45:33', '2018-09-21 09:45:33', 3, 36, '0', 'Рафкат', '', '995112312312', '12312вфывфыв'),
(31, '2018-09-21 15:39:15', '2018-09-21 15:39:15', 12, 144, '0', 'xZXZ', 'ZXZX', '123123', 'dassda'),
(32, '2018-09-26 16:44:18', '2018-09-26 16:44:18', 4, 1340, '0', 'Василий ', 'dasda@gmail.com', '123123', 'dassda');

-- --------------------------------------------------------

--
-- Структура таблиці `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `price`, `qty_item`, `sum_item`) VALUES
(31, 25, 2, 'Уйгурская', 12, 1, 12),
(32, 25, 8, 'Colla 1 litr', 30, 1, 30),
(33, 26, 2, 'Уйгурская', 12, 1, 12),
(34, 27, 7, 'Fanta 1 litr', 30, 1, 30),
(35, 28, 2, 'Уйгурская', 12, 9, 108),
(36, 28, 1, 'Мексиканская', 335, 3, 1005),
(37, 29, 1, 'Мексиканская', 335, 1, 335),
(38, 30, 2, 'Уйгурская', 12, 3, 36),
(39, 31, 5, 'Нарынская', 12, 11, 132),
(40, 31, 2, 'Уйгурская', 12, 1, 12),
(41, 32, 1, '4 сыра', 335, 4, 1340);

-- --------------------------------------------------------

--
-- Структура таблиці `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `price` float NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `hit` enum('0','1') NOT NULL,
  `new` enum('0','1') NOT NULL,
  `sale` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `content`, `price`, `keywords`, `description`, `img`, `hit`, `new`, `sale`) VALUES
(1, 1, '4 сыра', '<p>Пармезан, сулугуни, моцарелла,&nbsp; голандский, соус.&nbsp;</p>\r\n', 335, 'Пицца 4 сыра в Бишкеке', '<h3><strong>Пицца 4 сыра&nbsp; это превосходное пицца, которые включает себя </strong></h3>\r\n\r\n<h3><strong>следующие сыры:</strong></h3>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:tahoma,geneva,sans-serif\">​Моцарелла&nbsp;(Mozzarella)- молодой мягкий итальянский сыр в виде белых шариков, однако здесь мы будем использовать твердую разновидность этого сыра, так называемую моцареллу для пиццы. Этот сыр не солёный, имеет нейтральный вкус, очень хорошо плавится, красиво запекается и отлично тянется при откусывании пиццы. Вместо него можно взять несолёный Сулугуни, они очень похожи с твёрдой Моцареллой.</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:tahoma,geneva,sans-serif\">&nbsp;Пармезан&nbsp;(Parmigiano Reggiano) &mdash; твёрдый выдержанный сыр, имеет насыщенный пикантный вкус и ломкую текстуру. Его можно заменить на другой твёрдый выдержанный сыр.</span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"font-family:tahoma,geneva,sans-serif\">&nbsp; &nbsp;&nbsp;</span></span></p>\r\n', 'img1.jpg', '1', '0', '0'),
(7, 9, 'Фанта 1 литр', '<p><span style=\"color:rgb(0, 0, 0); font-family:arial,sans-serif\">вода, сахар, концентрированный апельсиновый сок, диоксид углерода, регулятор кислотности лимонная кислота, витамин С, консервант сорбат калия, натуральные ароматизаторы, стабилизаторы эфиры глицерина и смоляных кислот, гуаровая камедь, краситель бета-каротин. Допускается выпадение осадка натуральных компонентов.</span></p>\r\n', 45, 'Фанта 1 литр в Бишкеке', '<p><span style=\"font-size:20px\"><span style=\"color:rgb(0, 0, 0); font-family:arial,sans-serif\">Безалкогольный газированный витаминизированный.</span></span></p>\r\n', '', '0', '0', '0'),
(8, 9, 'Coca - Cola 1 литр', '<p>вода, сахар, диоксид углерода, краситель сахарный колер IV, регулятор кислотности ортофосфорная кислота, натуральные ароматизаторы, кофеин.</p>\r\n', 45, 'Coca - Cola в Бишкеке', '<p><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0); font-family:roboto\">Безалкогольный газированный. Без консервантов.</span></span></p>\r\n', 'cola.jpg', '0', '0', '0'),
(9, 9, 'Sprite 1 литр', '<p>Вода, сахар, регуляторы кислотности (лимонная кислота, цитрат натрия), натуральные ароматизаторы, подсластители (ацесульфам калия, аспартам, неогесперидин дигидрохалкон), консервант бензоат натрия, носитель глицерин. Продукт содержит источник фенилаланина.</p>\r\n', 45, 'Sprite 1 литр в Бишкеке', '<p><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0); font-family:roboto\">Безалкогольный, газированный.</span></span></p>\r\n', '', '0', '0', '0'),
(10, 1, 'Пицца восточная', '<p>Баранина без жира, соус, помидоры, сыр, болгарский перец</p>\r\n', 400, 'Пицца восточная в Бишкеке', '<h3>&nbsp;</h3>\r\n\r\n<h3><strong>&nbsp;</strong><span style=\"color:rgb(75, 75, 75); font-family:open sans,sans-serif; font-size:16px\">Восточная кухня &ndash; это настоящее искусство! Она многогранна и притягательна, но при этом не похожа ни на какие другие. </span></h3>\r\n\r\n<h3><strong>&nbsp;Пицца восточная&nbsp;</strong></h3>\r\n', '', '1', '0', '0'),
(11, 1, ' Пицца Итальянская', '<p>Соус, болгарский перец, помидоры, шампиньоны,колбаса,сыр, маслины</p>\r\n', 300, 'Пицца Итальянская в Бишкеке', '<p>фывфыв</p>\r\n', '', '1', '0', '0'),
(12, 1, 'Пицца Классическая', '<p>Соус, болгарский перец, помидоры, шампиньоны, сыр</p>\r\n', 270, 'Пицца Классическая в Бишкеке', '<p>фывфыв</p>\r\n', '', '1', '0', '0'),
(13, 1, 'Пицца Пепперони', '<p>Копченая колбаса, сыр, перец <strong>чили, </strong>помидоры, орегано, чеснок</p>\r\n', 300, 'Пицца Пепперони в Бишкеке', '<p>ффывфыфв</p>\r\n', '', '1', '0', '0'),
(14, 1, 'Пицца Особая', '<p>копченая курица, говядина, шампиньоны, соус, сыр, моцарелла, зелень</p>\r\n', 350, 'Пицца особая в Бишкеке', '<p>фывфыв</p>\r\n', '', '1', '0', '0'),
(15, 1, 'Пицца Чили', '<p>Сыр, фарш, перец чили, соус,&nbsp;</p>\r\n', 300, 'Пицца Чили в Бишкеке', '<p>фывфы</p>\r\n', '', '1', '0', '0'),
(16, 1, 'Пицца Маргарита', '<p>Соус, сыр моцарелла, помидоры</p>\r\n', 250, 'Пицца Маргарита в Бишкеке', '<p>Тест</p>\r\n', '', '1', '0', '0'),
(17, 9, 'Pepsi 1 литр', '<p>вода, сахар, комплексная пищевая добавка (краситель Е150d, регулятор кислотности Е338, вода, кофеин (103-110 мг/л)), ароматизатор натуральный (в составе стабилизатор гуммиарабик, регулятор кислотности лимонная кислота).</p>\r\n', 45, 'Pepsi 1 литр в Бишкеке', '<p><span style=\"font-size:18px\"><span style=\"color:rgb(0, 0, 0); font-family:roboto\">Безалкогольный на ароматах &quot;Пепси-Кола&quot;.</span></span></p>\r\n', '', '0', '0', '0');

-- --------------------------------------------------------

--
-- Структура таблиці `uploads_images`
--

CREATE TABLE `uploads_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `uploads_images`
--

INSERT INTO `uploads_images` (`id`, `product_id`, `img`) VALUES
(1, 1, 'img1.jpg'),
(3, 1, 'img1.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '123', '-m52HKLPu1molx1zPM2-P5HgQ6UJ9IoV');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `migration`
--

--
-- Індекси таблиці `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `uploads_images`
--
ALTER TABLE `uploads_images`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблиці `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблиці `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблиці `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблиці `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблиці `uploads_images`
--
ALTER TABLE `uploads_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
