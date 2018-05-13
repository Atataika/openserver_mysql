-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 25 2018 г., 13:44
-- Версия сервера: 5.6.38-log
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` tinytext NOT NULL,
  `holding_price` int(11) NOT NULL,
  `hotel_description` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_name`, `holding_price`, `hotel_description`, `date`, `time`) VALUES
(1, 'Номер на одного', 500, 'Комфортный номер на одного человека. Холодильник, душ и выход на балкон имеются в данной комплектации заказа.', '2018-04-21', '20:06:20'),
(2, 'Номер делюкс', 35900, 'Роскошный лакшери номер, расположенный на крыше нашего заведения. Красочный интерьер и превосходный внешний вид помещения оставит Вас в восторге!', '2018-04-21', '22:31:51'),
(11, 'Можайский техникум', 15300, 'МБОУ Можайский многопрофильный техникум предоставляет уникальные возможности самореализации и релаксации обучающихся студентов(помогите).', '2018-04-21', '17:27:29'),
(18, 'Большевязёмская гимназия', 10000, 'МБОУ Большевязёмская гимназия предоставляет обучение школьников на среднем уровне.', '2018-04-21', '18:35:30'),
(31, 'Юзер', 900, 'Однозначно буду пользоваться\n', '2018-04-21', '20:06:32'),
(35, '354', 2000, 'Что тут именно нужно? Комната со всеми удобствами, желательно с уборной. ', '2018-04-21', '20:18:43');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
