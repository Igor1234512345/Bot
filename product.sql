-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 14 2018 г., 10:25
-- Версия сервера: 10.1.35-MariaDB
-- Версия PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2_loc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `product`
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
-- Дамп данных таблицы `product`
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

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
