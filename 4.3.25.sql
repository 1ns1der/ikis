-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 26 2014 г., 05:14
-- Версия сервера: 5.5.36
-- Версия PHP: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `mydbname`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bosses`
--

CREATE TABLE IF NOT EXISTS `bosses` (
  `FIO` varchar(255) NOT NULL,
  `Dolznost` varchar(255) NOT NULL,
  `Staj` varchar(255) NOT NULL,
  PRIMARY KEY (`FIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `FIO` varchar(255) NOT NULL,
  `Dolznost` varchar(255) NOT NULL,
  `BirthDate` varchar(255) NOT NULL,
  `Pol` varchar(255) NOT NULL,
  `Zarplata` int(11) NOT NULL,
  PRIMARY KEY (`FIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `personal`
--

INSERT INTO `personal` (`FIO`, `Dolznost`, `BirthDate`, `Pol`, `Zarplata`) VALUES
('Иванов Иван Иванович', '', '', '', 150),
('Иванов Петр Васильевич', '', '', '', 100),
('Петров Владимир Попкович', '', '', '', 75);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
