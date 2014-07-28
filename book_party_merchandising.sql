-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2014 a las 00:45:09
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `book_party_merchandising`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `category_initiation` datetime NOT NULL,
  `category_end` datetime NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id_category`, `category_name`, `category_initiation`, `category_end`) VALUES
(1, 'los libreros', '2014-06-27 08:00:22', '2014-07-04 23:50:22'),
(2, 'comic', '2014-06-09 00:00:00', '2014-06-09 00:00:00'),
(3, 'test', '2014-06-10 17:14:00', '2014-06-10 17:14:00'),
(4, 'Distribuidores', '2014-06-13 10:00:00', '2014-06-13 10:10:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id_city` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) NOT NULL,
  `city_state` varchar(50) NOT NULL,
  PRIMARY KEY (`id_city`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `city`
--

INSERT INTO `city` (`id_city`, `city_name`, `city_state`) VALUES
(1, 'Medellin', 'Reserva'),
(2, 'Bello', 'Reserva'),
(3, 'Cali', 'Disponible'),
(4, 'Pereira', 'Reserva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `date`
--

CREATE TABLE IF NOT EXISTS `date` (
  `id_date` int(11) NOT NULL,
  `date_name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `inscription_id` varchar(50) NOT NULL,
  `date_state` varchar(50) NOT NULL,
  `date_assignment` varchar(100) NOT NULL,
  PRIMARY KEY (`id_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `date`
--

INSERT INTO `date` (`id_date`, `date_name`, `category_id`, `inscription_id`, `date_state`, `date_assignment`) VALUES
(1, '21 de agosto - 8:50 am', 0, '0', 'Reservado', ''),
(2, '21 de agosto - 8:50 am', 2, '1-1', 'Disponible', ''),
(3, '21 de agosto - 8:50 am', 1, '2-8', 'Disponible', '2014-06-25 17:48:01:8197'),
(4, '21 de agosto - 8:50 am', 1, '3-9', 'Disponible', '2014-06-25 17:54:48:7500'),
(5, '21 de agosto - 8:50 am', 1, '2-5', 'Reservado', '2014-06-25 11:35:01:5124'),
(6, '21 de agosto - 8:50 am', 1, '2-7', 'Reservado', '2014-06-25 17:41:08:7096');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscriptions`
--

CREATE TABLE IF NOT EXISTS `inscriptions` (
  `nit` varchar(50) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `representative_name` varchar(100) NOT NULL,
  `representative_document` varchar(50) NOT NULL,
  `representative_city` varchar(50) NOT NULL,
  `representative_phone` varchar(50) NOT NULL,
  `representative_cellphone` varchar(50) NOT NULL,
  `representative_mail` varchar(100) NOT NULL,
  `trade_name` varchar(100) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `contact_document` varchar(100) NOT NULL,
  `contact_city` varchar(50) NOT NULL,
  `contact_phone` varchar(50) NOT NULL,
  `cellphone` varchar(50) NOT NULL,
  `contanct_mail` varchar(50) NOT NULL,
  `attached1` varchar(50) NOT NULL,
  `attached2` varchar(50) NOT NULL,
  `attached3` varchar(50) NOT NULL,
  `dir` varchar(50) NOT NULL,
  PRIMARY KEY (`nit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inscriptions`
--

INSERT INTO `inscriptions` (`nit`, `company_name`, `representative_name`, `representative_document`, `representative_city`, `representative_phone`, `representative_cellphone`, `representative_mail`, `trade_name`, `contact_name`, `contact_document`, `contact_city`, `contact_phone`, `cellphone`, `contanct_mail`, `attached1`, `attached2`, `attached3`, `dir`) VALUES
('1-1', 'zxvzxv', 'zxvzxv', '12345', 'Bello', '12345', 'xvzxv', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', 'footer.jpg', 'recomendaciones_01.jpg', '5_EnBuscadelaFelicidad_OK.jpg', 'uploads\\inscription\\attached1'),
('1-2', 'zxvzxv', 'zxvzxv', '12345', 'Bello', '12345', 'xvzxv', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('1-3', 'zxvzxv', 'asfasf', '12345', 'Bello', '12345', 'xvzxv', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('1-4', 'asfasf', 'zxvzxv', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('1-5', 'asfasf', 'zxvzxv', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('1-6', 'asfasf', 'zxvzxv', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('1-7', 'asfasf', 'zxvzxv', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Cali', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('1-8', 'asfasf', 'zxvzxv', '12345', 'Cali', '12345', '123456', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('1-9', 'asfasf', 'zxvzxv', '12345', 'Cali', '12345', '123456', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('2-1', 'asfasf', 'zxvzxv', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', 'Rut_asfasf-0.jpg', 'Rut_asfasf.jpg', 'Rut_asfasf.png', 'uploads\\inscription\\attached1'),
('2-2', 'asfasf', 'zxvzxv', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('2-3', 'asfasf', 'zxvzxv', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('2-4', 'asfasf', 'zxvzxv', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('2-5', 'asfasf', 'zxvzxv', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('2-7', 'zxvzxv', 'zxvzxv', '12345', 'Bello', '12345', 'xvzxv', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', 'sdfsf', 'Bello', '12345', 'sdfsdf', 'y@hotmail.com', '', '', '', ''),
('2-8', 'asfasf', 'zxvzxv', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('3-9', 'asfasf', 'asfasf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', 'asdad', 'sdfsfsf', 'sdfsf', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('44-1', 'zxvzxv', 'zxvzxv', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', 'hello', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('7-1', 'asfasf', 'zxvzxv', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', ''),
('asdasd-1', 'asfasf', 'zxvzxv', 'zxvzxv', 'Bello', '12345', '123456', 'y@hotmail.com', 'sdfsf', 'sdfsfsf', '12345', 'Bello', '12345', '123456', 'y@hotmail.com', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `permission_level` int(11) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `permission_level`) VALUES
(1, 'johana', 'd03740af74d5aaa681e5a1b75ba9f4c6b0ae4f7f', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
