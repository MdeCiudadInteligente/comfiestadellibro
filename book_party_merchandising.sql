-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-08-2014 a las 19:26:20
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id_category`, `category_name`, `category_initiation`, `category_end`) VALUES
(12, 'Grupo editorial', '2014-07-31 08:30:00', '2014-08-04 12:00:00'),
(13, 'Editorial', '2014-08-04 14:00:00', '2014-08-04 17:00:00'),
(14, 'Editorial independiente', '2014-08-05 08:30:00', '2014-08-05 12:00:00'),
(15, 'Fondo editorial universitario', '2014-08-05 14:00:00', '2014-08-05 17:00:00'),
(16, 'LibrerÃ­a espiritual', '2014-08-06 08:30:00', '2014-08-06 12:00:00'),
(17, 'Promociones', '2014-08-06 14:00:00', '2014-08-06 17:00:00'),
(18, 'Distribuidor', '2014-08-08 14:00:00', '2014-08-08 17:00:00'),
(19, 'Libros leÃ­dos', '2014-08-09 08:00:00', '2014-08-09 12:00:00'),
(20, 'LibrerÃ­as', '2014-08-08 08:30:00', '2014-08-08 12:00:00'),
(21, 'PRUEBA!!', '2014-07-24 17:30:00', '2014-07-24 18:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id_city` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) NOT NULL,
  `city_state` varchar(50) NOT NULL,
  PRIMARY KEY (`id_city`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `city`
--

INSERT INTO `city` (`id_city`, `city_name`, `city_state`) VALUES
(14, 'Barbosa', 'Reserva'),
(15, 'Bello', 'Reserva'),
(16, 'Caldas', 'Reserva'),
(17, 'Copacabana', 'Reserva'),
(18, 'Envigado', 'Reserva'),
(19, 'La estrella', 'Reserva'),
(20, 'Girardota', 'Reserva'),
(21, 'ItaguÃ­', 'Reserva'),
(22, 'MedellÃ­n', 'Reserva'),
(23, 'Sabaneta', 'Reserva'),
(24, 'BogotÃ¡', 'Disponible'),
(25, 'Cali', 'Disponible'),
(26, 'Otras ciudades', 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `date`
--

CREATE TABLE IF NOT EXISTS `date` (
  `id_date` int(11) NOT NULL AUTO_INCREMENT,
  `date_name` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `inscription_id` varchar(50) NOT NULL,
  `date_state` varchar(50) NOT NULL,
  `date_assignment` varchar(100) NOT NULL,
  PRIMARY KEY (`id_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Volcado de datos para la tabla `date`
--

INSERT INTO `date` (`id_date`, `date_name`, `category_id`, `inscription_id`, `date_state`, `date_assignment`) VALUES
(1, '2014-08-11 08:30:00', 12, '11-1', 'Reservado', '2014-08-01 00:43:10:0551'),
(2, '2014-08-11 09:00:00', 12, '22-1', 'Reservado', '2014-08-01 00:45:00:4594'),
(3, '2014-08-11 09:30:00', 12, '0', 'Reservado', ''),
(4, '2014-08-11 10:00:00', 12, '0', 'Reservado', ''),
(5, '2014-08-11 10:30:00', 12, '0', 'Reservado', ''),
(6, '2014-08-11 11:00:00', 12, '0', 'Reservado', ''),
(7, '2014-08-11 11:30:00', 12, '0', 'Reservado', ''),
(8, '2014-08-11 12:00:00', 12, '0', 'Reservado', ''),
(9, '2014-08-11 13:30:00', 13, '0', 'Reservado', ''),
(10, '2014-08-11 14:00:00', 13, '0', 'Reservado', ''),
(11, '2014-08-11 14:30:00', 13, '0', 'Reservado', ''),
(12, '2014-08-11 15:00:00', 13, '0', 'Reservado', ''),
(13, '2014-08-11 15:30:00', 13, '0', 'Disponible', ''),
(14, '2014-08-11 16:00:00', 14, '0', 'Reservado', ''),
(15, '2014-08-11 16:30:00', 14, '0', 'Reservado', ''),
(16, '2014-08-11 17:00:00', 14, '0', 'Reservado', ''),
(17, '2014-08-12 08:30:00', 14, '0', 'Reservado', ''),
(18, '2014-08-12 09:00:00', 14, '0', 'Disponible', ''),
(19, '2014-08-12 09:30:00', 15, '0', 'Reservado', ''),
(20, '2014-08-12 10:00:00', 15, '0', 'Reservado', ''),
(21, '2014-08-12 10:30:00', 15, '0', 'Reservado', ''),
(22, '2014-08-12 11:00:00', 15, '0', 'Reservado', ''),
(23, '2014-08-12 11:30:00', 15, '0', 'Reservado', ''),
(24, '2014-08-12 12:00:00', 15, '0', 'Reservado', ''),
(25, '2014-08-12 13:30:00', 15, '0', 'Reservado', ''),
(26, '2014-08-12 14:00:00', 15, '0', 'Reservado', ''),
(27, '2014-08-12 14:30:00', 15, '0', 'Reservado', ''),
(28, '2014-08-12 15:00:00', 15, '0', 'Disponible', ''),
(29, '2014-08-12 15:30:00', 16, '54545551112-1', 'Reservado', '2014-07-28 11:28:40:6449'),
(30, '2014-08-12 16:00:00', 16, '35474859054-1', 'Reservado', '2014-07-28 11:28:53:0126'),
(31, '2014-08-12 16:30:00', 16, '42692985-1', 'Reservado', '2014-07-28 11:29:04:9667'),
(32, '2014-08-12 17:00:00', 16, '1040181570-3', 'Disponible', '2014-07-28 11:28:34:0522'),
(33, '2014-08-13 08:30:00', 17, '0', 'Reservado', ''),
(34, '2014-08-13 09:00:00', 17, '0', 'Reservado', ''),
(35, '2014-08-13 09:30:00', 17, '0', 'Reservado', ''),
(36, '2014-08-13 10:00:00', 17, '0', 'Disponible', ''),
(37, '2014-08-13 10:30:00', 17, '0', 'Disponible', ''),
(38, '2014-08-13 11:00:00', 18, '0', 'Reservado', ''),
(39, '2014-08-13 11:30:00', 18, '0', 'Reservado', ''),
(40, '2014-08-13 12:00:00', 18, '0', 'Reservado', ''),
(41, '2014-08-13 13:30:00', 18, '0', 'Reservado', ''),
(42, '2014-08-13 14:00:00', 18, '0', 'Disponible', ''),
(43, '2014-08-13 14:30:00', 18, '0', 'Disponible', ''),
(44, '2014-08-13 15:00:00', 19, '0', 'Reservado', ''),
(45, '2014-08-13 15:30:00', 19, '0', 'Reservado', ''),
(46, '2014-08-13 16:00:00', 19, '0', 'Reservado', ''),
(47, '2014-08-13 16:30:00', 19, '0', 'Reservado', ''),
(48, '2014-08-13 17:00:00', 19, '0', 'Reservado', ''),
(49, '2014-08-14 08:30:00', 19, '0', 'Disponible', ''),
(50, '2014-08-14 09:00:00', 20, '0', 'Reservado', ''),
(51, '2014-08-14 09:30:00', 20, '0', 'Reservado', ''),
(52, '2014-08-14 10:00:00', 20, '0', 'Reservado', ''),
(53, '2014-08-14 10:30:00', 20, '0', 'Reservado', ''),
(54, '2014-08-14 11:00:00', 20, '0', 'Reservado', ''),
(55, '2014-08-14 11:30:00', 20, '0', 'Reservado', ''),
(56, '2014-08-14 12:00:00', 20, '0', 'Reservado', ''),
(57, '2014-08-14 13:30:00', 20, '0', 'Reservado', ''),
(58, '2014-08-14 14:00:00', 20, '0', 'Reservado', ''),
(59, '2014-08-14 14:30:00', 20, '0', 'Reservado', ''),
(60, '2014-08-14 15:00:00', 20, '0', 'Reservado', ''),
(61, '2014-08-14 15:30:00', 20, '0', 'Reservado', ''),
(62, '2014-08-14 16:00:00', 20, '0', 'Reservado', ''),
(63, '2014-08-15 08:30:00', 20, '0', 'Disponible', ''),
(64, '2014-08-15 09:00:00', 20, '0', 'Disponible', ''),
(65, '2014-08-15 09:30:00', 20, '0', 'Disponible', ''),
(66, '2014-08-15 10:00:00', 20, '0', 'Disponible', ''),
(67, '2014-08-15 10:30:00', 20, '0', 'Disponible', ''),
(68, '2014-08-15 11:00:00', 20, '0', 'Disponible', ''),
(69, '2014-08-15 11:30:00', 20, '0', 'Disponible', '');

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
  `date_assignment` varchar(200) NOT NULL,
  PRIMARY KEY (`nit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inscriptions`
--

INSERT INTO `inscriptions` (`nit`, `company_name`, `representative_name`, `representative_document`, `representative_city`, `representative_phone`, `representative_cellphone`, `representative_mail`, `trade_name`, `contact_name`, `contact_document`, `contact_city`, `contact_phone`, `cellphone`, `contanct_mail`, `attached1`, `attached2`, `attached3`, `dir`, `date_assignment`) VALUES
('1020394514-8', 'LIBRERÃA LILIBLOOM Y ASOCIADOS', 'LILIANA MARÃA ECHAVARRÃA CALLEJAS', '1020394514', 'Bello', '4-2569002', '3014027405', 'laflordelilola@gmail.com', 'LILIBLOOM LIBRERÃA', 'FEDERIKO VALENCIA-ECHAVARRÃA', '1013350921', 'Bello', '4-2569002', '3014027405', 'laflordelilola@gmail.com', 'Rut_LIBRERIA_LILIBLOOM_Y_ASOCIADOS.pdf', 'Cedula_LIBRERIA_LILIBLOOM_Y_ASOCIADOS.pdf', 'Camara_comercio_LIBRERIA_LILIBLOOM_Y_ASOCIADOS.pdf', 'uploads/inscription/attached1', '0000-00-00 00:00:00'),
('1037586499-1', 'MARIA CECILIA CORREA RÃšA', 'MARIA CECILIA CORREA RÃšA', '1037586499', 'Envigado', '4-4448691', '3007438554', 'correamariace@gmail.com', 'CECI', 'MARIA CECILIA CORREA', '1037586499', 'Envigado', '4-4448691', '3007438554', 'correamariace@gmail.com', '', '', '', '', '0000-00-00 00:00:00'),
('1040181570-3', 'JUANA JIMÃ‰NEZ', 'JUANA JIMENEZ', '1040181570', 'BogotÃ¡', '4-4567890', '3005999100', 'juanajimenezrm@gmail.com', 'JUANA JIMENEZ', 'JUANA JIMENEZ', '1040181570', 'MedellÃ­n', '4-2345678', '3005998945', 'juanajimenezrm@gmail.com', '', '', '', '', '0000-00-00 00:00:00'),
('1040736538-1', 'MARIA PAOLA', 'MARIA PAOLA ZULUAGA', '1040736538', 'MedellÃ­n', '4-5585200', '312215210', 'mariapao07@hotmail.com', 'MAPA', 'MARIA PAOLA', '1040736538', 'MedellÃ­n', '4-5822844', '3122215210', 'mariapao07@hotmail.com', '', '', '', '', '0000-00-00 00:00:00'),
('11-1', 'RTETERT', 'RETERTET', '66545445', 'Bello', '4-4440000', '56846456', 'johana@hotmail.com', 'ERTERTERTET', 'GDFGDFGDFG', '45646456', 'Barbosa', '4-4440000', '5463464564', 'johana@hotmail.com', 'Rut_RTETERT.bmp', 'Cedula_RTETERT.bmp', 'Camara_comercio_RTETERT.bmp', 'uploads\\inscription\\attached1', '2014-08-01 00:43:10:0551'),
('1127228879-1', 'LA SAGRADA CUCHA2', 'ALEJANDRA GALLO', '1127228879', 'Envigado', '4-2680991', '3012169301', 'aleygallo@gmail.com', 'LA SAGRADA CUCHA2', 'ALEJANDRA GALLO', '1127228879', 'Envigado', '4-2680991', '3012169301', 'aleygallo@gmail.com', 'Rut_LA_SAGRADA_CUCHA2.pdf', 'Cedula_LA_SAGRADA_CUCHA2.pdf', 'Camara_comercio_LA_SAGRADA_CUCHA2.pdf', 'uploads/inscription/attached1', '0000-00-00 00:00:00'),
('1127228879-6', 'LA SAGRADA CUCHA', 'ALEJANDRA GALLO', '1127228879', 'Envigado', '4-2680991', '3012169301', 'aleygallo@gmail.com', 'LA SAGRADA CUCHA', 'ALEJANDRA GALLO', '1127228879', 'Envigado', '4-2680991', '3012169301', 'aleygallo@gmail.com', 'Rut_LA_SAGRADA_CUCHA.pdf', 'Cedula_LA_SAGRADA_CUCHA.pdf', 'Camara_comercio_LA_SAGRADA_CUCHA.pdf', 'uploads/inscription/attached1', '0000-00-00 00:00:00'),
('123-1', 'LIBRERIA CATOLICA', 'MAGDALENA DE JESUS', '43628424', 'MedellÃ­n', '4-2654060', '3216431171', 'al.vaiven@gmail.com', 'JESUS SALVA', 'MAGDALENA DE JESUS', '43628424', 'MedellÃ­n', '4-2654060', '3216431171', 'al.vaiven@gmail.com', '', '', '', '', '0000-00-00 00:00:00'),
('22-1', 'RTETERT', 'RETERTET', '66545445', 'Bello', '4-4440000', '1242312312', 'johana@hotmail.com', 'ERTERTERTET', 'GDFGDFGDFG', '45646456', 'Barbosa', '4-4440000', '5463464564', 'johana@hotmail.com', '', '', '', '', '2014-08-01 00:45:00:4594'),
('254534-1', 'RTETERT', 'RETERTET', '66545445', 'BogotÃ¡', '4-4440000', '045645646', 'johana@hotmail.com', 'ERTERTERTET', 'GDFGDFGDFG', '456456456', 'Barbosa', '4-4440000', '5463464564', 'johana@hotmail.com', '', '', '', '', ''),
('3456789-1', 'GINA BENAVIDES JORGE', 'GINA P. BENAVIDES JORGE', '22669131', 'MedellÃ­n', '5-3623322', '3102059626', 'gina_bjorge@hotmail.com', 'GINA BENAVIDES ', 'GINA BENAVIDES JORGE', '22669130', 'MedellÃ­n', '5-3623322', '3106013445', 'gina_bjorge@hotmail.com', '', '', '', '', '0000-00-00 00:00:00'),
('354534-1', 'RTETERT', 'RETERTET', '66545445', 'BogotÃ¡', '4-4440000', '045645646', 'johana@hotmail.com', 'ERTERTERTET', 'GDFGDFGDFG', '456456456', 'Barbosa', '4-4440000', '5463464564', 'johana@hotmail.com', '', '', '', '', ''),
('35474859054-1', 'CANTANDO', 'CARLOS CANTA', '1168393940', 'MedellÃ­n', '4-4567645', '3124565454', 'carloscanta@gmail.com', 'CANTANDO SOY FELIZ', 'JUAN CANTA', '1146384930', 'MedellÃ­n', '4-4567687', '3125456353', 'carloscanta@gmail.com', '', '', '', '', '0000-00-00 00:00:00'),
('39179549-9', 'MIRA LORENA ', 'MIRA  LORENA', '30179549', 'MedellÃ­n', '4-2648982', '3007871925', 'MIRALORENA@GMAIL.COM', 'LOMIRA', 'MIRA LORENA', '39179549', 'MedellÃ­n', '4-2648982', '3007871025', 'miralorena@gmail.com', '', '', '', '', '0000-00-00 00:00:00'),
('42692985-1', 'VIVISSS', 'VIVIANA VELASQUEZ', '42692985', 'Bello', '4-4448691', '3117381878', 'vivicejas2@gmail.com', 'VIVISSS', 'VIVIANA V', '42692985', 'Bello', '4-4448691', '3117381878', 'zonacomidas@fiestadellibroylacultura.com', 'Rut_VIVISSS.docx', 'Cedula_VIVISSS.docx', 'Camara_comercio_VIVISSS.docx', 'uploads/inscription/attached1', '0000-00-00 00:00:00'),
('45453-1', 'RTETERT', 'RETERTET', '66545445', 'BogotÃ¡', '4-4440000', '045645646', 'johana@hotmail.com', 'ERTERTERTET', 'GDFGDFGDFG', '456456456', 'Barbosa', '4-4440000', '5463464564', 'johana@hotmail.com', '', '', '', '', ''),
('454534-1', 'RTETERT', 'RETERTET', '66545445', 'BogotÃ¡', '4-4440000', '045645646', 'johana@hotmail.com', 'ERTERTERTET', 'GDFGDFGDFG', '456456456', 'Barbosa', '4-4440000', '5463464564', 'johana@hotmail.com', '', '', '', '', ''),
('456456-1', 'RTETERT', 'RETERTET', '66545445', 'Bello', '4-4440000', '456345646', 'johana@hotmail.com', 'ERTERTERTET', 'GDFGDFGDFG', '546456456', 'Bello', '4-4440000', '5463464564', 'johana@hotmail.com', '', '', '', '', ''),
('54545551112-1', 'FIESTA', 'LAURA GRAJALES', '1036619532', 'Girardota', '4-2520013', '3003357115', 'difusion@fiestadellibroylacultura.com', 'FIESTA LIBRO', 'LAURA GRAJALES', '1036619532', 'Girardota', '4-2520013', '3003357115', 'difusion@fiestadellibroylacultura.com', '', '', '', '', '0000-00-00 00:00:00'),
('860230478-1', 'EL ESPIRITI', 'CATALINA FLOREZ RINCON', '1053782834', 'BogotÃ¡', '4-1245586', '3014095151', 'asistentepublicos@gmail.com', 'JESUSITO DE MI VIDA ', 'CATALINA FLOREZ RINCON', '1053782834', 'BogotÃ¡', '1-4254765', '3014095151', 'asistentepublicos@gmail.com', 'Rut_EL_ESPIRITI.jpg', 'Cedula_EL_ESPIRITI.jpg', 'Camara_comercio_EL_ESPIRITI.jpg', 'uploads/inscription/attached1', '0000-00-00 00:00:00'),
('89032478-1', 'VENTA DE COSAS CULTURALES', 'JUAN DAVID VÃ‰LEZ ', '1128446875', 'MedellÃ­n', '4-3370714', '3007864349', 'juandavego@gmail.com', 'LIBRERIA JUANDA', 'JUAN DAVID VÃ‰LEZ', '1128446875', 'MedellÃ­n', '4-3370714', '3007864349', 'juandavego@gmail.com', '', '', '', '', '0000-00-00 00:00:00'),
('890984019-5', 'MUSEO DE ARTE MODERNO', 'LINA MARÃA LARA OSORIO', '43746745', 'MedellÃ­n', '4-5382225', '3113248958', 'soycultural@gmail.com', 'MAMM', 'LINA LARA ', '43746745', 'MedellÃ­n', '4-5381832', '3113248958', 'soycultural@gmail.com', '', '', '', '', '0000-00-00 00:00:00'),
('890984503-4', 'LIBRERÃA SIMSALABIM', 'NATHALIA CHICHUME', '3222222222', 'La estrella', '4-6472364', '3032414545', 'comercializacion@fiestadellibroylacultura.com', 'LIBRERIA SALABIM', 'NATHALIA ', '3222222222', 'La estrella', '4-5425613', '39473897589465398873347857987589347587658736587653', 'falfalitacreativa@gmail.com', 'Rut_LIBRERIA_SIMSALABIM.jpg', 'Cedula_LIBRERIA_SIMSALABIM.jpg', 'Camara_comercio_LIBRERIA_SIMSALABIM.jpg', 'uploads/inscription/attached1', '0000-00-00 00:00:00'),
('900668499-3', 'GORDITOS DE CORAZON', 'GORDO LOLO', '1037587068', 'Girardota', '4-4667783', '3112222222', 'pololo345@gmail.com', 'GORDOS', 'GORDO DE CORAZON', '1222837642', 'Girardota', '4-3112222', '3121212121', 'pololo345@gmail.com', '', '', '', '', '0000-00-00 00:00:00'),
('98667676-1', 'COCOLISO DEL ALMA', 'JOSE CALDERÃ“N', '98667676', 'MedellÃ­n', '4-5548796', '3128276791', 'logistica@fiestadellibroylacultura.com', 'SAN JOSÃ‰', 'JOSE LUIS CALDERON', '98667676', 'MedellÃ­n', '4-5566548', '3128276791', 'logistica@fiestadellibroylacultura.com', '', '', '', '', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `permission_level`) VALUES
(6, 'yodi', '8515a9643960bf400f7c2870f344252e7e7230a4', 1),
(8, 'David', 'e884a404313977d1fb4cfd0bfa8a771f2f030eee', 1),
(9, 'comercializacion', 'e618a62d890c07c3c5e70e3e2ab22d83cc6469bd', 1),
(10, 'johana', 'd03740af74d5aaa681e5a1b75ba9f4c6b0ae4f7f', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
