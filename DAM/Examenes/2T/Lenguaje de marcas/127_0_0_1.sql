-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2023 a las 19:17:27
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `contenido2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`Identificador`, `titulo`, `fecha`, `contenido`, `contenido2`) VALUES
(1, 'Titulo1', 'feecha1', 'contenido1', 'conetenido1'),
(2, 'titulo2', 'fecha2', 'conetjido2', 'contenido2'),
(3, 'titulo3', 'fecha3', 'conetjid3', 'contenido3'),
(4, 'titulo4', 'fecha4', 'conetjid4', 'contenid4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Base de datos: `carritotres`
--
CREATE DATABASE IF NOT EXISTS `carritotres` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `carritotres`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `created`, `modified`, `status`) VALUES
(1, 'Yo', 'Prueba', 'prueba@pruebaalgo.com', '7678887654', 'Calle prueba', '2023-01-02 15:01:31', '2023-01-02 15:01:31', 1),
(2, 'Yo2', 'Prueba2', 'yo@vdd.com', '78667567567', 'Calle prueba2', '2023-01-02 15:26:15', '2023-01-02 15:26:15', 1),
(3, 'Compra ', 'Mañanera', 'estarde@xn--tengosueo-s6a.com', '45643543523', 'Calle de la almohada', '2023-01-03 07:41:32', '2023-01-03 07:41:32', 1),
(4, 'Compra ', 'sdfsdfs', 'cuentabombero@gmail.com', '34534567435', 'dqwrfwef wefw eef', '2023-01-03 15:55:31', '2023-01-03 15:55:31', 1),
(5, 'Compra ', 'sdfsdfs', 'cuentabombero@gmail.com', '34534567435', 'dqwrfwef wefw eef', '2023-01-03 15:56:57', '2023-01-03 15:56:57', 1),
(6, 'Yo2', 'qweqweqwe', 'cuentabombero@gmail.com', '7665765676', 'Calle Pedro Cabanes, 81', '2023-01-03 15:58:21', '2023-01-03 15:58:21', 1),
(7, 'Yo2', 'qweqweqwe', 'cuentabombero@gmail.com', '7665765676', 'Calle Pedro Cabanes, 81', '2023-01-03 16:08:32', '2023-01-03 16:08:32', 1),
(8, 'prue', 'ba', 'cuentabombero@gmail.com', '35345345', 'Calle Pedro Cabanes, 43434', '2023-01-09 14:56:42', '2023-01-09 14:56:42', 1),
(9, 'Yo2', 'Fran Moreno', 'cuentabombero@gmail.com', '7665765676', 'Calle Pedro Cabanes, 81', '2023-01-10 19:26:05', '2023-01-10 19:26:05', 1),
(10, 'Compra ', 'qweqw', 'cuentabombero@gmail.com', '34534567435', 'Calle salvaro dali 34', '2023-01-18 16:17:10', '2023-01-18 16:17:10', 1),
(11, 'Compra ', 'werwer', 'cuentabombero@gmail.com', '3424233423', 'Calle sdklfsdf', '2023-01-19 16:05:20', '2023-01-19 16:05:20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `grand_total` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `status` enum('Pending','Completed','Cancelled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `grand_total`, `created`, `status`) VALUES
(1, 1, 90.00, '2023-01-02 15:01:31', 'Pending'),
(2, 2, 29.00, '2023-01-02 15:26:15', 'Pending'),
(3, 3, 66.00, '2023-01-03 07:41:32', 'Pending'),
(4, 4, 1.00, '2023-01-03 15:55:31', 'Pending'),
(5, 5, 3.00, '2023-01-03 15:56:57', 'Pending'),
(6, 6, 4.00, '2023-01-03 15:58:21', 'Pending'),
(7, 7, 27.00, '2023-01-03 16:08:32', 'Pending'),
(8, 8, 25.00, '2023-01-09 14:56:42', 'Pending'),
(9, 9, 28.00, '2023-01-10 19:26:05', 'Pending'),
(10, 10, 34.00, '2023-01-18 16:17:10', 'Pending'),
(11, 11, 63.00, '2023-01-19 16:05:20', 'Pending');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 1, 6, 1),
(2, 1, 5, 4),
(3, 1, 4, 2),
(4, 1, 7, 5),
(5, 2, 2, 1),
(6, 2, 1, 2),
(7, 3, 8, 1),
(8, 3, 4, 1),
(9, 3, 3, 2),
(10, 3, 2, 1),
(11, 3, 1, 4),
(12, 4, 4, 1),
(13, 5, 7, 1),
(14, 6, 8, 1),
(15, 7, 2, 1),
(16, 7, 1, 1),
(17, 7, 6, 1),
(18, 8, 6, 2),
(19, 8, 2, 1),
(20, 9, 4, 1),
(21, 9, 6, 1),
(22, 9, 2, 1),
(23, 9, 1, 1),
(24, 10, 3, 2),
(25, 10, 2, 1),
(26, 10, 5, 1),
(27, 10, 1, 1),
(28, 10, 4, 1),
(29, 11, 3, 1),
(30, 11, 5, 4),
(31, 11, 4, 3),
(32, 11, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `image`, `name`, `description`, `price`, `created`, `modified`, `status`) VALUES
(1, 'youtube.png', 'Camiseta', 'Suave', 12.00, '2023-01-02 15:19:47', '2023-01-02 15:19:47', 1),
(2, '', 'Llavero', 'De GitPet', 5.00, '2023-01-02 15:23:50', '2023-01-02 15:23:50', 1),
(3, '', 'Llavero', 'No lo pierdas', 4.00, '2023-01-02 16:45:55', '2023-01-02 16:45:55', 1),
(4, '', 'Pin', 'Llevalo a todas partes', 1.00, '2023-01-02 20:07:17', '2023-01-02 20:07:17', 1),
(5, '', 'Rascador', 'Para tu gatete', 8.00, '2023-01-02 20:07:39', '2023-01-02 20:07:39', 1),
(6, '', 'Correa', 'Flexible', 10.00, '2023-01-02 20:07:56', '2023-01-02 20:07:56', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Base de datos: `cover`
--
CREATE DATABASE IF NOT EXISTS `cover` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cover`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cover`
--

CREATE TABLE `cover` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `boton` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cover`
--

INSERT INTO `cover` (`Identificador`, `titulo`, `texto`, `boton`) VALUES
(1, 'Prueba_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sed luctus erat, non pharetra velit. Duis rutrum velit dui, quis bibendum leo rutrum vel. Nulla ac turpis scelerisque, tincidunt ligula at, consequat mi. Quisque cursus risus vitae enim pharetra, sed luctus magna scelerisque. Morbi at condimentum urna. Praesent varius lacus eget congue ullamcorper. Etiam tellus lorem, tempus ac maximus vel, ornare at sem. Praesent lobortis at lectus et auctor. Integer tempor consequat fermentum. Integer scelerisque lacinia justo eget sagittis. Etiam vitae sagittis augue, a congue ligula. Phasellus fringilla, dui eget tincidunt sagittis, ligula enim facilisis libero, imperdiet luctus elit ante sed neque.', 'Prueba_1'),
(2, 'Prueba_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sed luctus erat, non pharetra velit. Duis rutrum velit dui, quis bibendum leo rutrum vel. Nulla ac turpis scelerisque, tincidunt ligula at, consequat mi. Quisque cursus risus vitae enim pharetra, sed luctus magna scelerisque. Morbi at condimentum urna. Praesent varius lacus eget congue ullamcorper. Etiam tellus lorem, tempus ac maximus vel, ornare at sem. Praesent lobortis at lectus et auctor. Integer tempor consequat fermentum. Integer scelerisque lacinia justo eget sagittis. Etiam vitae sagittis augue, a congue ligula. Phasellus fringilla, dui eget tincidunt sagittis, ligula enim facilisis libero, imperdiet luctus elit ante sed neque.', 'Boton_2'),
(3, 'Prueba_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sed luctus erat, non pharetra velit. Duis rutrum velit dui, quis bibendum leo rutrum vel. Nulla ac turpis scelerisque, tincidunt ligula at, consequat mi. Quisque cursus risus vitae enim pharetra, sed luctus magna scelerisque. Morbi at condimentum urna. Praesent varius lacus eget congue ullamcorper. Etiam tellus lorem, tempus ac maximus vel, ornare at sem. Praesent lobortis at lectus et auctor. Integer tempor consequat fermentum. Integer scelerisque lacinia justo eget sagittis. Etiam vitae sagittis augue, a congue ligula. Phasellus fringilla, dui eget tincidunt sagittis, ligula enim facilisis libero, imperdiet luctus elit ante sed neque.', 'Boton_3'),
(4, 'Prueba_4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sed luctus erat, non pharetra velit. Duis rutrum velit dui, quis bibendum leo rutrum vel. Nulla ac turpis scelerisque, tincidunt ligula at, consequat mi. Quisque cursus risus vitae enim pharetra, sed luctus magna scelerisque. Morbi at condimentum urna. Praesent varius lacus eget congue ullamcorper. Etiam tellus lorem, tempus ac maximus vel, ornare at sem. Praesent lobortis at lectus et auctor. Integer tempor consequat fermentum. Integer scelerisque lacinia justo eget sagittis. Etiam vitae sagittis augue, a congue ligula. Phasellus fringilla, dui eget tincidunt sagittis, ligula enim facilisis libero, imperdiet luctus elit ante sed neque.', 'Boton_4'),
(5, 'Prueba_5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sed luctus erat, non pharetra velit. Duis rutrum velit dui, quis bibendum leo rutrum vel. Nulla ac turpis scelerisque, tincidunt ligula at, consequat mi. Quisque cursus risus vitae enim pharetra, sed luctus magna scelerisque. Morbi at condimentum urna. Praesent varius lacus eget congue ullamcorper. Etiam tellus lorem, tempus ac maximus vel, ornare at sem. Praesent lobortis at lectus et auctor. Integer tempor consequat fermentum. Integer scelerisque lacinia justo eget sagittis. Etiam vitae sagittis augue, a congue ligula. Phasellus fringilla, dui eget tincidunt sagittis, ligula enim facilisis libero, imperdiet luctus elit ante sed neque.', 'Boton_5');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cover`
--
ALTER TABLE `cover`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cover`
--
ALTER TABLE `cover`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Base de datos: `cursojava`
--
CREATE DATABASE IF NOT EXISTS `cursojava` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `cursojava`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`Identificador`, `nombre`, `telefono`, `email`) VALUES
(1, 'Juan', '1234', 'juan@correo.com'),
(2, 'Pedro', '2323', 'pedro@correo.com'),
(3, 'luis', '3434', 'luis@correo.com'),
(4, 'luis', '3434', 'luis@correo.com'),
(5, 'luis', '3434', 'luis@correo.com'),
(6, 'luis', '3434', 'luis@correo.com'),
(7, 'luis', '3434', 'luis@correo.com'),
(8, 'juan', '98765', 'jaunes@correo.com'),
(9, 'jaime', '45765', 'jaime@correo.com'),
(10, 'pedro', '34234', 'jaime@correo.com'),
(11, 'ei', 'oi', 'ui'),
(12, 'yuyu', '56', 'rere');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apellidos`
--

CREATE TABLE `apellidos` (
  `id` int(11) NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ap1` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ap2` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `apellidos`
--

INSERT INTO `apellidos` (`id`, `apellido`, `ap1`, `ap2`, `total`) VALUES
(1, '', '', '', ''),
(2, '', '', '', ''),
(3, '', '', '', ''),
(4, '', 'Apellido 1?', 'Apellido 2?', 'Ambos apellidos'),
(5, 'apellido', 'ap1', 'ap2', 'total'),
(6, 'GARCIA', '1455085', '1474331', '77030'),
(7, 'RODRIGUEZ', '927670', '937892', '41849'),
(8, 'GONZALEZ', '924321', '933269', '40203'),
(9, 'FERNANDEZ', '905914', '916827', '49866'),
(10, 'LOPEZ', '868164', '876446', '33508'),
(11, 'MARTINEZ', '830245', '837004', '37748'),
(12, 'SANCHEZ', '815181', '825024', '33504'),
(13, 'PEREZ', '776532', '789741', '25567'),
(14, 'GOMEZ', '491345', '495202', '13399'),
(15, 'MARTIN', '482916', '481168', '20294'),
(16, 'JIMENEZ', '395500', '395788', '21928'),
(17, 'HERNANDEZ', '368058', '371719', '15070'),
(18, 'RUIZ', '366188', '370280', '8364'),
(19, 'DIAZ', '341845', '342893', '8192'),
(20, 'MORENO', '321129', '322833', '10005'),
(21, 'MU?OZ', '281991', '282689', '6552'),
(22, 'ALVAREZ', '279515', '278973', '9357'),
(23, 'ROMERO', '222681', '222969', '4446'),
(24, 'GUTIERREZ', '195405', '197490', '3789'),
(25, 'ALONSO', '193403', '191798', '4507'),
(26, 'NAVARRO', '177189', '174939', '3386'),
(27, 'TORRES', '172342', '171358', '3865'),
(28, 'DOMINGUEZ', '157105', '158449', '3234'),
(29, 'RAMOS', '146038', '145667', '2224'),
(30, 'VAZQUEZ', '145921', '145286', '3387'),
(31, 'RAMIREZ', '142804', '143877', '2671'),
(32, 'GIL', '139154', '138798', '2027'),
(33, 'SERRANO', '130646', '130816', '1870'),
(34, 'MORALES', '122520', '123179', '1834'),
(35, 'MOLINA', '122479', '122647', '2041'),
(36, 'BLANCO', '121977', '122089', '1787'),
(37, 'SUAREZ', '120627', '122391', '3195'),
(38, 'CASTRO', '117773', '118067', '1770'),
(39, 'ORTEGA', '117622', '116975', '1499'),
(40, 'DELGADO', '117413', '117667', '1601'),
(41, 'ORTIZ', '109041', '110366', '1385'),
(42, 'MARIN', '105141', '102625', '1646'),
(43, 'RUBIO', '103400', '103818', '1360'),
(44, 'NU?EZ', '91953', '91860', '1458'),
(45, 'SANZ', '91000', '89635', '2163'),
(46, 'MEDINA', '90483', '90402', '1551'),
(47, 'IGLESIAS', '87615', '87381', '1499'),
(48, 'CASTILLO', '87432', '87833', '1361'),
(49, 'CORTES', '86901', '86928', '5913'),
(50, 'GARRIDO', '84709', '85749', '1278'),
(51, 'SANTOS', '84249', '84786', '1065'),
(52, 'GUERRERO', '79985', '80678', '973'),
(53, 'LOZANO', '79647', '79769', '1222'),
(54, 'CANO', '77040', '76935', '1349'),
(55, 'MENDEZ', '73876', '75006', '1440'),
(56, 'CRUZ', '73846', '75290', '950'),
(57, 'PRIETO', '72874', '71906', '971'),
(58, 'FLORES', '72794', '73571', '1809'),
(59, 'HERRERA', '71823', '72030', '1186'),
(60, 'PE?A', '70224', '70973', '1072'),
(61, 'LEON', '70086', '70230', '980'),
(62, 'MARQUEZ', '69925', '70034', '920'),
(63, 'CABRERA', '69285', '69047', '1389'),
(64, 'GALLEGO', '68943', '69011', '758'),
(65, 'CALVO', '68649', '69075', '991'),
(66, 'VIDAL', '67903', '66745', '948'),
(67, 'CAMPOS', '66657', '66860', '827'),
(68, 'REYES', '65085', '65667', '1372'),
(69, 'VEGA', '65029', '65422', '988'),
(70, 'FUENTES', '64373', '65102', '602'),
(71, 'CARRASCO', '63047', '62744', '718'),
(72, 'DIEZ', '61355', '62221', '1185'),
(73, 'AGUILAR', '60845', '60593', '670'),
(74, 'CABALLERO', '60778', '62485', '803'),
(75, 'NIETO', '60016', '59875', '688'),
(76, 'SANTANA', '58265', '59672', '3486'),
(77, 'PASCUAL', '56840', '55607', '636'),
(78, 'HERRERO', '56635', '54940', '783'),
(79, 'VARGAS', '56533', '56143', '1805'),
(80, 'GIMENEZ', '56401', '59163', '2942'),
(81, 'MONTERO', '56322', '55859', '669'),
(82, 'HIDALGO', '56243', '57228', '624'),
(83, 'LORENZO', '55783', '56037', '947'),
(84, 'SANTIAGO', '54624', '53959', '3587'),
(85, 'IBA?EZ', '54388', '53847', '566'),
(86, 'DURAN', '54278', '54311', '582'),
(87, 'BENITEZ', '54243', '54751', '759'),
(88, 'FERRER', '53598', '53392', '705'),
(89, 'ARIAS', '53508', '53472', '803'),
(90, 'MORA', '53417', '52764', '640'),
(91, 'CARMONA', '52127', '53022', '905'),
(92, 'VICENTE', '51687', '51400', '1031'),
(93, 'ROJAS', '49154', '49214', '713'),
(94, 'SOTO', '48964', '48689', '432'),
(95, 'CRESPO', '48926', '48641', '709'),
(96, 'ROMAN', '48440', '46839', '552'),
(97, 'PASTOR', '47164', '47129', '604'),
(98, 'VELASCO', '46602', '46113', '544'),
(99, 'PARRA', '46256', '46558', '889'),
(100, 'SAEZ', '46200', '46829', '704'),
(101, 'MOYA', '45531', '45812', '609'),
(102, 'BRAVO', '45049', '45317', '533'),
(103, 'SOLER', '44781', '43856', '479'),
(104, 'GALLARDO', '44694', '44398', '585'),
(105, 'RIVERA', '44465', '44235', '457'),
(106, 'ESTEBAN', '44209', '43373', '503'),
(107, 'PARDO', '43348', '42347', '961'),
(108, 'SILVA', '43296', '43840', '1164'),
(109, 'FRANCO', '43242', '42305', '542'),
(110, 'RIVAS', '42851', '42524', '477'),
(111, 'LARA', '42290', '41749', '529'),
(112, 'MERINO', '42170', '42642', '468'),
(113, 'ESPINOSA', '41530', '41131', '369'),
(114, 'CAMACHO', '40928', '40783', '516'),
(115, 'MENDOZA', '40916', '41014', '897'),
(116, 'VERA', '40741', '40468', '531'),
(117, 'IZQUIERDO', '40613', '40768', '528'),
(118, 'RIOS', '40430', '40714', '314'),
(119, 'ARROYO', '39634', '39897', '426'),
(120, 'CASADO', '39456', '39279', '579'),
(121, 'SIERRA', '39241', '39606', '461'),
(122, 'REDONDO', '39208', '40304', '493'),
(123, 'LUQUE', '39116', '39364', '659'),
(124, 'MONTES', '38990', '39571', '448'),
(125, 'REY', '38945', '38879', '413'),
(126, 'GALAN', '38934', '38230', '409'),
(127, 'CARRILLO', '38623', '38719', '521'),
(128, 'OTERO', '38548', '38148', '678'),
(129, 'SEGURA', '38448', '38150', '464'),
(130, 'HEREDIA', '36949', '37082', '3358'),
(131, 'MARCOS', '36929', '36041', '419'),
(132, 'BERNAL', '36774', '37448', '455'),
(133, 'SORIANO', '36576', '35982', '354'),
(134, 'ROBLES', '36168', '36801', '480'),
(135, 'MARTI', '35897', '34321', '365'),
(136, 'PALACIOS', '35557', '35412', '379'),
(137, 'VALERO', '35470', '35031', '441'),
(138, 'CONTRERAS', '35432', '35249', '616'),
(139, 'VILA', '34841', '33664', '441'),
(140, 'MACIAS', '34772', '34888', '435'),
(141, 'GUERRA', '34757', '35467', '359'),
(142, 'VARELA', '34666', '34379', '755'),
(143, 'PEREIRA', '34509', '31713', '345'),
(144, 'EXPOSITO', '34494', '37751', '395'),
(145, 'MIRANDA', '33782', '33002', '310'),
(146, 'ROLDAN', '33746', '33730', '456'),
(147, 'BENITO', '33704', '33952', '507'),
(148, 'MATEO', '33533', '33426', '377'),
(149, 'BUENO', '33467', '34608', '395'),
(150, 'ANDRES', '33176', '34142', '492'),
(151, 'GUILLEN', '32965', '33380', '390'),
(152, 'VILLAR', '32544', '33073', '443'),
(153, 'AGUILERA', '32347', '32356', '619'),
(154, 'ESCUDERO', '31936', '31438', '582'),
(155, 'SALAZAR', '31879', '31862', '978'),
(156, 'MATEOS', '31797', '31579', '543'),
(157, 'ACOSTA', '31643', '31746', '533'),
(158, 'PADILLA', '31443', '31732', '469'),
(159, 'CALDERON', '31348', '31035', '324'),
(160, 'RIVERO', '31303', '31235', '412'),
(161, 'CASAS', '30937', '29288', '262'),
(162, 'APARICIO', '30744', '29938', '286'),
(163, 'GUZMAN', '30676', '31063', '435'),
(164, 'BELTRAN', '30396', '30044', '365'),
(165, 'ESTEVEZ', '30231', '30091', '499'),
(166, 'SALAS', '30198', '29797', '190'),
(167, 'GALVEZ', '30192', '30025', '394'),
(168, 'BERMUDEZ', '30008', '30380', '679'),
(169, 'MENENDEZ', '29732', '30005', '1134'),
(170, 'RICO', '29727', '30021', '419'),
(171, 'JURADO', '29575', '29093', '287'),
(172, 'CONDE', '29456', '28654', '375'),
(173, 'QUINTANA', '29411', '29766', '390'),
(174, 'ARANDA', '29155', '28871', '365'),
(175, 'PLAZA', '28961', '28847', '404'),
(176, 'ABAD', '28956', '29032', '290'),
(177, 'GRACIA', '28849', '29293', '374'),
(178, 'AVILA', '28742', '28311', '281'),
(179, 'HURTADO', '28480', '28535', '327'),
(180, 'TRUJILLO', '28299', '28759', '458'),
(181, 'BLAZQUEZ', '28210', '28753', '416'),
(182, 'ESCOBAR', '28145', '28117', '234'),
(183, 'PACHECO', '27930', '28535', '346'),
(184, 'MANZANO', '27926', '27782', '355'),
(185, 'SANTAMARIA', '27920', '27700', '266'),
(186, 'VILLANUEVA', '27882', '28200', '313'),
(187, 'COSTA', '27863', '26918', '315'),
(188, 'ROCA', '27797', '27245', '223'),
(189, 'RUEDA', '27503', '27366', '376'),
(190, 'SERRA', '27153', '26125', '375'),
(191, 'CUESTA', '27090', '26697', '405'),
(192, 'MIGUEL', '27069', '28821', '312'),
(193, 'MESA', '26886', '27152', '356'),
(194, 'TOMAS', '26747', '26979', '297'),
(195, 'LUNA', '26389', '26284', '196'),
(196, 'DE LA FUENTE', '26268', '25451', '316'),
(197, 'SIMON', '26159', '25255', '290'),
(198, 'CASTA?O', '26043', '25882', '447'),
(199, 'ALARCON', '26004', '26493', '405'),
(200, 'DEL RIO', '25989', '25906', '253'),
(201, 'ZAMORA', '25954', '25090', '272'),
(202, 'MALDONADO', '25932', '25883', '415'),
(203, 'MILLAN', '25809', '25809', '231'),
(204, 'LAZARO', '25715', '25645', '376'),
(205, 'PONS', '25696', '25250', '957'),
(206, 'CHEN', '25655', '2123', '258'),
(207, 'PAREDES', '25580', '25864', '261'),
(208, 'SANCHO', '25566', '25166', '260'),
(209, 'MONTOYA', '25219', '25581', '1248'),
(210, 'BAUTISTA', '24834', '25481', '271'),
(211, 'BLASCO', '24826', '24793', '368'),
(212, 'SALVADOR', '24651', '23928', '290'),
(213, 'PONCE', '24494', '24717', '262'),
(214, 'BERMEJO', '24440', '24330', '318'),
(215, 'BALLESTEROS', '24407', '24099', '212'),
(216, 'DE LA CRUZ', '24391', '24127', '220'),
(217, 'VALVERDE', '24360', '24177', '241'),
(218, 'OLIVA', '23936', '23628', '178'),
(219, 'VALLE', '23935', '24004', '215'),
(220, 'MURILLO', '23847', '24325', '387'),
(221, 'CORDERO', '23824', '24116', '213'),
(222, 'ANTON', '23782', '23279', '365'),
(223, 'CUEVAS', '23212', '23157', '349'),
(224, 'LORENTE', '23109', '22750', '240'),
(225, 'AMADOR', '23056', '21903', '1609'),
(226, 'ORDO?EZ', '22975', '23156', '260'),
(227, 'VALENCIA', '22953', '23390', '397'),
(228, 'POZO', '22790', '22806', '283'),
(229, 'RODRIGO', '22787', '22728', '326'),
(230, 'BARRERA', '22723', '23287', '265'),
(231, 'COLLADO', '22667', '22802', '237'),
(232, 'CUENCA', '22586', '22609', '284'),
(233, 'MARTOS', '22548', '22624', '243'),
(234, 'MAS', '22414', '21924', '397'),
(235, 'JUAN', '22349', '23035', '334'),
(236, 'BARROSO', '22168', '22531', '219'),
(237, 'QUESADA', '22153', '22587', '253'),
(238, 'DE LA TORRE', '21981', '21462', '143'),
(239, 'PULIDO', '21736', '22171', '268'),
(240, 'NAVAS', '21610', '21894', '139'),
(241, 'ROS', '21588', '20572', '172'),
(242, 'ARENAS', '21531', '21547', '247'),
(243, 'MARCO', '21505', '20702', '246'),
(244, 'ALBA', '21443', '20833', '179'),
(245, 'CABELLO', '21354', '21428', '226'),
(246, 'SINGH', '21228', '712', '117'),
(247, 'MENA', '21156', '21141', '196'),
(248, 'GALINDO', '21089', '21251', '169'),
(249, 'CORRAL', '20959', '20898', '235'),
(250, 'SORIA', '20947', '20999', '207'),
(251, 'VALLEJO', '20947', '20953', '182'),
(252, 'ROJO', '20919', '21086', '295'),
(253, 'AGUIRRE', '20852', '20456', '179'),
(254, 'CARO', '20781', '20688', '255'),
(255, 'GIMENO', '20780', '20634', '225'),
(256, 'AGUADO', '20711', '20430', '245'),
(257, 'PAZ', '20629', '20894', '364'),
(258, 'ESCRIBANO', '20613', '20568', '211'),
(259, 'PUIG', '20552', '19620', '222'),
(260, 'NARANJO', '20551', '20114', '238'),
(261, 'SAIZ', '20502', '20249', '447'),
(262, 'LUCAS', '20478', '20527', '230'),
(263, 'VILLALBA', '20448', '20165', '188'),
(264, 'LINARES', '20405', '20062', '154'),
(265, 'DOMINGO', '20399', '19932', '294'),
(266, 'MATA', '20305', '19946', '153'),
(267, 'ASENSIO', '20295', '20443', '222'),
(268, 'REINA', '20241', '20358', '185'),
(269, 'POLO', '20219', '20673', '220'),
(270, 'OJEDA', '20037', '19417', '301'),
(271, 'RAMON', '20019', '20366', '291'),
(272, 'MORAN', '19967', '19638', '337'),
(273, 'LEAL', '19889', '20010', '166'),
(274, 'BONILLA', '19884', '19705', '219'),
(275, 'SOSA', '19860', '19213', '276'),
(276, 'BURGOS', '19432', '19885', '127'),
(277, 'MOHAMED', '19363', '18195', '3112'),
(278, 'CARDENAS', '19184', '18988', '227'),
(279, 'CACERES', '19120', '19213', '182'),
(280, 'CARRETERO', '18941', '18647', '215'),
(281, 'CORREA', '18700', '18453', '235'),
(282, 'ZAPATA', '18606', '18354', '215'),
(283, 'CHACON', '18512', '18484', '208'),
(284, 'ARAGON', '18451', '18726', '228'),
(285, 'OLIVER', '18409', '17543', '149'),
(286, 'CORDOBA', '18339', '18406', '201'),
(287, 'CARRION', '18115', '17758', '184'),
(288, 'CASTELLANO', '18112', '17704', '294'),
(289, 'QUINTERO', '18095', '18744', '276'),
(290, 'PINEDA', '18090', '17366', '240'),
(291, 'VILLA', '18078', '17726', '116'),
(292, 'ROSA', '17981', '18195', '143'),
(293, 'SAAVEDRA', '17928', '17425', '314'),
(294, 'CALERO', '17781', '18086', '192'),
(295, 'CLEMENTE', '17759', '18340', '142'),
(296, 'VELAZQUEZ', '17650', '17330', '167'),
(297, 'JUAREZ', '17622', '17520', '159'),
(298, 'ROIG', '17600', '17330', '248'),
(299, 'CARRERA', '17415', '18121', '225'),
(300, 'TOLEDO', '17410', '17633', '146'),
(301, 'AYALA', '17368', '16892', '164'),
(302, 'ALCARAZ', '17251', '17202', '173'),
(303, 'HERNANDO', '17197', '17030', '279'),
(304, 'ANDREU', '17184', '17117', '117'),
(305, 'BARRIOS', '17183', '16964', '124'),
(306, 'VILLEGAS', '17131', '16963', '200'),
(307, 'COBO', '17129', '17237', '306'),
(308, 'SALGADO', '17076', '17095', '270'),
(309, 'FERREIRA', '16899', '15068', '157'),
(310, 'CAMARA', '16822', '12868', '539'),
(311, 'VELA', '16793', '16925', '167'),
(312, 'RIERA', '16746', '16271', '268'),
(313, 'SOLA', '16740', '16446', '121'),
(314, 'MORAL', '16577', '16274', '413'),
(315, 'DOMENECH', '16558', '16221', '123'),
(316, 'SEVILLA', '16501', '16482', '144'),
(317, 'LLORENTE', '16477', '16327', '312'),
(318, 'ALFONSO', '16427', '16446', '158'),
(319, 'CARBONELL', '16412', '16004', '328'),
(320, 'REQUENA', '16336', '15818', '114'),
(321, 'PRADO', '16320', '16318', '183'),
(322, 'SOLIS', '16275', '16034', '192'),
(323, 'SALINAS', '16213', '15856', '117'),
(324, 'PELAEZ', '16180', '16329', '202'),
(325, 'OLIVARES', '16162', '16149', '173'),
(326, 'LUIS', '16062', '17227', '512'),
(327, 'PINTO', '16034', '16222', '141'),
(328, 'CARDONA', '16029', '15721', '272'),
(329, 'CARBALLO', '15982', '15907', '210'),
(330, 'ARRIBAS', '15980', '15822', '195'),
(331, 'DE LA ROSA', '15777', '15443', '268'),
(332, 'PI?EIRO', '15728', '15692', '316'),
(333, 'RINCON', '15607', '15585', '200'),
(334, 'FONT', '15580', '14760', '100'),
(335, 'PEREA', '15560', '15821', '137'),
(336, 'MARRERO', '15416', '15119', '346'),
(337, 'ESTEVE', '15397', '14830', '144'),
(338, 'PALMA', '15371', '14981', '202'),
(339, 'DA SILVA', '15323', '17512', '241'),
(340, 'AREVALO', '15314', '15345', '146'),
(341, 'CASTILLA', '15255', '15036', '131'),
(342, 'GRAU', '15215', '14217', '194'),
(343, 'CANTERO', '15207', '15097', '94'),
(344, 'MARQUES', '15146', '14243', '177'),
(345, 'BOSCH', '15044', '14094', '157'),
(346, 'PORRAS', '14998', '14704', '121'),
(347, 'CID', '14912', '14729', '356'),
(348, 'BALLESTER', '14881', '14580', '130'),
(349, 'BAENA', '14838', '14452', '106'),
(350, 'PINO', '14828', '14988', '81'),
(351, 'PALOMO', '14790', '15077', '143'),
(352, 'CASANOVA', '14766', '14086', '148'),
(353, 'SANCHIS', '14764', '14297', '196'),
(354, 'BELMONTE', '14581', '14967', '146'),
(355, 'VENTURA', '14571', '14202', '105'),
(356, 'WANG', '14532', '1162', '64'),
(357, 'ANGULO', '14522', '14478', '140'),
(358, 'NICOLAS', '14520', '14642', '182'),
(359, 'VELEZ', '14517', '14593', '172'),
(360, 'BARBA', '14454', '14116', '95'),
(361, 'RECIO', '14437', '14248', '138'),
(362, 'LAGO', '14427', '14114', '360'),
(363, 'MIRALLES', '14409', '14401', '112'),
(364, 'OCHOA', '14397', '14508', '134'),
(365, 'MADRID', '14308', '13908', '160'),
(366, 'COBOS', '14239', '13740', '84'),
(367, 'PERALTA', '14184', '13927', '150'),
(368, 'SALA', '14152', '13529', '121'),
(369, 'CABEZAS', '14089', '13980', '148'),
(370, 'MU?IZ', '14085', '13908', '146'),
(371, 'HERRANZ', '14077', '13475', '329'),
(372, 'BECERRA', '14025', '14096', '161'),
(373, 'ARRANZ', '14024', '14145', '254'),
(374, 'CASTELLANOS', '13965', '13786', '155'),
(375, 'LIN', '13934', '1030', '88'),
(376, 'DUARTE', '13916', '13551', '126'),
(377, 'ESTRADA', '13888', '13922', '100'),
(378, 'BARREIRO', '13877', '13773', '203'),
(379, 'CUADRADO', '13865', '13841', '99'),
(380, 'ALFARO', '13856', '13769', '141'),
(381, 'NAVARRETE', '13807', '13783', '145'),
(382, 'BELLO', '13769', '13891', '165'),
(383, 'GRANADOS', '13760', '13586', '112'),
(384, 'COLL', '13752', '13612', '166'),
(385, 'VAQUERO', '13745', '13321', '112'),
(386, 'VERGARA', '13734', '13683', '104'),
(387, 'TAPIA', '13701', '13360', '124'),
(388, 'OCA?A', '13694', '13612', '99'),
(389, 'CERVERA', '13692', '13476', '205'),
(390, 'ALCANTARA', '13663', '13918', '158'),
(391, 'GAMEZ', '13527', '13914', '212'),
(392, 'PUENTE', '13479', '13522', '112'),
(393, 'GODOY', '13461', '13265', '177'),
(394, 'CORRALES', '13435', '13862', '96'),
(395, 'FAJARDO', '13347', '12821', '255'),
(396, 'MEJIAS', '13257', '13924', '120'),
(397, 'CARVAJAL', '13172', '13020', '115'),
(398, 'ROSALES', '13112', '13237', '134'),
(399, 'TORO', '13087', '13450', '97'),
(400, 'FALCON', '13087', '13059', '275'),
(401, 'ZAMBRANO', '13059', '13105', '345'),
(402, 'LATORRE', '13018', '12361', '94'),
(403, 'VASQUEZ', '13001', '12963', '248'),
(404, 'LOSADA', '12985', '12985', '153'),
(405, 'AHMED', '12980', '5895', '425'),
(406, 'FIGUEROA', '12965', '12971', '127'),
(407, 'BARRAGAN', '12963', '13081', '141'),
(408, 'VALENZUELA', '12953', '12937', '142'),
(409, 'CAMPO', '12927', '12850', '178'),
(410, 'PUJOL', '12913', '12734', '107'),
(411, 'SEGOVIA', '12883', '12542', '125'),
(412, 'EGEA', '12872', '12777', '106'),
(413, 'VALLS', '12861', '12170', '85'),
(414, 'PAVON', '12830', '13186', '147'),
(415, 'RUANO', '12819', '12559', '241'),
(416, 'AMAYA', '12781', '12488', '839'),
(417, 'HUERTAS', '12781', '12409', '103'),
(418, 'SASTRE', '12691', '13000', '160'),
(419, 'ROVIRA', '12675', '12270', '65'),
(420, 'CEREZO', '12631', '12499', '78'),
(421, 'CATALAN', '12627', '12181', '149'),
(422, 'PORTILLO', '12601', '12771', '129'),
(423, 'DAVILA', '12586', '12480', '216'),
(424, 'ARIZA', '12584', '12272', '114'),
(425, 'CEBRIAN', '12571', '12513', '146'),
(426, 'FRAILE', '12563', '12446', '167'),
(427, 'BORREGO', '12544', '13278', '78'),
(428, 'MORILLO', '12537', '12418', '241'),
(429, 'ARJONA', '12495', '12613', '161'),
(430, 'DUQUE', '12487', '12444', '223'),
(431, 'MORCILLO', '12453', '12852', '124'),
(432, 'DEL VALLE', '12441', '12027', '68'),
(433, 'BARBERO', '12427', '12505', '188'),
(434, 'ALVARADO', '12354', '12775', '139'),
(435, 'GUIJARRO', '12300', '12189', '179'),
(436, 'VALDES', '12259', '12215', '118'),
(437, 'AZNAR', '12224', '12130', '148'),
(438, 'ZHANG', '12212', '807', '37'),
(439, 'PEINADO', '12205', '11779', '144'),
(440, 'MOSQUERA', '12203', '12105', '250'),
(441, 'ROMERA', '12134', '11635', '202'),
(442, 'CANOVAS', '12133', '11922', '213'),
(443, 'FERREIRO', '12105', '12219', '189'),
(444, 'OSORIO', '12101', '12451', '130'),
(445, 'ALCAIDE', '12059', '11958', '128'),
(446, 'GALVAN', '12037', '11830', '133'),
(447, 'MELERO', '12034', '12003', '144'),
(448, 'GORDILLO', '12007', '12511', '113'),
(449, 'JORGE', '11966', '12171', '109'),
(450, 'TIRADO', '11954', '11403', '64'),
(451, 'LOBATO', '11942', '11994', '102'),
(452, 'ESPEJO', '11938', '12267', '91'),
(453, 'LLAMAS', '11903', '11601', '81'),
(454, 'AGUDO', '11901', '11753', '108'),
(455, 'SOLE', '11868', '11942', '136'),
(456, 'SOLANO', '11813', '11735', '136'),
(457, 'TEJERO', '11813', '11713', '138'),
(458, 'REAL', '11812', '11604', '195'),
(459, 'MEJIA', '11787', '12265', '241'),
(460, 'CHAMORRO', '11775', '11626', '118'),
(461, 'SAINZ', '11768', '11333', '230'),
(462, 'DORADO', '11681', '11309', '122'),
(463, 'DOS SANTOS', '11594', '12248', '392'),
(464, 'CRIADO', '11571', '11786', '90'),
(465, 'FRIAS', '11567', '11959', '99'),
(466, 'GRANDE', '11547', '10761', '123'),
(467, 'ANDRADE', '11542', '10611', '146'),
(468, 'FREIRE', '11524', '11322', '131'),
(469, 'ARAUJO', '11507', '11354', '76'),
(470, 'OLMEDO', '11503', '10921', '110'),
(471, 'GONZALO', '11490', '11323', '163'),
(472, 'ROYO', '11479', '11463', '144'),
(473, 'BARRIO', '11479', '11166', '197'),
(474, 'ROSADO', '11453', '11608', '86'),
(475, 'MOYANO', '11447', '11709', '86'),
(476, 'PIZARRO', '11446', '11550', '122'),
(477, 'BRITO', '11436', '11877', '203'),
(478, 'GARZON', '11377', '11078', '132'),
(479, 'DE MIGUEL', '11372', '8942', '69'),
(480, 'AVILES', '11345', '11191', '86'),
(481, 'PAEZ', '11296', '10520', '107'),
(482, 'SALGUERO', '11289', '11139', '453'),
(483, 'SALCEDO', '11277', '11211', '105'),
(484, 'PANIAGUA', '11245', '10726', '197'),
(485, 'ALCALA', '11211', '11730', '85'),
(486, 'NOGUERA', '11201', '11385', '88'),
(487, 'SERNA', '11157', '10951', '199'),
(488, 'CALLEJA', '11154', '11511', '78'),
(489, 'ALCAZAR', '11138', '11570', '109'),
(490, 'CHAVEZ', '11134', '11678', '126'),
(491, 'BORJA', '11113', '10834', '948'),
(492, 'SAENZ', '11107', '10922', '214'),
(493, 'HUERTA', '11099', '11701', '164'),
(494, 'OROZCO', '11072', '11369', '161'),
(495, 'TENA', '11006', '11025', '216'),
(496, 'PLA', '10995', '10941', '52'),
(497, 'DEL POZO', '10994', '10538', '79'),
(498, 'FERRERO', '10994', '10507', '243'),
(499, 'ALCALDE', '10986', '10896', '88'),
(500, 'ARCE', '10958', '10843', '97'),
(501, 'CHAVES', '10897', '10987', '133'),
(502, 'CASTA?EDA', '10823', '10815', '91'),
(503, 'PI?ERO', '10811', '10804', '105'),
(504, 'PAZOS', '10778', '10758', '104'),
(505, 'LLORENS', '10765', '10223', '69'),
(506, 'REBOLLO', '10743', '10794', '105'),
(507, 'POVEDA', '10642', '10716', '113'),
(508, 'LAFUENTE', '10618', '10417', '102'),
(509, 'HERAS', '10610', '10537', '112'),
(510, 'PENA', '10597', '10697', '138'),
(511, 'VIVES', '10591', '10414', '80'),
(512, 'HERVAS', '10523', '10427', '130'),
(513, 'BONET', '10503', '10342', '107'),
(514, 'ABELLAN', '10502', '10441', '122'),
(515, 'PALOMINO', '10498', '10690', '93'),
(516, 'BARRANCO', '10498', '10667', '61'),
(517, 'QUIROS', '10496', '10553', '82'),
(518, 'VALIENTE', '10456', '9957', '50'),
(519, 'LI', '10447', '791', '78'),
(520, 'OLMO', '10442', '11202', '105'),
(521, 'GARCES', '10432', '10414', '110'),
(522, 'HARO', '10432', '10182', '121'),
(523, 'BARTOLOME', '10419', '10424', '132'),
(524, 'MATEU', '10385', '10047', '97'),
(525, 'CABEZA', '10366', '10919', '72'),
(526, 'ACEVEDO', '10350', '10261', '116'),
(527, 'VALLES', '10335', '9925', '106'),
(528, 'CARRE?O', '10297', '10357', '83'),
(529, 'LAGUNA', '10296', '10240', '87'),
(530, 'CEBALLOS', '10264', '9650', '81'),
(531, 'MELLADO', '10241', '10467', '70'),
(532, 'AFONSO', '10237', '10100', '189'),
(533, 'MIRA', '10212', '9856', '91'),
(534, 'BORRAS', '10180', '9585', '85'),
(535, 'LEIVA', '10175', '10216', '113'),
(536, 'LLOPIS', '10157', '9900', '102'),
(537, 'GINER', '10153', '9717', '98'),
(538, 'MOLERO', '10145', '10456', '65'),
(539, 'BARCELO', '10138', '9574', '154'),
(540, 'SOUTO', '10122', '10531', '169'),
(541, 'YA?EZ', '10118', '10226', '109'),
(542, 'BUSTAMANTE', '10099', '10136', '325'),
(543, 'OSUNA', '10096', '10135', '79'),
(544, 'CALLE', '10072', '10319', '219'),
(545, 'DEL CASTILLO', '10065', '9551', '46'),
(546, 'PALOMARES', '10060', '10169', '122'),
(547, 'VILCHEZ', '10059', '9948', '144'),
(548, 'BILBAO', '9997', '10313', '223'),
(549, 'MAESTRE', '9959', '10155', '155'),
(550, 'DEL PINO', '9927', '9914', '78'),
(551, 'FUERTES', '9917', '9744', '123'),
(552, 'MONTESINOS', '9803', '9629', '46'),
(553, 'URBANO', '9795', '9653', '77'),
(554, 'SAN JOSE', '9757', '9505', '26'),
(555, 'CASTELLO', '9749', '10059', '92'),
(556, 'OLMOS', '9709', '9151', '110'),
(557, 'ZAFRA', '9696', '9847', '85'),
(558, 'RIBAS', '9686', '9573', '350'),
(559, 'MURCIA', '9686', '9201', '64'),
(560, 'KAUR', '9635', '3156', '19'),
(561, 'SANDOVAL', '9626', '9509', '92'),
(562, 'BAEZA', '9625', '9562', '75'),
(563, 'PAREJA', '9617', '9914', '133'),
(564, 'TEJADA', '9616', '9291', '108'),
(565, 'BELLIDO', '9613', '9912', '86'),
(566, 'FELIPE', '9601', '10003', '147'),
(567, 'PUERTAS', '9584', '9807', '86'),
(568, 'VIZCAINO', '9548', '9622', '66'),
(569, 'DE LEON', '9543', '9253', '187'),
(570, 'PRATS', '9539', '9131', '121'),
(571, 'JAEN', '9521', '9434', '72'),
(572, 'PERALES', '9479', '9394', '66'),
(573, 'SARMIENTO', '9443', '8816', '148'),
(574, 'ENRIQUEZ', '9426', '9172', '74'),
(575, 'MINGUEZ', '9420', '9411', '125'),
(576, 'ORELLANA', '9404', '9416', '76'),
(577, 'BAEZ', '9399', '9548', '152'),
(578, 'ZARAGOZA', '9385', '9085', '70'),
(579, 'CARRERAS', '9383', '9061', '97'),
(580, 'VALERA', '9378', '9196', '101'),
(581, 'ROCHA', '9373', '9159', '88'),
(582, 'GASCON', '9362', '9311', '80'),
(583, 'YE', '9344', '692', '28'),
(584, 'XU', '9334', '605', '30'),
(585, 'LEDESMA', '9305', '9225', '90'),
(586, 'MONTORO', '9278', '9706', '46'),
(587, 'CAMPILLO', '9263', '8977', '85'),
(588, 'DE CASTRO', '9261', '9154', '45'),
(589, 'LUENGO', '9255', '9041', '52'),
(590, 'SEBASTIAN', '9253', '9251', '120'),
(591, 'ARCOS', '9248', '8926', '59'),
(592, 'ALEGRE', '9231', '9204', '107'),
(593, 'BUSTOS', '9204', '8982', '102'),
(594, 'GAGO', '9200', '9152', '143'),
(595, 'CA?AS', '9192', '8816', '85'),
(596, 'PERIS', '9192', '8768', '84'),
(597, 'PATI?O', '9146', '8808', '105'),
(598, 'MONGE', '9141', '9285', '97'),
(599, 'LIU', '9127', '655', '28'),
(600, 'BA?OS', '9119', '9280', '91'),
(601, 'TELLO', '9045', '9198', '78'),
(602, 'JARA', '9036', '8965', '82'),
(603, 'MOREIRA', '9034', '8943', '117'),
(604, 'CASAL', '9032', '8748', '69'),
(605, 'ARTEAGA', '9024', '8731', '113'),
(606, 'GIRALDO', '9007', '8737', '159'),
(607, 'JARAMILLO', '9005', '9352', '176'),
(608, 'FUSTER', '8984', '8250', '112'),
(609, 'BATISTA', '8964', '8760', '154'),
(610, 'JEREZ', '8956', '8918', '106'),
(611, 'ALI', '8940', '2576', '76'),
(612, 'SOBRINO', '8924', '8816', '150'),
(613, 'MONTIEL', '8905', '8789', '99'),
(614, 'VILAR', '8897', '8285', '87'),
(615, 'CAZORLA', '8895', '9173', '108'),
(616, 'ARMAS', '8887', '9007', '158'),
(617, 'NADAL', '8885', '8548', '65'),
(618, 'SALMERON', '8880', '9012', '103'),
(619, 'MAYA', '8854', '8780', '353'),
(620, 'SANJUAN', '8829', '8614', '85'),
(621, 'TEJEDOR', '8815', '8690', '125'),
(622, 'MACHADO', '8804', '8634', '140'),
(623, 'SEOANE', '8791', '8278', '102'),
(624, 'ZABALA', '8788', '8972', '69'),
(625, 'LOBO', '8767', '8753', '58'),
(626, 'PERDOMO', '8734', '9008', '214'),
(627, 'BEJARANO', '8731', '8556', '62'),
(628, 'CONESA', '8726', '8485', '91'),
(629, 'PADRON', '8717', '8993', '277'),
(630, 'ESPINOZA', '8694', '8540', '157'),
(631, 'TAMAYO', '8679', '8984', '85'),
(632, 'WU', '8659', '714', '36'),
(633, 'PALLARES', '8643', '8520', '88'),
(634, 'ALEMAN', '8638', '8484', '174'),
(635, 'FERRE', '8613', '8443', '130'),
(636, 'BAREA', '8600', '8830', '58'),
(637, 'VERDU', '8591', '8719', '126'),
(638, 'CANALES', '8562', '8599', '95'),
(639, 'BARRERO', '8533', '8671', '103'),
(640, 'MORON', '8529', '8310', '58'),
(641, 'JORDAN', '8528', '8280', '44'),
(642, 'PRADA', '8516', '8043', '149'),
(643, 'MARI', '8509', '8268', '573'),
(644, 'ALMEIDA', '8488', '8486', '94'),
(645, 'MAYOR', '8485', '8457', '107'),
(646, 'RIPOLL', '8470', '8541', '80'),
(647, 'VEIGA', '8465', '8021', '99'),
(648, 'TORTOSA', '8458', '8383', '72'),
(649, 'MORO', '8437', '8394', '87'),
(650, 'TABOADA', '8435', '7954', '62'),
(651, 'PRADOS', '8434', '8137', '70'),
(652, 'CLIMENT', '8432', '8227', '138'),
(653, 'DIALLO', '8430', '2219', '1058'),
(654, 'DEL CAMPO', '8429', '8309', '66'),
(655, 'CATALA', '8418', '8257', '112'),
(656, 'SAN MARTIN', '8408', '7974', '47'),
(657, 'FERRANDO', '8406', '8096', '59'),
(658, 'INFANTE', '8372', '8122', '88'),
(659, 'AYUSO', '8356', '8304', '77'),
(660, 'MANRIQUE', '8351', '7763', '58'),
(661, 'PE?ALVER', '8348', '8273', '119'),
(662, 'FRAGA', '8336', '8278', '118'),
(663, 'ABRIL', '8326', '7960', '123'),
(664, 'AMOROS', '8281', '8086', '88'),
(665, 'DIEGUEZ', '8208', '8302', '139'),
(666, 'BARROS', '8205', '8235', '83'),
(667, 'MOTA', '8167', '8127', '75'),
(668, 'GALERA', '8154', '8072', '137'),
(669, 'ALVES', '8145', '5763', '76'),
(670, 'MEDRANO', '8099', '8102', '74'),
(671, 'MONTA?O', '8098', '8064', '180'),
(672, 'ALVARO', '8092', '7871', '94'),
(673, 'MANSO', '8090', '8064', '55'),
(674, 'CIFUENTES', '8090', '7943', '67'),
(675, 'LUCENA', '8076', '7982', '64'),
(676, 'NOGALES', '8073', '7833', '100'),
(677, 'YUSTE', '8065', '8228', '157'),
(678, 'CERDA', '8062', '8019', '103'),
(679, 'MAROTO', '8040', '8096', '66'),
(680, 'PINILLA', '8035', '7965', '64'),
(681, 'ALBERT', '7973', '7411', '100'),
(682, 'ECHEVERRIA', '7962', '8429', '265'),
(683, 'BERENGUER', '7938', '7679', '55'),
(684, 'PEDROSA', '7936', '8259', '74'),
(685, 'ZHOU', '7936', '703', '48'),
(686, 'IBARRA', '7889', '7597', '72'),
(687, 'VILLENA', '7881', '7656', '79'),
(688, 'ATIENZA', '7875', '8331', '87'),
(689, 'BOLA?OS', '7872', '7785', '95'),
(690, 'DUE?AS', '7872', '7693', '77'),
(691, 'MIGUEZ', '7864', '7809', '117'),
(692, 'SAMPEDRO', '7861', '7823', '104'),
(693, 'VILLAVERDE', '7855', '7451', '63'),
(694, 'DEL OLMO', '7842', '7961', '62'),
(695, 'RIBERA', '7821', '7844', '53'),
(696, 'MANZANARES', '7808', '7891', '46'),
(697, 'UBEDA', '7785', '7689', '49'),
(698, 'MONTILLA', '7784', '7852', '56'),
(699, 'QUEVEDO', '7771', '7536', '58'),
(700, 'RAYA', '7767', '7766', '72'),
(701, 'TOVAR', '7760', '7572', '85'),
(702, 'SEVILLANO', '7750', '7659', '86'),
(703, 'DIEGO', '7734', '8085', '102'),
(704, 'MERCHAN', '7732', '7664', '106'),
(705, 'VI?AS', '7729', '7879', '51'),
(706, 'ALMAGRO', '7729', '7598', '66'),
(707, 'MIRO', '7728', '7314', '80'),
(708, 'ORTU?O', '7713', '7531', '60'),
(709, 'ESPA?A', '7704', '7424', '69'),
(710, 'NOVOA', '7696', '7613', '120'),
(711, 'ECHEVARRIA', '7692', '8121', '187'),
(712, 'TERUEL', '7687', '7834', '51'),
(713, 'VIVAS', '7676', '7703', '61'),
(714, 'TALAVERA', '7670', '7876', '104'),
(715, 'RODRIGUES', '7654', '5326', '91'),
(716, 'DE LOS SANTOS', '7652', '7689', '117'),
(717, 'MELENDEZ', '7646', '7622', '73'),
(718, 'DE LAS HERAS', '7613', '7388', '66'),
(719, 'FRANCISCO', '7612', '7668', '121'),
(720, 'MORILLAS', '7601', '7378', '108'),
(721, 'PUERTO', '7592', '7693', '49'),
(722, 'LUJAN', '7589', '7450', '115'),
(723, 'ROBLEDO', '7588', '7691', '63'),
(724, 'INIESTA', '7575', '7271', '64'),
(725, 'CHECA', '7565', '7455', '89'),
(726, 'ACEDO', '7537', '7791', '164'),
(727, 'TRIGO', '7510', '7427', '69'),
(728, 'TELLEZ', '7509', '7660', '50'),
(729, 'GUEVARA', '7506', '7290', '84'),
(730, 'ACU?A', '7488', '7046', '55'),
(731, 'NARVAEZ', '7468', '7422', '101'),
(732, 'CAPARROS', '7455', '7030', '91'),
(733, 'GRANADO', '7454', '7636', '68'),
(734, 'ARES', '7432', '7401', '114'),
(735, 'DE DIEGO', '7410', '6775', '73'),
(736, 'CORONADO', '7398', '7523', '42'),
(737, 'PUERTA', '7389', '7178', '110'),
(738, 'MONZON', '7377', '7106', '75'),
(739, 'MACIA', '7371', '7188', '81'),
(740, 'HERREROS', '7368', '7703', '117'),
(741, 'FRANCES', '7356', '7544', '105'),
(742, 'SEGARRA', '7352', '7067', '59'),
(743, 'BERNABE', '7351', '7191', '51'),
(744, 'MATAS', '7346', '6766', '79'),
(745, 'VELASQUEZ', '7334', '7597', '99'),
(746, 'VALDIVIA', '7333', '6968', '57'),
(747, 'ARANA', '7311', '7062', '58'),
(748, 'PALACIO', '7311', '6997', '48'),
(749, 'HERMIDA', '7299', '7347', '88'),
(750, 'BALAGUER', '7299', '6935', '45'),
(751, 'ESPADA', '7293', '7491', '41'),
(752, 'TORIBIO', '7285', '7217', '81'),
(753, 'ZAMORANO', '7278', '7080', '51'),
(754, 'MARI?O', '7256', '7264', '63'),
(755, 'PINA', '7209', '6964', '26'),
(756, 'BUENDIA', '7198', '7210', '66'),
(757, 'TOME', '7198', '7150', '66'),
(758, 'PERAL', '7185', '7294', '59'),
(759, 'CERVANTES', '7166', '6936', '47'),
(760, 'CUBERO', '7151', '7305', '73'),
(761, 'MAYO', '7137', '7196', '120'),
(762, 'BARBERA', '7131', '7318', '48'),
(763, 'ENCINAS', '7129', '7000', '64'),
(764, 'SEPULVEDA', '7126', '6942', '69'),
(765, 'MOLINERO', '7120', '6709', '68'),
(766, 'BERNABEU', '7107', '6742', '86'),
(767, 'MELIAN', '7083', '6952', '89'),
(768, 'LAMAS', '7079', '6991', '87'),
(769, 'PRAT', '7077', '6773', '55'),
(770, 'CUELLAR', '7062', '7266', '64'),
(771, 'CA?ETE', '7050', '6781', '49'),
(772, 'CARRERO', '7042', '7062', '74'),
(773, 'HINOJOSA', '7028', '6997', '43'),
(774, 'COCA', '7017', '6910', '78'),
(775, 'CESPEDES', '7016', '6870', '88'),
(776, 'GIRON', '6998', '7016', '83'),
(777, 'PEDRAZA', '6976', '6820', '45'),
(778, 'TORRE', '6972', '7197', '65'),
(779, 'RODENAS', '6965', '7206', '66'),
(780, 'FARI?A', '6961', '6778', '106'),
(781, 'PARRILLA', '6950', '6991', '87'),
(782, 'CARRO', '6947', '6993', '127'),
(783, 'SAURA', '6930', '6894', '71'),
(784, 'SANMARTIN', '6929', '6837', '87'),
(785, 'BADIA', '6917', '6769', '24'),
(786, 'LLORET', '6917', '6231', '147'),
(787, 'PEIRO', '6904', '6672', '102'),
(788, 'COSTAS', '6901', '6939', '183'),
(789, 'URE?A', '6895', '6555', '82'),
(790, 'MARISCAL', '6891', '6952', '43'),
(791, 'CENTENO', '6883', '7133', '63'),
(792, 'MARTORELL', '6865', '6945', '131'),
(793, 'MAYORAL', '6855', '6762', '52'),
(794, 'ZURITA', '6828', '6608', '25'),
(795, 'PIQUERAS', '6815', '6889', '52'),
(796, 'BOIX', '6797', '6711', '41'),
(797, 'ANDUJAR', '6774', '7036', '43'),
(798, 'QUILES', '6773', '6603', '41'),
(799, 'CAMPS', '6768', '6661', '40'),
(800, 'PARADA', '6748', '7031', '44'),
(801, 'ARELLANO', '6732', '6605', '69'),
(802, 'GAMERO', '6704', '6557', '69'),
(803, 'REVUELTA', '6691', '6293', '45'),
(804, 'BENAVIDES', '6690', '6613', '62'),
(805, 'FIDALGO', '6659', '6608', '154'),
(806, 'CA?ADAS', '6636', '6664', '71'),
(807, 'QUIROGA', '6632', '6235', '64'),
(808, 'FLOREZ', '6621', '7065', '86'),
(809, 'MIR', '6601', '6327', '40'),
(810, 'PERERA', '6591', '6340', '71'),
(811, 'FONSECA', '6570', '6469', '30'),
(812, 'VIERA', '6567', '6905', '66'),
(813, 'GABARRI', '6563', '6235', '1106'),
(814, 'PLANAS', '6560', '6243', '47'),
(815, 'PICAZO', '6557', '6838', '146'),
(816, 'MERA', '6556', '6104', '46'),
(817, 'GO?I', '6553', '6618', '77'),
(818, 'LEMA', '6545', '6648', '245'),
(819, 'SALES', '6545', '6502', '91'),
(820, 'RIQUELME', '6503', '6331', '149'),
(821, 'ROMO', '6485', '6638', '39'),
(822, 'PICO', '6472', '6673', '87'),
(823, 'GUISADO', '6466', '7105', '40'),
(824, 'MONTENEGRO', '6466', '6336', '53'),
(825, 'AMOR', '6459', '6159', '73'),
(826, 'VILCHES', '6452', '6350', '34'),
(827, 'VEGAS', '6451', '6361', '98'),
(828, 'GORDO', '6448', '6897', '73'),
(829, 'AMORES', '6440', '6219', '54'),
(830, 'ALAMO', '6434', '6286', '75'),
(831, 'TORREGROSA', '6432', '6203', '29'),
(832, 'RIAL', '6424', '6564', '88'),
(833, 'FRUTOS', '6419', '6622', '58'),
(834, 'ZHU', '6407', '505', '21'),
(835, 'NIEVES', '6388', '6028', '43'),
(836, 'PALAU', '6388', '5929', '48'),
(837, 'ANTUNEZ', '6387', '6364', '52'),
(838, 'SOLANA', '6380', '6443', '46'),
(839, 'MESTRE', '6372', '6176', '55'),
(840, 'LORA', '6372', '6080', '40'),
(841, 'SEGUI', '6371', '5770', '88'),
(842, 'CARRASCOSA', '6363', '6575', '46'),
(843, 'LABRADOR', '6343', '6507', '57'),
(844, 'SABATER', '6339', '6075', '48'),
(845, 'ADAN', '6330', '6308', '85'),
(846, 'CALATAYUD', '6321', '6291', '50'),
(847, 'BOTELLA', '6320', '6224', '60'),
(848, 'CODINA', '6317', '6114', '42'),
(849, 'DE DIOS', '6317', '6100', '127'),
(850, 'QUERO', '6317', '6067', '57'),
(851, 'HOYOS', '6304', '6257', '98'),
(852, 'MATOS', '6298', '6454', '155'),
(853, 'PALAZON', '6277', '6171', '196'),
(854, 'JAIME', '6274', '6212', '52'),
(855, 'ARNAU', '6271', '6317', '58'),
(856, 'NEVADO', '6259', '6174', '67'),
(857, 'ABREU', '6252', '6201', '86'),
(858, 'NOVO', '6252', '5933', '60'),
(859, 'HERMOSO', '6248', '6140', '49'),
(860, 'PI?A', '6247', '6107', '43'),
(861, 'NDIAYE', '6244', '1295', '233'),
(862, 'PAREJO', '6238', '6170', '37'),
(863, 'TOLEDANO', '6224', '6143', '60'),
(864, 'NEIRA', '6223', '5900', '39'),
(865, 'CHICO', '6216', '5962', '60'),
(866, 'CANTOS', '6197', '5987', '34'),
(867, 'OLIVEIRA', '6189', '5604', '27'),
(868, 'HERRAIZ', '6182', '6246', '205'),
(869, 'ZHENG', '6179', '403', '20'),
(870, 'REVILLA', '6177', '6177', '111'),
(871, 'ANTOLIN', '6141', '6526', '48'),
(872, 'FUENTE', '6125', '6548', '107'),
(873, 'SILVESTRE', '6122', '5974', '34'),
(874, 'RIBES', '6115', '5934', '94'),
(875, 'JIMENO', '6110', '6026', '36'),
(876, 'POSTIGO', '6107', '5708', '86'),
(877, 'DEL MORAL', '6104', '6194', '23'),
(878, 'PELLICER', '6096', '6224', '26'),
(879, 'BELDA', '6094', '5933', '66'),
(880, 'VICO', '6081', '5930', '102'),
(881, 'CAAMA?O', '6075', '6076', '143'),
(882, 'RAMIRO', '6069', '5938', '56'),
(883, 'DIOP', '6067', '1159', '254'),
(884, 'GUIRADO', '6065', '6107', '44'),
(885, 'QUI?ONES', '6064', '6250', '76'),
(886, 'VERDUGO', '6061', '6501', '53'),
(887, 'CARRANZA', '6058', '5836', '63'),
(888, 'MEGIAS', '6052', '5744', '91'),
(889, 'TORRALBA', '6035', '5881', '48'),
(890, 'VACA', '6025', '6776', '97'),
(891, 'CORDON', '6020', '6109', '59'),
(892, 'MANSILLA', '6015', '6236', '90'),
(893, 'SEMPERE', '6014', '5617', '128'),
(894, 'OVIEDO', '6009', '6127', '70'),
(895, 'LLANOS', '6000', '6049', '49'),
(896, 'CORNEJO', '5994', '5962', '20'),
(897, 'FARRE', '5986', '5878', '64'),
(898, 'SOUSA', '5983', '5741', '48'),
(899, 'GALIANO', '5979', '5933', '50'),
(900, 'ELVIRA', '5960', '6095', '154'),
(901, 'GUARDIOLA', '5959', '6052', '51'),
(902, 'MERCADO', '5950', '5819', '64'),
(903, 'YAGUE', '5941', '5571', '53'),
(904, 'SACRISTAN', '5940', '5799', '38'),
(905, 'CABANILLAS', '5922', '6065', '66'),
(906, 'ALEMANY', '5907', '5820', '114'),
(907, 'CANTO', '5901', '5934', '66'),
(908, 'URIARTE', '5880', '5595', '86'),
(909, 'CHAPARRO', '5874', '5966', '56'),
(910, 'BERROCAL', '5873', '6016', '56'),
(911, 'COMAS', '5868', '5851', '32'),
(912, 'ROSELL', '5861', '5609', '44'),
(913, 'GOMES', '5854', '4235', '85'),
(914, 'BARRIENTOS', '5849', '5430', '54'),
(915, 'AROCA', '5844', '5717', '60'),
(916, 'COLOMER', '5823', '5389', '18'),
(917, 'CA?IZARES', '5814', '6044', '66'),
(918, 'FEIJOO', '5777', '5616', '119'),
(919, 'GILABERT', '5776', '5512', '24'),
(920, 'CAPDEVILA', '5761', '5564', '44'),
(921, 'MAZA', '5759', '5817', '65'),
(922, 'ARNAIZ', '5752', '5812', '95'),
(923, 'ESPIN', '5752', '5517', '79'),
(924, 'OLIVERA', '5744', '5604', '66'),
(925, 'LIMA', '5737', '6159', '34'),
(926, 'PORTELA', '5711', '5548', '87'),
(927, 'TRILLO', '5705', '5863', '150'),
(928, 'ROSELLO', '5701', '5513', '39'),
(929, 'SANS', '5681', '5381', '78'),
(930, 'RUS', '5674', '3724', '41'),
(931, 'GISBERT', '5670', '5509', '53'),
(932, 'PERELLO', '5669', '5593', '94'),
(933, 'CERDAN', '5661', '5574', '51'),
(934, 'FIGUERAS', '5659', '5501', '36'),
(935, 'TORREJON', '5657', '5989', '84'),
(936, 'CARPIO', '5657', '5543', '45'),
(937, 'AMADO', '5636', '5652', '60'),
(938, 'MA?AS', '5631', '5628', '83'),
(939, 'ALIAGA', '5629', '5610', '56'),
(940, 'MONTEAGUDO', '5617', '5452', '64'),
(941, 'ESPINO', '5611', '5252', '59'),
(942, 'SALDA?A', '5605', '5404', '48'),
(943, 'CRISTOBAL', '5602', '5422', '50'),
(944, 'TUDELA', '5593', '5551', '57'),
(945, 'MURIEL', '5586', '5353', '38'),
(946, 'BETANCOR', '5577', '5803', '111'),
(947, 'SAN JUAN', '5573', '5820', '37'),
(948, 'RIO', '5555', '5356', '87'),
(949, 'CAMPOY', '5542', '5624', '32'),
(950, 'AMAT', '5536', '5307', '33'),
(951, 'GARRIGA', '5532', '5043', '33'),
(952, 'TEJERA', '5530', '5795', '43'),
(953, 'YANG', '5522', '453', '17'),
(954, 'MARMOL', '5512', '5567', '20'),
(955, 'SECO', '5502', '5850', '31'),
(956, 'VALDERRAMA', '5491', '5336', '19'),
(957, 'MESEGUER', '5487', '5534', '49'),
(958, 'BASTIDA', '5478', '5303', '31'),
(959, 'HOLGADO', '5470', '5328', '42'),
(960, 'MORILLA', '5468', '5420', '21'),
(961, 'MELGAR', '5461', '5467', '46'),
(962, 'PLASENCIA', '5457', '5504', '171'),
(963, 'REIG', '5453', '5106', '14'),
(964, 'BARRETO', '5450', '5231', '68'),
(965, 'GAVILAN', '5427', '5334', '28'),
(966, 'JULIAN', '5425', '5648', '35'),
(967, 'ESCALANTE', '5411', '5311', '39'),
(968, 'BARBOSA', '5403', '5371', '42'),
(969, 'ANAYA', '5377', '5118', '23'),
(970, 'CAMINO', '5373', '5279', '58'),
(971, 'CARDOSO', '5366', '5225', '39'),
(972, 'FERRERA', '5363', '5328', '46'),
(973, 'VILLALOBOS', '5363', '5258', '57'),
(974, 'SAN MIGUEL', '5361', '5001', '29'),
(975, 'CHICA', '5357', '5170', '63'),
(976, 'DAZA', '5355', '5554', '20'),
(977, 'VALCARCEL', '5346', '5314', '35'),
(978, 'SAMPER', '5329', '4887', '27'),
(979, 'MORERA', '5321', '5403', '39'),
(980, 'RUZ', '5300', '5201', '57'),
(981, 'NOGUEIRA', '5300', '5181', '57'),
(982, 'PARIS', '5296', '5141', '71'),
(983, 'BARAHONA', '5296', '5039', '55'),
(984, 'GUIRAO', '5293', '5444', '35'),
(985, 'FERRERAS', '5290', '5118', '142'),
(986, 'GASPAR', '5286', '5280', '47'),
(987, 'DE HARO', '5266', '5235', '43'),
(988, 'ELIAS', '5264', '4816', '17'),
(989, 'BENAVENTE', '5260', '4934', '17'),
(990, 'FLORIDO', '5253', '5265', '71'),
(991, 'LILLO', '5251', '4874', '35'),
(992, 'CASTELLS', '5247', '4884', '27'),
(993, 'ZU?IGA', '5244', '5115', '35'),
(994, 'JULIA', '5240', '5013', '33'),
(995, 'GALLO', '5239', '4672', '39'),
(996, 'URRUTIA', '5232', '4896', '25'),
(997, 'DORTA', '5209', '5369', '133'),
(998, 'MORATO', '5199', '5093', '34'),
(999, 'ARRIETA', '5190', '5132', '46'),
(1000, 'COELLO', '5190', '5117', '69'),
(1001, 'MONTALVO', '5175', '4951', '77'),
(1002, 'BUITRAGO', '5172', '5034', '49'),
(1003, 'CASARES', '5161', '5126', '32'),
(1004, 'GABARRE', '5160', '4825', '625'),
(1005, 'LORCA', '5142', '4925', '39'),
(1006, 'MARTINS', '5138', '4312', '43'),
(1007, 'SALAMANCA', '5131', '5126', '30'),
(1008, 'PEREDA', '5130', '4940', '78'),
(1009, 'HUANG', '5128', '435', '25'),
(1010, 'GOMIS', '5126', '4505', '51'),
(1011, 'MERIDA', '5123', '4771', '49'),
(1012, 'BRIONES', '5114', '4931', '31'),
(1013, 'CASALS', '5104', '4904', '41'),
(1014, 'CUETO', '5087', '5071', '30'),
(1015, 'HIGUERAS', '5084', '4814', '88'),
(1016, 'CALZADA', '5083', '5212', '75'),
(1017, 'MENESES', '5083', '5141', '65'),
(1018, 'RECHE', '5082', '5297', '93'),
(1019, 'SANABRIA', '5075', '5150', '52'),
(1020, 'PAJARES', '5066', '4823', '35'),
(1021, 'UGARTE', '5059', '5071', '49'),
(1022, 'HUSSAIN', '5053', '311', '34'),
(1023, 'DE LA IGLESIA', '5036', '5023', '20'),
(1024, 'QUINTANILLA', '5036', '4873', '40'),
(1025, 'GONZALES', '5035', '5132', '74'),
(1026, 'JOVER', '5035', '4884', '15'),
(1027, 'TUR', '5028', '4996', '236'),
(1028, 'AGULLO', '5028', '4685', '91'),
(1029, 'DENIZ', '5026', '5086', '257'),
(1030, 'CANDELA', '5013', '4885', '65'),
(1031, 'VERDEJO', '5009', '5025', '34'),
(1032, 'JORDA', '5008', '5135', '38'),
(1033, 'GARAY', '5007', '5130', '37'),
(1034, 'LARREA', '5007', '4955', '35'),
(1035, 'VALLADARES', '5001', '4580', '44'),
(1036, 'CABRERO', '4994', '4922', '38'),
(1037, 'CONEJO', '4987', '5586', '53'),
(1038, 'MATIAS', '4979', '4976', '45'),
(1039, 'DE LA PE?A', '4978', '4654', '22'),
(1040, 'ROPERO', '4966', '5368', '55'),
(1041, 'CASERO', '4965', '4821', '17'),
(1042, 'ASENJO', '4963', '4675', '25'),
(1043, 'FERNANDES', '4951', '3978', '83'),
(1044, 'VARA', '4950', '5084', '134'),
(1045, 'ALBALADEJO', '4944', '4691', '37'),
(1046, 'BERNARDO', '4941', '4946', '36'),
(1047, 'MATO', '4930', '4999', '59'),
(1048, 'DEL AMO', '4917', '5196', '51'),
(1049, 'ESPARZA', '4908', '4465', '25'),
(1050, 'CORBACHO', '4906', '4887', '46'),
(1051, 'PUEYO', '4897', '4804', '30'),
(1052, 'BENAVENT', '4894', '4721', '275'),
(1053, 'MARTEL', '4892', '5347', '466'),
(1054, 'GARMENDIA', '4880', '5003', '123'),
(1055, 'PUGA', '4876', '4712', '43'),
(1056, 'CERRO', '4875', '5063', '89'),
(1057, 'ARAGONES', '4871', '4495', '59'),
(1058, 'LLORCA', '4861', '4897', '81'),
(1059, 'TRIVI?O', '4861', '4840', '50'),
(1060, 'BAYON', '4856', '4964', '63'),
(1061, 'MAESTRO', '4855', '4539', '40'),
(1062, 'DE JESUS', '4852', '4771', '85'),
(1063, 'MADRIGAL', '4852', '4751', '34'),
(1064, 'BARRIGA', '4849', '4803', '58'),
(1065, 'ESPINAR', '4842', '4531', '16'),
(1066, 'TORRADO', '4833', '4924', '51'),
(1067, 'DE LA VEGA', '4817', '4517', '30'),
(1068, 'RIUS', '4811', '4603', '17'),
(1069, 'SIMO', '4804', '4832', '26'),
(1070, 'VADILLO', '4800', '4741', '57'),
(1071, 'PALOMAR', '4791', '4596', '64'),
(1072, 'PAGES', '4788', '4526', '14'),
(1073, 'CADENAS', '4786', '4715', '69'),
(1074, 'FERRANDEZ', '4783', '4583', '51'),
(1075, 'IRIARTE', '4781', '4764', '42'),
(1076, 'JIANG', '4777', '294', '14'),
(1077, 'MONJE', '4765', '4610', '15'),
(1078, 'TORMO', '4759', '4562', '53'),
(1079, 'HENRIQUEZ', '4757', '4655', '45'),
(1080, 'DE ANDRES', '4757', '3775', '22'),
(1081, 'MILAN', '4754', '4812', '41'),
(1082, 'SALIDO', '4753', '4904', '40'),
(1083, 'PINTADO', '4753', '4698', '23'),
(1084, 'CISNEROS', '4750', '4516', '37'),
(1085, 'DONOSO', '4742', '4796', '59'),
(1086, 'PITA', '4739', '4418', '82'),
(1087, 'MONTALBAN', '4731', '4789', '29'),
(1088, 'BLAS', '4729', '4559', '40'),
(1089, 'MANCEBO', '4724', '4783', '61'),
(1090, 'CASANOVAS', '4721', '4663', '20'),
(1091, 'AYLLON', '4719', '4613', '35'),
(1092, 'GUARDIA', '4717', '4749', '43'),
(1093, 'ROA', '4717', '4467', '38'),
(1094, 'HIERRO', '4715', '4797', '37'),
(1095, 'CLAVIJO', '4712', '4731', '26'),
(1096, 'ANGEL', '4710', '4767', '31'),
(1097, 'DE PABLO', '4703', '4203', '34'),
(1098, 'DONAIRE', '4697', '4520', '60'),
(1099, 'BOU', '4688', '4298', '45'),
(1100, 'RAMA', '4685', '4817', '63'),
(1101, 'CABO', '4676', '4483', '44'),
(1102, 'DE LA CALLE', '4665', '4270', '28'),
(1103, 'VILANOVA', '4662', '4699', '30'),
(1104, 'ANGUITA', '4660', '4854', '42'),
(1105, 'LARRA?AGA', '4652', '4477', '114'),
(1106, 'MOLLA', '4649', '4425', '23'),
(1107, 'POPA', '4648', '468', '38'),
(1108, 'CAPILLA', '4640', '5197', '71'),
(1109, 'ESCALONA', '4631', '4858', '46'),
(1110, 'ZORRILLA', '4628', '4890', '30'),
(1111, 'BOLIVAR', '4626', '4778', '91'),
(1112, 'CARPINTERO', '4619', '4418', '40'),
(1113, 'PICON', '4618', '4622', '29'),
(1114, 'SMITH', '4617', '1166', '7'),
(1115, 'BUSTO', '4616', '4332', '40'),
(1116, 'URIBE', '4611', '4634', '43'),
(1117, 'SABATE', '4611', '4390', '34'),
(1118, 'PORTERO', '4610', '4835', '55'),
(1119, 'ALBARRAN', '4610', '4286', '36'),
(1120, 'CASTILLEJO', '4609', '4413', '42'),
(1121, 'PORCEL', '4601', '4909', '57'),
(1122, 'GIRALDEZ', '4600', '4570', '43'),
(1123, 'NORIEGA', '4598', '4758', '49'),
(1124, 'POZA', '4594', '4475', '79'),
(1125, 'ANTEQUERA', '4586', '4618', '38'),
(1126, 'VALENTIN', '4582', '4600', '27'),
(1127, 'TORRENT', '4581', '4242', '17'),
(1128, 'SARABIA', '4575', '4516', '32'),
(1129, 'CUERVO', '4571', '4667', '69'),
(1130, 'UTRERA', '4569', '4442', '117'),
(1131, 'DALMAU', '4550', '4237', '5'),
(1132, 'AGUIAR', '4542', '4634', '25'),
(1133, 'PARRAGA', '4541', '4460', '38'),
(1134, 'MONREAL', '4540', '4357', '19'),
(1135, 'GREGORIO', '4534', '4754', '43'),
(1136, 'AMIGO', '4531', '4425', '89'),
(1137, 'PALMERO', '4525', '4092', '47'),
(1138, 'MIQUEL', '4521', '4350', '25'),
(1139, 'JIN', '4521', '277', '8'),
(1140, 'RABADAN', '4520', '4327', '26'),
(1141, 'PORTA', '4516', '4228', '17'),
(1142, 'POP', '4496', '416', '40'),
(1143, 'CORTIJO', '4495', '4333', '74'),
(1144, 'MEDIAVILLA', '4494', '4602', '73'),
(1145, 'CA?ADA', '4490', '4482', '31'),
(1146, 'CARABALLO', '4490', '4481', '59'),
(1147, 'CASCALES', '4483', '4808', '42'),
(1148, 'PELAYO', '4474', '4509', '96'),
(1149, 'TENORIO', '4470', '4425', '34'),
(1150, 'VAL', '4466', '4464', '34'),
(1151, 'PAYA', '4465', '4401', '31'),
(1152, 'MONTESDEOCA', '4459', '4483', '54'),
(1153, 'SILES', '4448', '4616', '22'),
(1154, 'CERRATO', '4445', '4537', '55'),
(1155, 'GARROTE', '4440', '4544', '48'),
(1156, 'TERRON', '4440', '4403', '46'),
(1157, 'RONCERO', '4434', '4441', '54'),
(1158, 'BERLANGA', '4432', '4387', '72'),
(1159, 'MONROY', '4430', '4420', '31'),
(1160, 'RODA', '4426', '4496', '24'),
(1161, 'COMPANY', '4422', '4150', '38'),
(1162, 'POZUELO', '4419', '4505', '26'),
(1163, 'ALBERDI', '4414', '4252', '76'),
(1164, 'KHAN', '4411', '796', '131'),
(1165, 'GRANDA', '4408', '4504', '102'),
(1166, 'BLANCH', '4406', '4284', '26'),
(1167, 'CARBAJO', '4405', '4200', '52'),
(1168, 'MIGUELEZ', '4397', '4168', '85'),
(1169, 'JODAR', '4395', '4620', '31'),
(1170, 'ALMANSA', '4395', '4612', '36'),
(1171, 'MONTA?ES', '4394', '4333', '29'),
(1172, 'GINES', '4394', '4078', '25'),
(1173, 'GEA', '4391', '4400', '34'),
(1174, 'DE FRUTOS', '4389', '4116', '65'),
(1175, 'BAYO', '4385', '4166', '52'),
(1176, 'CEPEDA', '4380', '4461', '32'),
(1177, 'PRIEGO', '4373', '4533', '69'),
(1178, 'ZAMBRANA', '4367', '4316', '46'),
(1179, 'ESCRIVA', '4363', '4433', '144'),
(1180, 'PUCHE', '4362', '4360', '34'),
(1181, 'PORTO', '4356', '4272', '59'),
(1182, 'VILLARREAL', '4355', '4375', '41'),
(1183, 'CONCEPCION', '4353', '4931', '67'),
(1184, 'DE OLIVEIRA', '4352', '4983', '57'),
(1185, 'PI?OL', '4347', '4433', '80'),
(1186, 'LLUCH', '4347', '4202', '29'),
(1187, 'ROSARIO', '4341', '4296', '149'),
(1188, 'MORGADO', '4341', '4266', '27'),
(1189, 'CORONEL', '4340', '4042', '64'),
(1190, 'REGUERA', '4331', '4201', '95'),
(1191, 'JUSTO', '4326', '4309', '61'),
(1192, 'MILLA', '4321', '4280', '46'),
(1193, 'TERAN', '4319', '4056', '31'),
(1194, 'PAN', '4316', '2009', '8'),
(1195, 'TRIGUERO', '4308', '4433', '43'),
(1196, 'BAZAN', '4308', '4228', '19'),
(1197, 'RAPOSO', '4305', '4377', '53'),
(1198, 'MORANTE', '4303', '4243', '49'),
(1199, 'MORALEDA', '4303', '3962', '85'),
(1200, 'AGUERA', '4299', '4342', '32'),
(1201, 'BEDOYA', '4297', '4492', '51'),
(1202, 'SOTELO', '4292', '4138', '53'),
(1203, 'CABA?AS', '4286', '4077', '30'),
(1204, 'MICO', '4284', '4267', '70'),
(1205, 'ARCAS', '4282', '4312', '35'),
(1206, 'INFANTES', '4280', '4236', '16'),
(1207, 'MORELL', '4264', '3715', '26'),
(1208, 'PLATA', '4257', '4367', '76'),
(1209, 'PE?AS', '4250', '4224', '33'),
(1210, 'MAQUEDA', '4225', '4518', '23'),
(1211, 'GAZQUEZ', '4225', '4083', '70'),
(1212, 'CASTRILLO', '4218', '3948', '69'),
(1213, 'QUISPE', '4208', '4485', '132'),
(1214, 'BERTRAN', '4206', '3879', '27'),
(1215, 'ABELLA', '4204', '4243', '81'),
(1216, 'RANGEL', '4202', '4243', '49'),
(1217, 'ROMANO', '4201', '3583', '12'),
(1218, 'POMARES', '4199', '4052', '41'),
(1219, 'DE PAZ', '4197', '4126', '45'),
(1220, 'ASENCIO', '4193', '4188', '20'),
(1221, 'MURO', '4192', '4335', '13'),
(1222, 'REGUEIRO', '4192', '4113', '34'),
(1223, 'AMARO', '4192', '4009', '21'),
(1224, 'VACAS', '4177', '4293', '27'),
(1225, 'TEIXEIRA', '4174', '3466', '36'),
(1226, 'TRINIDAD', '4173', '4178', '56'),
(1227, 'RESTREPO', '4171', '4399', '81'),
(1228, 'ROQUE', '4169', '4197', '26'),
(1229, 'CASTEJON', '4167', '4067', '27'),
(1230, 'BARON', '4167', '3966', '24'),
(1231, 'QUEROL', '4167', '3860', '64'),
(1232, 'PANADERO', '4162', '4255', '22'),
(1233, 'VENEGAS', '4155', '3918', '79'),
(1234, 'CARAVACA', '4151', '4169', '38'),
(1235, 'GRANERO', '4150', '4126', '65'),
(1236, 'MULERO', '4149', '4118', '30'),
(1237, 'ALMAZAN', '4146', '4076', '67'),
(1238, 'CARRACEDO', '4145', '4087', '98'),
(1239, 'ARANGO', '4144', '4058', '62'),
(1240, 'ROSILLO', '4141', '4028', '96'),
(1241, 'MANJON', '4138', '3973', '33'),
(1242, 'ROSAS', '4137', '3968', '34'),
(1243, 'PLANA', '4136', '3885', '20'),
(1244, 'FORTES', '4135', '4235', '88'),
(1245, 'CANTON', '4134', '4111', '33'),
(1246, 'MARIA', '4132', '4110', '56'),
(1247, 'BARCO', '4122', '4218', '31'),
(1248, 'ROCAMORA', '4120', '4059', '139'),
(1249, 'MACHO', '4118', '4419', '48'),
(1250, 'ALCON', '4096', '4212', '49'),
(1251, 'MACHIN', '4083', '4128', '57'),
(1252, 'SEDANO', '4080', '4149', '39'),
(1253, 'NI?O', '4078', '4264', '26'),
(1254, 'PRADAS', '4075', '3964', '46'),
(1255, 'CARBO', '4073', '3870', '10'),
(1256, 'FELIX', '4065', '4094', '21'),
(1257, 'TORNERO', '4064', '4183', '38'),
(1258, 'CASTELL', '4058', '3998', '38'),
(1259, 'VILAS', '4051', '3947', '13'),
(1260, 'FUNES', '4051', '3770', '36'),
(1261, 'TEBAR', '4049', '4081', '38'),
(1262, 'CALZADO', '4047', '4019', '52'),
(1263, 'GANDIA', '4044', '3933', '50'),
(1264, 'SALVATIERRA', '4042', '3863', '44'),
(1265, 'POSADA', '4037', '4046', '31'),
(1266, 'ARREGUI', '4037', '4036', '27'),
(1267, 'AGUAYO', '4029', '3994', '22'),
(1268, 'ARGUELLES', '4028', '3991', '38'),
(1269, 'MOLINER', '4027', '3985', '65'),
(1270, 'PANTOJA', '4027', '3807', '34'),
(1271, 'HU', '4006', '305', '22'),
(1272, 'MIRAS', '4005', '3910', '29'),
(1273, 'FELIZ', '4004', '3990', '294'),
(1274, 'CAMPA?A', '3998', '4193', '38'),
(1275, 'LOUREIRO', '3993', '3907', '44'),
(1276, 'URBINA', '3992', '3904', '43'),
(1277, 'BORGES', '3987', '3838', '36'),
(1278, 'TORRIJOS', '3971', '4014', '93'),
(1279, 'TRAORE', '3968', '543', '76'),
(1280, 'GALEANO', '3959', '3921', '54'),
(1281, 'MUHAMMAD', '3959', '311', '32'),
(1282, 'DURA', '3957', '3763', '35'),
(1283, 'ESCAMILLA', '3953', '4007', '8'),
(1284, 'JAUREGUI', '3953', '3905', '20');
INSERT INTO `apellidos` (`id`, `apellido`, `ap1`, `ap2`, `total`) VALUES
(1285, 'YANES', '3949', '3868', '37'),
(1286, 'LLEDO', '3946', '3736', '16'),
(1287, 'PARRAS', '3945', '3950', '47'),
(1288, 'OCAMPO', '3945', '3825', '63'),
(1289, 'RIBEIRO', '3944', '3434', '21'),
(1290, 'ARTILES', '3942', '4106', '71'),
(1291, 'VIGO', '3941', '3934', '12'),
(1292, 'MATAMOROS', '3937', '4114', '50'),
(1293, 'CUTILLAS', '3933', '3923', '53'),
(1294, 'RIVEIRO', '3933', '3781', '25'),
(1295, 'SEIJAS', '3932', '3900', '20'),
(1296, 'MOTOS', '3929', '3939', '149'),
(1297, 'CONEJERO', '3927', '3904', '14'),
(1298, 'ABADIA', '3921', '3857', '37'),
(1299, 'CUARTERO', '3920', '3989', '57'),
(1300, 'CANAL', '3911', '3955', '21'),
(1301, 'IVANOVA', '3906', '2216', '195'),
(1302, 'ORTA', '3905', '4063', '62'),
(1303, 'DE PEDRO', '3898', '3809', '60'),
(1304, 'FERRI', '3890', '3575', '25'),
(1305, 'MANGAS', '3887', '3945', '46'),
(1306, 'LONDO?O', '3883', '3871', '79'),
(1307, 'DEL BARRIO', '3882', '3463', '27'),
(1308, 'FABREGAT', '3881', '3744', '56'),
(1309, 'ARMENGOL', '3881', '3687', '20'),
(1310, 'QUINTAS', '3877', '3948', '45'),
(1311, 'VARO', '3872', '3768', '37'),
(1312, 'REINOSO', '3869', '3927', '43'),
(1313, 'MENGUAL', '3868', '4093', '65'),
(1314, 'TORRECILLAS', '3866', '3655', '21'),
(1315, 'OLLER', '3864', '3683', '76'),
(1316, 'BALDE', '3862', '853', '259'),
(1317, 'I?IGUEZ', '3861', '4033', '19'),
(1318, 'BEJAR', '3861', '3762', '47'),
(1319, 'PARRADO', '3861', '3726', '48'),
(1320, 'MONFORT', '3861', '3660', '45'),
(1321, 'BREA', '3861', '3633', '21'),
(1322, 'COZAR', '3860', '3890', '30'),
(1323, 'SENDRA', '3858', '3909', '96'),
(1324, 'FERRO', '3856', '3713', '20'),
(1325, 'VILARI?O', '3856', '3672', '41'),
(1326, 'BARRENA', '3851', '3888', '59'),
(1327, 'NICOLAU', '3851', '3602', '43'),
(1328, 'CASILLAS', '3845', '3699', '62'),
(1329, 'PEDRERO', '3844', '3902', '11'),
(1330, 'ALSINA', '3843', '3809', '12'),
(1331, 'RAMIS', '3841', '3668', '60'),
(1332, 'UCEDA', '3840', '3663', '33'),
(1333, 'ANTELO', '3839', '3505', '68'),
(1334, 'MIRON', '3838', '2948', '17'),
(1335, 'MORATA', '3835', '3581', '30'),
(1336, 'ABASCAL', '3834', '4226', '171'),
(1337, 'COLOM', '3827', '3698', '47'),
(1338, 'CANALS', '3825', '3690', '16'),
(1339, 'QUILEZ', '3822', '3590', '49'),
(1340, 'AGUILA', '3818', '4002', '34'),
(1341, 'PABLOS', '3818', '3620', '27'),
(1342, 'LANDA', '3816', '3443', '7'),
(1343, 'CEDE?O', '3815', '4043', '95'),
(1344, 'AGUERO', '3815', '3743', '48'),
(1345, 'IZAGUIRRE', '3814', '3757', '55'),
(1346, 'FONTAN', '3811', '3458', '69'),
(1347, 'BARCIA', '3801', '3560', '18'),
(1348, 'ORTS', '3800', '3500', '24'),
(1349, 'GALIANA', '3799', '3712', '17'),
(1350, 'IVANOV', '3799', '1994', '196'),
(1351, 'VALBUENA', '3795', '3707', '31'),
(1352, 'DIZ', '3787', '3785', '74'),
(1353, 'BORRERO', '3783', '3796', '29'),
(1354, 'CARNERO', '3778', '3901', '26'),
(1355, 'LAVADO', '3778', '3853', '47'),
(1356, 'PABLO', '3775', '4083', '48'),
(1357, 'ANDRADES', '3770', '3790', '40'),
(1358, 'TORRENTE', '3769', '3960', '28'),
(1359, 'CAMARERO', '3764', '3832', '48'),
(1360, 'RENDON', '3760', '3956', '20'),
(1361, 'VIEIRA', '3756', '3297', '25'),
(1362, 'LLANO', '3752', '3773', '35'),
(1363, 'BAQUERO', '3745', '3479', '33'),
(1364, 'DEVESA', '3743', '3543', '55'),
(1365, 'GONZALVEZ', '3742', '3323', '29'),
(1366, 'BUSQUETS', '3741', '3662', '35'),
(1367, 'RUA', '3733', '3902', '39'),
(1368, 'NEBOT', '3729', '3875', '56'),
(1369, 'VIANA', '3725', '3476', '48'),
(1370, 'TORRECILLA', '3721', '3673', '36'),
(1371, 'ARAQUE', '3715', '3702', '48'),
(1372, 'CAYUELA', '3710', '3765', '35'),
(1373, 'HUGUET', '3707', '3616', '38'),
(1374, 'COUTO', '3700', '3478', '30'),
(1375, 'CASES', '3691', '3721', '28'),
(1376, 'HIGUERA', '3688', '3624', '32'),
(1377, 'SAN ROMAN', '3687', '3441', '37'),
(1378, 'ZARATE', '3687', '3424', '35'),
(1379, 'TOSCANO', '3687', '3413', '30'),
(1380, 'ARAMBURU', '3686', '3663', '47'),
(1381, 'ARNAL', '3676', '3762', '79'),
(1382, 'DURO', '3675', '3439', '24'),
(1383, 'LAHOZ', '3671', '3660', '47'),
(1384, 'ALCOLEA', '3670', '3643', '73'),
(1385, 'GADEA', '3670', '3517', '24'),
(1386, 'DE JUAN', '3668', '2683', '8'),
(1387, 'TORRICO', '3666', '3352', '54'),
(1388, 'RADU', '3665', '350', '22'),
(1389, 'LIEBANA', '3661', '3473', '166'),
(1390, 'MELO', '3657', '3948', '49'),
(1391, 'VIEJO', '3657', '3823', '50'),
(1392, 'BARRIONUEVO', '3655', '3625', '37'),
(1393, 'MUGICA', '3651', '3719', '53'),
(1394, 'YEPES', '3648', '3674', '27'),
(1395, 'IBORRA', '3645', '3455', '26'),
(1396, 'VICENT', '3640', '3526', '30'),
(1397, 'ALGUACIL', '3638', '3360', '27'),
(1398, 'TABARES', '3635', '3690', '45'),
(1399, 'LASTRA', '3633', '3426', '16'),
(1400, 'GRA?A', '3632', '3752', '61'),
(1401, 'MARINA', '3632', '3285', '42'),
(1402, 'LASO', '3625', '3864', '59'),
(1403, 'CORDOVA', '3625', '3619', '68'),
(1404, 'SAMANIEGO', '3624', '3358', '22'),
(1405, 'PASTRANA', '3620', '3686', '53'),
(1406, 'AMO', '3620', '3437', '17'),
(1407, 'AVALOS', '3609', '3614', '25'),
(1408, 'DEL REY', '3608', '3425', '47'),
(1409, 'ROSSELLO', '3604', '3562', '32'),
(1410, 'OSPINA', '3603', '3684', '95'),
(1411, 'RODAS', '3601', '3785', '49'),
(1412, 'CAO', '3601', '2981', '20'),
(1413, 'SIMARRO', '3597', '3774', '30'),
(1414, 'NU?O', '3595', '3438', '50'),
(1415, 'ROMEO', '3594', '3401', '28'),
(1416, 'GAITAN', '3593', '3481', '13'),
(1417, 'MENDIZABAL', '3592', '3762', '38'),
(1418, 'BAS', '3591', '3513', '17'),
(1419, 'REGALADO', '3584', '3680', '45'),
(1420, 'FERRANDIZ', '3583', '3496', '20'),
(1421, 'ACERO', '3576', '3497', '40'),
(1422, 'PEREIRO', '3560', '3534', '20'),
(1423, 'PALENCIA', '3557', '3399', '17'),
(1424, 'IRANZO', '3554', '3346', '34'),
(1425, 'BLANES', '3552', '3408', '31'),
(1426, 'BLANCA', '3551', '3539', '24'),
(1427, 'MASIP', '3551', '3334', '100'),
(1428, 'MOLL', '3549', '3482', '84'),
(1429, 'ARRABAL', '3545', '3677', '58'),
(1430, 'CURBELO', '3543', '3401', '81'),
(1431, 'VELARDE', '3542', '3192', '13'),
(1432, 'HUETE', '3541', '3645', '15'),
(1433, 'PARRE?O', '3540', '3640', '21'),
(1434, 'LAGE', '3528', '3345', '29'),
(1435, 'NAVALON', '3525', '3354', '69'),
(1436, 'MENDES', '3525', '2390', '165'),
(1437, 'VIVANCOS', '3523', '3469', '31'),
(1438, 'ORTIGOSA', '3520', '3358', '49'),
(1439, 'BARRAL', '3519', '3604', '23'),
(1440, 'GAMBOA', '3517', '3548', '50'),
(1441, 'ARTIGAS', '3514', '3427', '31'),
(1442, 'NEGRIN', '3510', '3433', '56'),
(1443, 'CARREIRA', '3510', '3295', '27'),
(1444, 'VENDRELL', '3503', '3443', '36'),
(1445, 'LI?AN', '3502', '3748', '33'),
(1446, 'TERCERO', '3501', '3658', '55'),
(1447, 'BARQUERO', '3499', '3534', '36'),
(1448, 'ROZAS', '3499', '3391', '32'),
(1449, 'MATILLA', '3495', '3690', '71'),
(1450, 'CANET', '3493', '3502', '76'),
(1451, 'LUGO', '3492', '3464', '31'),
(1452, 'MORENTE', '3487', '3192', '22'),
(1453, 'SABORIDO', '3478', '3590', '23'),
(1454, 'CUEVA', '3475', '3575', '79'),
(1455, 'GAMARRA', '3474', '3446', '63'),
(1456, 'POMBO', '3463', '3475', '25'),
(1457, 'COTO', '3459', '3475', '35'),
(1458, 'CHINCHILLA', '3459', '3379', '34'),
(1459, 'VALDEZ', '3454', '3449', '90'),
(1460, 'MONDEJAR', '3451', '3401', '15'),
(1461, 'PINEDO', '3450', '3627', '58'),
(1462, 'ARTERO', '3448', '3333', '27'),
(1463, 'DE LOS REYES', '3444', '3520', '21'),
(1464, 'EGIDO', '3440', '3491', '22'),
(1465, 'PINTOR', '3438', '3393', '23'),
(1466, 'SELLES', '3435', '3397', '44'),
(1467, 'OLEA', '3435', '3237', '9'),
(1468, 'CRUCES', '3435', '3160', '32'),
(1469, 'ROMEU', '3434', '3138', '7'),
(1470, 'VILLARROEL', '3433', '3253', '45'),
(1471, 'BELLON', '3432', '3287', '54'),
(1472, 'TREJO', '3430', '3755', '17'),
(1473, 'ESTEBANEZ', '3424', '3357', '35'),
(1474, 'BALLESTA', '3423', '3249', '34'),
(1475, 'DE LUCAS', '3422', '3310', '36'),
(1476, 'CURTO', '3414', '3060', '39'),
(1477, 'PAGAN', '3411', '3274', '22'),
(1478, 'JI', '3411', '219', '8'),
(1479, 'ALMENDROS', '3409', '3465', '67'),
(1480, 'LLINARES', '3408', '3247', '73'),
(1481, 'BARREDA', '3407', '3269', '53'),
(1482, 'CORREAS', '3406', '3490', '48'),
(1483, 'CORTINA', '3403', '3378', '32'),
(1484, 'DEL VAL', '3403', '3161', '18'),
(1485, 'FELIU', '3402', '3253', '8'),
(1486, 'ALBERO', '3401', '3336', '33'),
(1487, 'KEITA', '3400', '408', '97'),
(1488, 'FRANCH', '3392', '3231', '108'),
(1489, 'ACEITUNO', '3391', '3401', '43'),
(1490, 'DA COSTA', '3388', '3236', '35'),
(1491, 'TOLOSA', '3384', '3598', '40'),
(1492, 'NOTARIO', '3384', '3474', '19'),
(1493, 'CURIEL', '3383', '3486', '59'),
(1494, 'LASA', '3383', '3355', '40'),
(1495, 'PACHON', '3379', '3546', '16'),
(1496, 'BERNARDEZ', '3375', '3272', '33'),
(1497, 'DE BLAS', '3373', '3354', '44'),
(1498, 'SALADO', '3369', '3262', '29'),
(1499, 'MATE', '3365', '3168', '54'),
(1500, 'CORCOLES', '3364', '3600', '56'),
(1501, 'MAYORGA', '3364', '3428', '52'),
(1502, 'POLANCO', '3363', '3443', '65'),
(1503, 'CALVENTE', '3361', '3286', '67'),
(1504, 'CORBALAN', '3357', '3423', '46'),
(1505, 'PAJUELO', '3356', '3518', '16'),
(1506, 'CUADROS', '3354', '3414', '40'),
(1507, 'MEZA', '3352', '3315', '35'),
(1508, 'PIMENTEL', '3351', '3322', '21'),
(1509, 'DUMITRU', '3350', '280', '23'),
(1510, 'FRESNEDA', '3347', '3284', '56'),
(1511, 'MERCADER', '3345', '3268', '17'),
(1512, 'SOLERA', '3344', '3435', '19'),
(1513, 'EDO', '3343', '3189', '51'),
(1514, 'MONZO', '3341', '3259', '24'),
(1515, 'BERRIO', '3340', '3553', '145'),
(1516, 'MULET', '3338', '3282', '44'),
(1517, 'TEJEDA', '3331', '3295', '33'),
(1518, 'LOSA', '3328', '3180', '18'),
(1519, 'ALEGRIA', '3324', '3179', '30'),
(1520, 'HITA', '3322', '3146', '48'),
(1521, 'OLTRA', '3320', '3061', '36'),
(1522, 'ESPINA', '3319', '3261', '43'),
(1523, 'CLAVERO', '3319', '3232', '27'),
(1524, 'GUASCH', '3315', '3155', '46'),
(1525, 'BAYONA', '3312', '3257', '33'),
(1526, 'BERNAD', '3310', '3296', '44'),
(1527, 'BAJO', '3309', '3427', '43'),
(1528, 'GALISTEO', '3309', '3379', '14'),
(1529, 'VARONA', '3308', '3097', '28'),
(1530, 'COLMENERO', '3306', '3259', '28'),
(1531, 'VICARIO', '3304', '3366', '52'),
(1532, 'ALGABA', '3302', '3349', '61'),
(1533, 'VALDIVIESO', '3302', '3257', '40'),
(1534, 'SOLORZANO', '3296', '3281', '40'),
(1535, 'GABALDON', '3295', '3321', '25'),
(1536, 'NOYA', '3293', '3147', '48'),
(1537, 'GIJON', '3286', '3165', '15'),
(1538, 'CALABUIG', '3283', '3339', '51'),
(1539, 'MARCHENA', '3281', '3472', '10'),
(1540, 'ALCOCER', '3281', '3277', '18'),
(1541, 'ALLER', '3280', '3313', '74'),
(1542, 'CORPAS', '3275', '3204', '14'),
(1543, 'ZARZA', '3270', '3416', '27'),
(1544, 'GUILLEM', '3270', '3279', '35'),
(1545, 'PIEDRA', '3270', '3057', '25'),
(1546, 'DE LA HOZ', '3267', '3177', '23'),
(1547, 'LOPES', '3266', '2935', '20'),
(1548, 'MARCH', '3263', '3009', '12'),
(1549, 'PATON', '3262', '3301', '18'),
(1550, 'CASTELLON', '3261', '3243', '35'),
(1551, 'BRENES', '3257', '3021', '40'),
(1552, 'QUIJADA', '3256', '3112', '25'),
(1553, 'ALBEROLA', '3252', '3282', '27'),
(1554, 'LAVIN', '3249', '3432', '59'),
(1555, 'CALLEJAS', '3246', '3060', '20'),
(1556, 'GUILLAMON', '3243', '3280', '70'),
(1557, 'LLADO', '3243', '3184', '7'),
(1558, 'IQBAL', '3242', '272', '34'),
(1559, 'HERRAEZ', '3240', '2895', '51'),
(1560, 'SUN', '3240', '232', '5'),
(1561, 'AGUDELO', '3236', '3426', '64'),
(1562, 'HUESO', '3235', '3002', '20'),
(1563, 'DEL TORO', '3235', '2994', '49'),
(1564, 'TORRAS', '3235', '2879', '11'),
(1565, 'BORREGUERO', '3228', '3184', '13'),
(1566, 'MANCERA', '3228', '3125', '30'),
(1567, 'TRIGUEROS', '3226', '3343', '22'),
(1568, 'REGO', '3221', '3416', '35'),
(1569, 'GALARZA', '3221', '3227', '51'),
(1570, 'LEYVA', '3220', '3483', '40'),
(1571, 'FALL', '3214', '713', '106'),
(1572, 'I?IGO', '3211', '2858', '21'),
(1573, 'BARRADO', '3210', '3045', '20'),
(1574, 'SIRVENT', '3205', '3046', '38'),
(1575, 'BARRACHINA', '3204', '3068', '19'),
(1576, 'RODERO', '3204', '2979', '42'),
(1577, 'AZORIN', '3197', '3214', '53'),
(1578, 'QUINTELA', '3196', '3184', '27'),
(1579, 'BOZA', '3195', '3333', '21'),
(1580, 'ESCOLANO', '3195', '3158', '25'),
(1581, 'GOICOECHEA', '3190', '3545', '49'),
(1582, 'GUEYE', '3187', '648', '61'),
(1583, 'MOLDOVAN', '3185', '246', '20'),
(1584, 'COLOMA', '3180', '2994', '19'),
(1585, 'MOLANO', '3178', '3218', '36'),
(1586, 'MONCADA', '3177', '3102', '24'),
(1587, 'MATUTE', '3176', '3179', '29'),
(1588, 'POSE', '3174', '3385', '67'),
(1589, 'PITARCH', '3174', '3094', '45'),
(1590, 'BALBOA', '3167', '3103', '20'),
(1591, 'COULIBALY', '3165', '388', '59'),
(1592, 'VICENS', '3162', '3050', '28'),
(1593, 'BERTOMEU', '3159', '3253', '63'),
(1594, 'SOLSONA', '3158', '3210', '25'),
(1595, 'BARO', '3158', '3115', '25'),
(1596, 'MONEDERO', '3157', '3237', '23'),
(1597, 'CASTI?EIRA', '3155', '3125', '46'),
(1598, 'ASENSI', '3155', '2896', '16'),
(1599, 'SOMOZA', '3153', '3010', '20'),
(1600, 'LARROSA', '3147', '2982', '37'),
(1601, 'SERRAT', '3144', '3012', '16'),
(1602, 'BORRELL', '3144', '2905', '20'),
(1603, 'TORAL', '3138', '3089', '..'),
(1604, 'HERNANZ', '3138', '2754', '93'),
(1605, 'ETXEBERRIA', '3137', '2535', '42'),
(1606, 'MAGAN', '3136', '3169', '20'),
(1607, 'DEL CERRO', '3136', '3114', '40'),
(1608, 'CHAMIZO', '3136', '3073', '27'),
(1609, 'ZARCO', '3136', '3060', '30'),
(1610, 'VIVO', '3132', '3129', '28'),
(1611, 'ARACIL', '3130', '3225', '10'),
(1612, 'GANDARA', '3129', '2923', '34'),
(1613, 'LERMA', '3127', '2876', '11'),
(1614, 'TAMARIT', '3127', '2827', '33'),
(1615, 'MALAGON', '3125', '3156', '25'),
(1616, 'CEJUDO', '3117', '3252', '17'),
(1617, 'HEVIA', '3114', '3119', '26'),
(1618, 'TRONCOSO', '3111', '3084', '29'),
(1619, 'TORRALBO', '3110', '3223', '31'),
(1620, 'SEIJO', '3109', '3085', '19'),
(1621, 'HOLGUIN', '3108', '3171', '40'),
(1622, 'ESCOBEDO', '3104', '2880', '89'),
(1623, 'PERONA', '3102', '3122', '34'),
(1624, 'MARQUINA', '3101', '3114', '18'),
(1625, 'BARCENA', '3100', '2989', '41'),
(1626, 'MACHUCA', '3099', '3082', '19'),
(1627, 'CALLEJO', '3098', '2855', '25'),
(1628, 'MELGAREJO', '3095', '3217', '23'),
(1629, 'BARRUL', '3095', '2930', '347'),
(1630, 'LOPERA', '3094', '3067', '40'),
(1631, 'AMENGUAL', '3093', '3036', '51'),
(1632, 'GARGALLO', '3091', '2931', '39'),
(1633, 'MAESO', '3088', '3339', '31'),
(1634, 'VILLAESCUSA', '3086', '2967', '10'),
(1635, 'GALLEGOS', '3085', '3107', '33'),
(1636, 'PUENTES', '3085', '3090', '24'),
(1637, 'REQUEJO', '3082', '3153', '38'),
(1638, 'COMESA?A', '3082', '3104', '107'),
(1639, 'ESTEPA', '3081', '2991', '19'),
(1640, 'POU', '3074', '2856', '23'),
(1641, 'GONGORA', '3074', '2851', '17'),
(1642, 'JARE?O', '3066', '3336', '19'),
(1643, 'CABRERIZO', '3066', '3062', '67'),
(1644, 'MOURE', '3064', '2954', '17'),
(1645, 'TORTAJADA', '3063', '3111', '44'),
(1646, 'OBREGON', '3063', '3018', '31'),
(1647, 'PELEGRIN', '3062', '2962', '10'),
(1648, 'FLOR', '3061', '2968', '43'),
(1649, 'ARMENTEROS', '3061', '2899', '27'),
(1650, 'DEL HOYO', '3058', '2976', '17'),
(1651, 'MENDIETA', '3056', '3025', '29'),
(1652, 'MOSCOSO', '3053', '3132', '18'),
(1653, 'MUR', '3052', '3232', '42'),
(1654, 'CORONA', '3051', '3039', '32'),
(1655, 'CUBAS', '3046', '3129', '51'),
(1656, 'BATLLE', '3042', '2865', '15'),
(1657, 'BROTONS', '3041', '2861', '20'),
(1658, 'CRUZADO', '3039', '3172', '18'),
(1659, 'SICILIA', '3039', '2815', '23'),
(1660, 'PRADES', '3033', '2891', '24'),
(1661, 'LLACER', '3025', '2976', '34'),
(1662, 'BAUZA', '3024', '3140', '64'),
(1663, 'FABRA', '3014', '3185', '5'),
(1664, 'COLLANTES', '3013', '3159', '23'),
(1665, 'AGUSTI', '3012', '2963', '25'),
(1666, 'CABRAL', '3011', '2760', '25'),
(1667, 'BERNAT', '3009', '3015', '12'),
(1668, 'LLOP', '3006', '2986', '50'),
(1669, 'GASCO', '3006', '2876', '27'),
(1670, 'GELABERT', '3005', '2908', '28'),
(1671, 'VERDE', '3004', '2870', '13'),
(1672, 'GIRONA', '2998', '2997', '19'),
(1673, 'PIQUER', '2997', '3019', '18'),
(1674, 'ARANGUREN', '2996', '2649', '18'),
(1675, 'HENAO', '2992', '3180', '59'),
(1676, 'COLLAZO', '2992', '2871', '28'),
(1677, 'QIU', '2990', '264', '21'),
(1678, 'DIOS', '2988', '2872', '54'),
(1679, 'MESAS', '2985', '3185', '54'),
(1680, 'CAICEDO', '2985', '2930', '75'),
(1681, 'CAMARENA', '2984', '2969', '48'),
(1682, 'ULLOA', '2980', '3155', '35'),
(1683, 'HERMOSILLA', '2978', '3099', '14'),
(1684, 'PORTILLA', '2977', '3078', '25'),
(1685, 'MONTA?EZ', '2976', '2958', '70'),
(1686, 'LUMBRERAS', '2975', '3080', '8'),
(1687, 'MI?ANA', '2974', '2915', '27'),
(1688, 'RAYO', '2972', '3029', '39'),
(1689, 'CANDEL', '2964', '3002', '26'),
(1690, 'NOVILLO', '2954', '3120', '34'),
(1691, 'LEMOS', '2954', '2910', '26'),
(1692, 'ALCA?IZ', '2953', '2641', '11'),
(1693, 'HERNAN', '2951', '2831', '36'),
(1694, 'MAGRO', '2950', '2909', '32'),
(1695, 'DE SOUSA', '2945', '2915', '30'),
(1696, 'GALDON', '2944', '3099', '37'),
(1697, 'VILLALON', '2941', '2817', '17'),
(1698, 'CIUDAD', '2940', '2999', '46'),
(1699, 'DARIAS', '2940', '2834', '86'),
(1700, 'BERBEL', '2937', '2704', '17'),
(1701, 'VAZ', '2932', '2795', '48'),
(1702, 'GALDEANO', '2930', '2946', '46'),
(1703, 'LANZA', '2927', '2819', '29'),
(1704, 'LEDO', '2927', '2786', '37'),
(1705, 'AQUINO', '2925', '2755', '46'),
(1706, 'BOUZAS', '2924', '2653', '32'),
(1707, 'ADAME', '2917', '2870', '13'),
(1708, 'ENRIQUE', '2916', '3022', '7'),
(1709, 'MADUE?O', '2915', '3076', '38'),
(1710, 'TROYA', '2914', '2791', '44'),
(1711, 'AZCONA', '2910', '2923', '21'),
(1712, 'REGUEIRA', '2907', '2799', '36'),
(1713, 'ZABALETA', '2903', '2960', '74'),
(1714, 'GONCALVES', '2901', '2272', '43'),
(1715, 'REVERTE', '2900', '3052', '56'),
(1716, 'VARAS', '2897', '2925', '38'),
(1717, 'VI?A', '2893', '2921', '23'),
(1718, 'RIOJA', '2888', '2926', '37'),
(1719, 'GARATE', '2884', '2859', '38'),
(1720, 'OLIVEROS', '2883', '2816', '14'),
(1721, 'BAZ', '2883', '2660', '39'),
(1722, 'CEA', '2882', '2753', '12'),
(1723, 'OLIVERAS', '2879', '2952', '12'),
(1724, 'UTRILLA', '2878', '2867', '43'),
(1725, 'GAVIRA', '2877', '2766', '22'),
(1726, 'FANDI?O', '2877', '2663', '20'),
(1727, 'DAVID', '2877', '1668', '19'),
(1728, 'BATALLA', '2873', '2685', '35'),
(1729, 'ESPI', '2871', '2689', '24'),
(1730, 'MONTSERRAT', '2870', '2892', '15'),
(1731, 'LAINEZ', '2870', '2647', '15'),
(1732, 'MUNUERA', '2869', '2895', '7'),
(1733, 'MORANT', '2869', '2784', '39'),
(1734, 'MALLO', '2867', '2868', '37'),
(1735, 'GOMARIZ', '2866', '2775', '33'),
(1736, 'ILLAN', '2865', '2841', '19'),
(1737, 'PINTOS', '2865', '2779', '24'),
(1738, 'CA?ELLAS', '2863', '2903', '34'),
(1739, 'LARIOS', '2860', '3083', '13'),
(1740, 'BOADA', '2858', '2653', '24'),
(1741, 'DIAS', '2858', '2603', '17'),
(1742, 'YU', '2858', '245', '9'),
(1743, 'VINUESA', '2857', '2882', '45'),
(1744, 'CORREDOR', '2856', '2684', '46'),
(1745, 'BELENGUER', '2855', '2833', '28'),
(1746, 'ARREDONDO', '2851', '2656', '37'),
(1747, 'SOW', '2851', '549', '161'),
(1748, 'ORIHUELA', '2846', '2891', '13'),
(1749, 'SARR', '2846', '486', '82'),
(1750, 'CLAVERIA', '2844', '2986', '146'),
(1751, 'ALEJO', '2840', '2858', '14'),
(1752, 'CARRASCAL', '2839', '2773', '39'),
(1753, 'CONSTANTIN', '2838', '288', '14'),
(1754, 'CUELLO', '2837', '2826', '26'),
(1755, 'RICART', '2837', '2709', '16'),
(1756, 'JONES', '2836', '575', '6'),
(1757, 'IVARS', '2835', '2833', '144'),
(1758, 'ROURA', '2835', '2808', '21'),
(1759, 'CANOSA', '2834', '2918', '97'),
(1760, 'ETXEBARRIA', '2834', '2399', '77'),
(1761, 'ALBARRACIN', '2831', '2853', '27'),
(1762, 'MAGDALENO', '2829', '2902', '17'),
(1763, 'MAYORDOMO', '2829', '2701', '47'),
(1764, 'VILALTA', '2828', '2819', '22'),
(1765, 'FABREGAS', '2827', '3019', '..'),
(1766, 'PIERA', '2827', '2897', '10'),
(1767, 'BOCANEGRA', '2827', '2870', '15'),
(1768, 'GUAMAN', '2827', '2760', '120'),
(1769, 'PUEBLA', '2826', '2709', '11'),
(1770, 'URIA', '2825', '2816', '40'),
(1771, 'ESCOLAR', '2825', '2686', '24'),
(1772, 'ORTIN', '2822', '2531', '17'),
(1773, 'CREMADES', '2820', '2413', '30'),
(1774, 'MARCHANTE', '2819', '2928', '30'),
(1775, 'BOHORQUEZ', '2818', '2830', '14'),
(1776, 'CANTARERO', '2816', '2831', '37'),
(1777, 'LABORDA', '2816', '2776', '10'),
(1778, 'PONT', '2815', '2546', '8'),
(1779, 'AGUSTIN', '2814', '2833', '22'),
(1780, 'STAN', '2813', '234', '18'),
(1781, 'JOVE', '2812', '2751', '43'),
(1782, 'ILLESCAS', '2812', '2700', '..'),
(1783, 'CASTELLA', '2811', '2618', '21'),
(1784, 'TEIJEIRO', '2810', '2933', '30'),
(1785, 'LASHERAS', '2809', '2854', '9'),
(1786, 'LECHUGA', '2809', '2803', '24'),
(1787, 'MUELA', '2807', '3073', '12'),
(1788, 'ESPINOLA', '2803', '2820', '37'),
(1789, 'BONILLO', '2803', '2681', '22'),
(1790, 'TRUEBA', '2800', '2806', '22'),
(1791, 'BENEDICTO', '2799', '2790', '12'),
(1792, 'NAVA', '2795', '2692', '20'),
(1793, 'XIA', '2795', '238', '..'),
(1794, 'ANTONIO', '2794', '2560', '13'),
(1795, 'JUSTICIA', '2793', '2832', '75'),
(1796, 'BRUNO', '2788', '2537', '76'),
(1797, 'SALVADO', '2784', '2718', '27'),
(1798, 'PALACIN', '2783', '2921', '26'),
(1799, 'PADIN', '2783', '2791', '48'),
(1800, 'BOLUDA', '2782', '2794', '40'),
(1801, 'POPESCU', '2782', '275', '36'),
(1802, 'JUNQUERA', '2778', '2770', '20'),
(1803, 'TINOCO', '2778', '2697', '30'),
(1804, 'MULA', '2777', '2781', '..'),
(1805, 'ESCALERA', '2777', '2696', '15'),
(1806, 'ELENA', '2775', '2800', '31'),
(1807, 'ADELL', '2775', '2618', '29'),
(1808, 'FOLCH', '2774', '2779', '31'),
(1809, 'PALLAS', '2773', '2593', '26'),
(1810, 'CISSE', '2771', '502', '100'),
(1811, 'CUADRA', '2770', '2795', '36'),
(1812, 'HORTELANO', '2769', '2772', '42'),
(1813, 'GREGORI', '2769', '2665', '34'),
(1814, 'ALMODOVAR', '2769', '2623', '20'),
(1815, 'INSUA', '2766', '2811', '91'),
(1816, 'CERON', '2766', '2541', '21'),
(1817, 'CACHO', '2764', '3027', '72'),
(1818, 'RUBIALES', '2764', '2775', '22'),
(1819, 'MAMANI', '2763', '3262', '122'),
(1820, 'PALENZUELA', '2762', '2862', '33'),
(1821, 'ARGUELLO', '2758', '2727', '35'),
(1822, 'VILAPLANA', '2756', '2558', '67'),
(1823, 'GUEDES', '2755', '2913', '142'),
(1824, 'DEL ROSARIO', '2753', '2827', '33'),
(1825, 'TEROL', '2750', '2630', '31'),
(1826, 'DOBLAS', '2746', '2718', '31'),
(1827, 'PE?ARANDA', '2745', '2741', '39'),
(1828, 'BOUZA', '2744', '2886', '30'),
(1829, 'AHMAD', '2743', '264', '21'),
(1830, 'ADROVER', '2742', '2665', '143'),
(1831, 'MARZO', '2741', '2699', '30'),
(1832, 'DONCEL', '2740', '2927', '23'),
(1833, 'DE LOS RIOS', '2740', '2720', '6'),
(1834, 'FORNES', '2735', '2796', '39'),
(1835, 'LLOBET', '2732', '2715', '19'),
(1836, 'NOGUES', '2732', '2699', '15'),
(1837, 'GOMILA', '2729', '2833', '48'),
(1838, 'MAGA?A', '2727', '2738', '10'),
(1839, 'ESTRELLA', '2725', '2568', '33'),
(1840, 'ARMERO', '2724', '2695', '19'),
(1841, 'AUGUSTO', '2724', '2021', '90'),
(1842, 'BUSTILLO', '2723', '2687', '16'),
(1843, 'MORAGA', '2720', '2706', '13'),
(1844, 'SARRIA', '2720', '2653', '10'),
(1845, 'CAPEL', '2719', '2667', '45'),
(1846, 'SUERO', '2717', '3069', '58'),
(1847, 'ARNEDO', '2716', '2894', '43'),
(1848, 'CAVERO', '2714', '2492', '17'),
(1849, 'ELORZA', '2713', '2799', '23'),
(1850, 'GUAL', '2712', '2704', '23'),
(1851, 'O?ATE', '2708', '2681', '6'),
(1852, 'SANTACRUZ', '2701', '2834', '26'),
(1853, 'CAMARGO', '2700', '2611', '22'),
(1854, 'ARREBOLA', '2699', '2731', '32'),
(1855, 'COROMINAS', '2697', '2603', '6'),
(1856, 'DE SOUZA', '2696', '3310', '49'),
(1857, 'CALVI?O', '2695', '2612', '19'),
(1858, 'VILLALTA', '2692', '2651', '30'),
(1859, 'DIARRA', '2690', '342', '45'),
(1860, 'ALDEA', '2687', '2186', '15'),
(1861, 'MONSERRAT', '2676', '2474', '31'),
(1862, 'LAMA', '2667', '2620', '28'),
(1863, 'ORGAZ', '2666', '2683', '61'),
(1864, 'STOICA', '2666', '236', '16'),
(1865, 'ASTORGA', '2665', '2381', '18'),
(1866, 'MENACHO', '2664', '2731', '26'),
(1867, 'GALA', '2664', '2721', '27'),
(1868, 'ABARCA', '2663', '2524', '24'),
(1869, 'RIESCO', '2661', '2436', '43'),
(1870, 'MIHAI', '2660', '218', '15'),
(1871, 'OVEJERO', '2659', '2851', '26'),
(1872, 'FARI?AS', '2659', '2696', '26'),
(1873, 'GAONA', '2659', '2479', '38'),
(1874, 'PRESA', '2659', '2294', '32'),
(1875, 'ZAPICO', '2658', '2652', '30'),
(1876, 'CARAZO', '2656', '2602', '53'),
(1877, 'MOLINS', '2656', '2553', '6'),
(1878, 'GORDON', '2656', '2361', '21'),
(1879, 'RISCO', '2649', '2673', '29'),
(1880, 'MONSALVE', '2648', '2616', '23'),
(1881, 'BARBER', '2647', '2385', '17'),
(1882, 'FALCO', '2646', '2557', '14'),
(1883, 'SALOM', '2645', '2511', '9'),
(1884, 'CASTELO', '2645', '2494', '10'),
(1885, 'RUBIA', '2639', '2672', '25'),
(1886, 'PA?OS', '2639', '2523', '23'),
(1887, 'QUIROZ', '2637', '2718', '17'),
(1888, 'JUEZ', '2636', '2654', '89'),
(1889, 'VIGIL', '2633', '2709', '37'),
(1890, 'ELIZALDE', '2633', '2569', '75'),
(1891, 'VASCO', '2633', '2369', '17'),
(1892, 'ARCO', '2630', '2557', '36'),
(1893, 'PLATERO', '2630', '2530', '13'),
(1894, 'CRESPI', '2630', '2462', '85'),
(1895, 'OLIVAS', '2628', '2349', '32'),
(1896, 'MARFIL', '2626', '2736', '17'),
(1897, 'CARCELES', '2626', '2379', '8'),
(1898, 'CAMPUZANO', '2625', '2427', '19'),
(1899, 'GAYA', '2623', '2385', '42'),
(1900, 'VASILE', '2623', '236', '12'),
(1901, 'BRICE?O', '2621', '2589', '29'),
(1902, 'CALLEJON', '2621', '2527', '21'),
(1903, 'MELCHOR', '2617', '2777', '15'),
(1904, 'MESTRES', '2614', '2579', '9'),
(1905, 'ARI?O', '2608', '2747', '36'),
(1906, 'GHEORGHE', '2605', '218', '10'),
(1907, 'AVENDA?O', '2604', '2432', '24'),
(1908, 'GRANELL', '2604', '2421', '14'),
(1909, 'SANTAELLA', '2603', '2672', '13'),
(1910, 'TARIN', '2603', '2527', '46'),
(1911, 'SEBASTIA', '2602', '2578', '26'),
(1912, 'LLAMAZARES', '2602', '2517', '74'),
(1913, 'ALLENDE', '2601', '2519', '24'),
(1914, 'VILLAREJO', '2600', '2780', '37'),
(1915, 'POYATOS', '2600', '2511', '27'),
(1916, 'CA?O', '2599', '2415', '49'),
(1917, 'NOVAS', '2595', '2800', '37'),
(1918, 'ALDANA', '2595', '2582', '20'),
(1919, 'CHAVARRIA', '2595', '2517', '42'),
(1920, 'MALO', '2594', '2594', '16'),
(1921, 'LIGERO', '2592', '2668', '12'),
(1922, 'ADRIAN', '2592', '2637', '15'),
(1923, 'SAIDI', '2588', '857', '77'),
(1924, 'CORREDERA', '2586', '2602', '18'),
(1925, 'GUO', '2586', '194', '7'),
(1926, 'BATALLER', '2582', '2548', '39'),
(1927, 'RIBA', '2578', '2408', '9'),
(1928, 'POL', '2577', '2481', '17'),
(1929, 'ODRIOZOLA', '2577', '2456', '33'),
(1930, 'TEIXIDO', '2577', '2272', '22'),
(1931, 'SILLERO', '2576', '2701', '46'),
(1932, 'VICTORIA', '2576', '2594', '16'),
(1933, 'BEL', '2574', '2474', '29'),
(1934, 'SANTANDER', '2572', '2670', '36'),
(1935, 'ARRIAGA', '2570', '2566', '13'),
(1936, 'ARMENDARIZ', '2567', '2608', '17'),
(1937, 'COLORADO', '2565', '2734', '10'),
(1938, 'PICHARDO', '2563', '2551', '42'),
(1939, 'EZQUERRA', '2561', '2681', '51'),
(1940, 'CABALEIRO', '2558', '2479', '71'),
(1941, 'TORRENS', '2557', '2434', '9'),
(1942, 'FEITO', '2550', '2702', '78'),
(1943, 'OLIVE', '2549', '2538', '26'),
(1944, 'CALVET', '2549', '2479', '9'),
(1945, 'CLAROS', '2547', '2678', '21'),
(1946, 'DOVAL', '2547', '2556', '20'),
(1947, 'DOPICO', '2547', '2197', '37'),
(1948, 'LIMON', '2546', '2654', '31'),
(1949, 'PEDREIRA', '2546', '2581', '30'),
(1950, 'MANCILLA', '2546', '2578', '24'),
(1951, 'SALGUEIRO', '2545', '2673', '21'),
(1952, 'SUREDA', '2543', '2679', '32'),
(1953, 'CAVA', '2542', '2348', '62'),
(1954, 'CHENG', '2542', '250', '14'),
(1955, 'ROJANO', '2540', '2600', '14'),
(1956, 'SESMA', '2536', '2161', '27'),
(1957, 'DOMENE', '2535', '2492', '67'),
(1958, 'PIRES', '2529', '2313', '33'),
(1959, 'CHINEA', '2525', '2360', '223'),
(1960, 'COLAS', '2523', '2256', '16'),
(1961, 'VILLARROYA', '2522', '2498', '21'),
(1962, 'BETHENCOURT', '2521', '2447', '45'),
(1963, 'PERNIA', '2520', '2611', '44'),
(1964, 'COMINO', '2519', '2581', '24'),
(1965, 'SANGUINO', '2519', '2437', '21'),
(1966, 'CARA', '2518', '2373', '39'),
(1967, 'HUMANES', '2517', '2505', '22'),
(1968, 'GARRIGOS', '2516', '2369', '15'),
(1969, 'MONTANER', '2516', '2361', '20'),
(1970, 'MOLTO', '2515', '2485', '10'),
(1971, 'CORTEZ', '2515', '2353', '38'),
(1972, 'GODINO', '2513', '2478', '7'),
(1973, 'CARRIL', '2510', '2668', '28'),
(1974, 'OLALLA', '2507', '2675', '41'),
(1975, 'CAMARASA', '2506', '2351', '20'),
(1976, 'PIRIS', '2504', '2477', '49'),
(1977, 'SOARES', '2497', '2210', '17'),
(1978, 'ARTOLA', '2496', '2667', '32'),
(1979, 'VALENCIANO', '2493', '2321', '16'),
(1980, 'FLEITAS', '2492', '2421', '28'),
(1981, 'ISLA', '2491', '2328', '22'),
(1982, 'LEBRON', '2489', '2481', '24'),
(1983, 'RUFO', '2488', '2614', '30'),
(1984, 'SALHI', '2487', '718', '88'),
(1985, 'VIVAR', '2483', '2386', '18'),
(1986, 'CUBILLO', '2479', '2509', '15'),
(1987, 'SANJURJO', '2479', '2418', '15'),
(1988, 'GIBERT', '2479', '2297', '10'),
(1989, 'MADARIAGA', '2478', '2470', '17'),
(1990, 'BAILON', '2478', '2381', '36'),
(1991, 'EL IDRISSI', '2478', '1071', '94'),
(1992, 'HERRADOR', '2476', '2461', '16'),
(1993, 'MATEI', '2475', '228', '26'),
(1994, 'TENDERO', '2474', '2430', '16'),
(1995, 'MOZO', '2474', '2245', '29'),
(1996, 'GAMIZ', '2473', '2568', '33'),
(1997, 'PARES', '2472', '2266', '12'),
(1998, 'DEL AGUILA', '2471', '2465', '26'),
(1999, 'ARRIZABALAGA', '2469', '2449', '19'),
(2000, 'PERNAS', '2469', '2360', '25'),
(2001, 'GON?ALVES', '2468', '2080', '45'),
(2002, 'MI?ANO', '2467', '2595', '41'),
(2003, 'RIZO', '2467', '2342', '10'),
(2004, 'MANRESA', '2465', '2551', '37'),
(2005, 'CAPITAN', '2465', '2340', '35'),
(2006, 'ZAPATERO', '2463', '2473', '12'),
(2007, 'BUZON', '2462', '2647', '21'),
(2008, 'ESTRUCH', '2460', '2555', '77'),
(2009, 'BA?ON', '2460', '2261', '11'),
(2010, 'ARENCIBIA', '2458', '2136', '44'),
(2011, 'EL MOUSSAOUI', '2452', '880', '171'),
(2012, 'DUAL', '2451', '2542', '250'),
(2013, 'URREA', '2451', '2462', '21'),
(2014, 'PARIENTE', '2451', '2329', '25'),
(2015, 'MONTA?A', '2444', '2731', '23'),
(2016, 'MANCHON', '2443', '2445', '28'),
(2017, 'BENET', '2443', '2428', '..'),
(2018, 'LORITE', '2435', '2508', '26'),
(2019, 'LLABRES', '2433', '2311', '63'),
(2020, 'SAUCEDO', '2432', '2628', '20'),
(2021, 'EZQUERRO', '2431', '2316', '262'),
(2022, 'PALMER', '2430', '1992', '23'),
(2023, 'CABANES', '2428', '2184', '18'),
(2024, 'LOMAS', '2427', '2418', '46'),
(2025, 'GARIJO', '2427', '2358', '18'),
(2026, 'MERLO', '2427', '2287', '10'),
(2027, 'ESQUINAS', '2426', '2372', '21'),
(2028, 'MONTEJO', '2426', '2193', '9'),
(2029, 'DOLZ', '2425', '2235', '8'),
(2030, 'JAUME', '2423', '2295', '27'),
(2031, 'GALLART', '2422', '2401', '15'),
(2032, 'BAH', '2421', '643', '315'),
(2033, 'ZHAO', '2421', '165', '..'),
(2034, 'CANCELA', '2420', '2396', '48'),
(2035, 'BA', '2420', '486', '58'),
(2036, 'OLLE', '2419', '2327', '15'),
(2037, 'GAY', '2417', '2594', '29'),
(2038, 'BARQUIN', '2412', '2243', '30'),
(2039, 'FORTUNY', '2411', '2351', '7'),
(2040, 'VILLALONGA', '2410', '2460', '28'),
(2041, 'ESPINAL', '2409', '2441', '59'),
(2042, 'MORATALLA', '2409', '2384', '31'),
(2043, 'MAYOL', '2405', '2288', '36'),
(2044, 'LOIS', '2405', '2129', '15'),
(2045, 'BLESA', '2400', '2301', '28'),
(2046, 'VILLEN', '2399', '2216', '29'),
(2047, 'RECUERO', '2397', '2472', '27'),
(2048, 'MAURI', '2397', '2307', '..'),
(2049, 'LAGARES', '2395', '2470', '21'),
(2050, 'ESQUIVEL', '2395', '2171', '11'),
(2051, 'BORRALLO', '2394', '2321', '17'),
(2052, 'OLAYA', '2394', '2269', '7'),
(2053, 'GEORGIEVA', '2394', '1388', '134'),
(2054, 'SALVA', '2393', '2431', '18'),
(2055, 'EL AMRANI', '2393', '864', '90'),
(2056, 'SAN EMETERIO', '2390', '2340', '13'),
(2057, 'GEORGIEV', '2388', '1220', '142'),
(2058, 'JOSE', '2386', '2342', '19'),
(2059, 'DEL ALAMO', '2382', '2564', '14'),
(2060, 'DE PRADO', '2382', '2307', '26'),
(2061, 'ALTAMIRANO', '2380', '2365', '21'),
(2062, 'BERNA', '2380', '2289', '86'),
(2063, 'ORTI', '2379', '2391', '17'),
(2064, 'NAVAJAS', '2378', '2379', '23'),
(2065, 'VERGES', '2378', '2241', '9'),
(2066, 'NIANG', '2376', '501', '85'),
(2067, 'ROMA', '2375', '2423', '..'),
(2068, 'IGUAL', '2374', '2423', '19'),
(2069, 'GRAS', '2374', '2365', '10'),
(2070, 'DE LA PAZ', '2371', '2408', '57'),
(2071, 'MATESANZ', '2365', '2263', '27'),
(2072, 'VIEDMA', '2363', '2434', '23'),
(2073, 'ARQUES', '2363', '2339', '14'),
(2074, 'MANCHADO', '2361', '2436', '25'),
(2075, 'BENJUMEA', '2361', '2384', '32'),
(2076, 'BRU', '2361', '2267', '26'),
(2077, 'BARAJAS', '2358', '2620', '20'),
(2078, 'LARGO', '2358', '2241', '20'),
(2079, 'COUSO', '2357', '2214', '27'),
(2080, 'KUMAR', '2357', '113', '41'),
(2081, 'ALMENARA', '2356', '2667', '21'),
(2082, 'RIA?O', '2354', '2255', '46'),
(2083, 'BELLVER', '2353', '2182', '18'),
(2084, 'PLANELLS', '2351', '2300', '51'),
(2085, 'BRIZ', '2350', '2376', '37'),
(2086, 'CARNICERO', '2348', '2213', '..'),
(2087, 'FERIA', '2347', '2502', '45'),
(2088, 'ALAMEDA', '2347', '2317', '14'),
(2089, 'UGALDE', '2345', '2336', '20'),
(2090, 'ANDREO', '2343', '2225', '72'),
(2091, 'VIZUETE', '2342', '2287', '44'),
(2092, 'DE FRANCISCO', '2342', '1889', '..'),
(2093, 'CAPO', '2338', '2198', '32'),
(2094, 'SANTISTEBAN', '2336', '2157', '12'),
(2095, 'BELINCHON', '2334', '2391', '54'),
(2096, 'VIVANCO', '2333', '2246', '41'),
(2097, 'MENOR', '2332', '2382', '46'),
(2098, 'ZAYAS', '2331', '2325', '34'),
(2099, 'FILGUEIRA', '2331', '2182', '10'),
(2100, 'HE', '2331', '124', '..'),
(2101, 'NUEZ', '2330', '2324', '22'),
(2102, 'SARRION', '2329', '2468', '20'),
(2103, 'WILLIAMS', '2329', '526', '16'),
(2104, 'BERMUDO', '2325', '2318', '12'),
(2105, 'MARA?ON', '2324', '2099', '39'),
(2106, 'RAVELO', '2323', '2151', '38'),
(2107, 'CASELLAS', '2322', '2229', '11'),
(2108, 'IRIGOYEN', '2321', '2461', '20'),
(2109, 'AMATE', '2319', '2455', '11'),
(2110, 'ARDILA', '2318', '2552', '27'),
(2111, 'DE LA PUENTE', '2318', '1945', '14'),
(2112, 'BETANCOURT', '2316', '2313', '18'),
(2113, 'AGUILO', '2315', '2154', '35'),
(2114, 'GOIKOETXEA', '2312', '1708', '28'),
(2115, 'GARRO', '2309', '2503', '37'),
(2116, 'ALEJANDRE', '2308', '2150', '30'),
(2117, 'JARQUE', '2307', '2379', '25'),
(2118, 'FRESNO', '2306', '2305', '41'),
(2119, 'MINGORANCE', '2304', '2340', '38'),
(2120, 'LAGOS', '2304', '2199', '26'),
(2121, 'ISERN', '2304', '2022', '7'),
(2122, 'MOHEDANO', '2302', '2331', '39'),
(2123, 'OSES', '2301', '2282', '25'),
(2124, 'ALTUNA', '2299', '2150', '14'),
(2125, 'RUSU', '2299', '224', '27'),
(2126, 'BERZOSA', '2294', '2184', '11'),
(2127, 'BIELSA', '2292', '2316', '8'),
(2128, 'PAYAN', '2291', '2324', '29'),
(2129, 'QUERALT', '2291', '2266', '21'),
(2130, 'CERRILLO', '2289', '2298', '20'),
(2131, 'MASCARO', '2289', '2154', '25'),
(2132, 'GAMBIN', '2288', '2372', '21'),
(2133, 'CHUECA', '2288', '2248', '51'),
(2134, 'CARBAJAL', '2286', '2479', '18'),
(2135, 'MI?ARRO', '2286', '2125', '14'),
(2136, 'ZAZO', '2283', '2336', '39'),
(2137, 'FRUCTUOSO', '2282', '2230', '9'),
(2138, 'OLIVAN', '2279', '2317', '16'),
(2139, 'DOBLADO', '2279', '2149', '8'),
(2140, 'LACALLE', '2272', '2516', '50'),
(2141, 'ANGLADA', '2270', '2028', '21'),
(2142, 'LLERA', '2269', '2344', '28'),
(2143, 'LEZCANO', '2269', '2186', '18'),
(2144, 'DONATE', '2268', '2281', '44'),
(2145, 'GIRONES', '2267', '2234', '23'),
(2146, 'NAHARRO', '2267', '2192', '21'),
(2147, 'BORONAT', '2265', '2171', '13'),
(2148, 'VECINO', '2264', '2357', '22'),
(2149, 'OLMEDA', '2263', '1972', '62'),
(2150, 'MANUEL', '2261', '2343', '12'),
(2151, 'TRENADO', '2260', '2370', '14'),
(2152, 'PONTE', '2258', '2236', '6'),
(2153, 'BONO', '2258', '2181', '21'),
(2154, 'AGIRRE', '2258', '1859', '24'),
(2155, 'COMA', '2257', '2286', '17'),
(2156, 'GABRIEL', '2255', '2287', '10'),
(2157, 'PALAO', '2254', '2144', '45'),
(2158, 'MONCAYO', '2252', '2245', '18'),
(2159, 'LOAIZA', '2251', '2215', '36'),
(2160, 'ROCHE', '2251', '2124', '15'),
(2161, 'BARBERAN', '2248', '2395', '12'),
(2162, 'PADIAL', '2248', '2167', '21'),
(2163, 'BELLES', '2247', '2250', '80'),
(2164, 'CASTA?ON', '2246', '2293', '43'),
(2165, 'ITURBE', '2243', '2132', '..'),
(2166, 'VILELA', '2242', '2217', '13'),
(2167, 'ACEBES', '2242', '2106', '28'),
(2168, 'MORAGUES', '2239', '2129', '32'),
(2169, 'PRECIADO', '2235', '2154', '17'),
(2170, 'A?ON', '2234', '2304', '12'),
(2171, 'PARERA', '2234', '2099', '8'),
(2172, 'SEDE?O', '2233', '2299', '11'),
(2173, 'MEDEL', '2229', '2175', '23'),
(2174, 'TATO', '2227', '2120', '25'),
(2175, 'DE LUIS', '2225', '1503', '23'),
(2176, 'CARDOZO', '2224', '2094', '29'),
(2177, 'ARBELO', '2221', '2264', '37'),
(2178, 'YANEZ', '2220', '2127', '31'),
(2179, 'SANTIN', '2220', '2096', '37'),
(2180, 'CASTAN', '2217', '2263', '25'),
(2181, 'FERRANDIS', '2217', '2132', '14'),
(2182, 'ESCRIG', '2216', '2314', '89'),
(2183, 'PE?AFIEL', '2216', '2117', '17'),
(2184, 'MA?EZ', '2215', '2332', '19'),
(2185, 'BENEYTO', '2212', '2194', '17'),
(2186, 'MOROTE', '2212', '2110', '21'),
(2187, 'BUJAN', '2211', '2226', '22'),
(2188, 'GIRALT', '2209', '2155', '11'),
(2189, 'BACHILLER', '2208', '2349', '20'),
(2190, 'PI', '2208', '2015', '..'),
(2191, 'OLLERO', '2207', '2242', '6'),
(2192, 'BOTE', '2207', '2175', '28'),
(2193, 'TARAZONA', '2207', '2114', '30'),
(2194, 'LIZARRAGA', '2206', '1936', '47'),
(2195, 'PINAR', '2203', '2097', '21'),
(2196, 'MOREJON', '2201', '2265', '14'),
(2197, 'BLAYA', '2200', '2246', '9'),
(2198, 'PRIOR', '2199', '2172', '18'),
(2199, 'ALOS', '2197', '2196', '10'),
(2200, 'BALBUENA', '2195', '2134', '18'),
(2201, 'CORCHERO', '2194', '1989', '45'),
(2202, 'FIERRO', '2193', '2309', '17'),
(2203, 'PEDRE?O', '2191', '2201', '28'),
(2204, 'MIER', '2190', '2227', '51'),
(2205, 'SANDE', '2187', '2065', '29'),
(2206, 'NOGUERAS', '2186', '2020', '10'),
(2207, 'MASA', '2184', '2099', '35'),
(2208, 'CELDRAN', '2181', '2206', '6'),
(2209, 'CARTAGENA', '2180', '2139', '19'),
(2210, 'MORTE', '2180', '2103', '32'),
(2211, 'DIMITROV', '2180', '1217', '124'),
(2212, 'AMOEDO', '2179', '2237', '66'),
(2213, 'ARRIOLA', '2178', '2308', '29'),
(2214, 'CHICHARRO', '2178', '2070', '24'),
(2215, 'VICEDO', '2175', '2002', '20'),
(2216, 'SORO', '2174', '1999', '18'),
(2217, 'JUANES', '2173', '2038', '13'),
(2218, 'ARMESTO', '2171', '1975', '11'),
(2219, 'CECILIA', '2170', '2227', '22'),
(2220, 'PARDOS', '2170', '2025', '59'),
(2221, 'DIAGO', '2169', '2353', '13'),
(2222, 'SAN SEGUNDO', '2169', '2193', '14'),
(2223, 'MERO?O', '2168', '2154', '22'),
(2224, 'BARRO', '2168', '2054', '15'),
(2225, 'PAMIES', '2168', '2023', '13'),
(2226, 'FABREGA', '2167', '2261', '21'),
(2227, 'LAZAR', '2167', '258', '14'),
(2228, 'SAHUQUILLO', '2166', '2068', '61'),
(2229, 'ATENCIA', '2164', '2137', '9'),
(2230, 'NAJERA', '2164', '2117', '7'),
(2231, 'FIGUEREDO', '2164', '2107', '24'),
(2232, 'BANEGAS', '2163', '2092', '50'),
(2233, 'TAHIRI', '2160', '789', '40'),
(2234, 'SA?UDO', '2159', '2242', '14'),
(2235, 'TORRENTS', '2158', '2106', '..'),
(2236, 'DOS ANJOS', '2158', '1820', '203'),
(2237, 'DIMITROVA', '2158', '1289', '94'),
(2238, 'GUITART', '2157', '2231', '..'),
(2239, 'MOLES', '2155', '2280', '44'),
(2240, 'AIZPURUA', '2155', '1981', '30'),
(2241, 'BROWN', '2155', '404', '5'),
(2242, 'MOURI?O', '2154', '2065', '40'),
(2243, 'BECERRIL', '2154', '2050', '23'),
(2244, 'CIOBANU', '2152', '191', '26'),
(2245, 'SERBAN', '2152', '186', '17'),
(2246, 'LAHUERTA', '2151', '2133', '13'),
(2247, 'MEDEROS', '2148', '2099', '15'),
(2248, 'MONTEIRO', '2147', '2073', '38'),
(2249, 'THOMAS', '2147', '957', '..'),
(2250, 'SAYAGO', '2146', '2286', '19'),
(2251, 'HUERGA', '2146', '2024', '75'),
(2252, 'CHAO', '2144', '2082', '22'),
(2253, 'SOLLA', '2142', '2246', '22'),
(2254, 'ZUBIZARRETA', '2142', '2223', '12'),
(2255, 'MAZON', '2142', '2093', '15'),
(2256, 'ARMADA', '2140', '2093', '17'),
(2257, 'FAUS', '2140', '2012', '40'),
(2258, 'LEO', '2140', '1985', '37'),
(2259, 'MECA', '2140', '1980', '23'),
(2260, 'ALBERTO', '2139', '2110', '8'),
(2261, 'GORRIZ', '2138', '2115', '9'),
(2262, 'NUEVO', '2137', '1866', '41'),
(2263, 'YESTE', '2136', '2029', '10'),
(2264, 'ILIE', '2135', '163', '9'),
(2265, 'FORES', '2134', '2104', '6'),
(2266, 'DE ARRIBA', '2134', '1890', '11'),
(2267, 'GRAGERA', '2133', '2144', '21'),
(2268, 'BERGES', '2132', '2271', '5'),
(2269, 'QUEZADA', '2130', '2181', '68'),
(2270, 'DE VEGA', '2130', '2076', '23'),
(2271, 'CAMBRA', '2130', '2066', '30'),
(2272, 'FUMERO', '2130', '1983', '108'),
(2273, 'HASSAN', '2126', '765', '10'),
(2274, 'MUI?O', '2125', '2070', '30'),
(2275, 'FORMOSO', '2121', '2073', '55'),
(2276, 'BURILLO', '2120', '2254', '21'),
(2277, 'CORZO', '2120', '2047', '18'),
(2278, 'RONDON', '2118', '2132', '18'),
(2279, 'CORREIA', '2117', '2033', '34'),
(2280, 'BALSERA', '2114', '2208', '33'),
(2281, 'FIGUEIRAS', '2113', '2053', '38'),
(2282, 'ROUCO', '2112', '2105', '16'),
(2283, 'ALBERCA', '2111', '2094', '14'),
(2284, 'LAPE?A', '2110', '2050', '34'),
(2285, 'MONASTERIO', '2109', '2175', '17'),
(2286, 'GAYOSO', '2109', '1831', '8'),
(2287, 'AVELLANEDA', '2104', '2207', '5'),
(2288, 'SOCORRO', '2101', '2223', '12'),
(2289, 'ABAL', '2101', '1886', '37'),
(2290, 'STEFAN', '2100', '214', '18'),
(2291, 'SANAHUJA', '2099', '1960', '29'),
(2292, 'TARRAGA', '2098', '1981', '15'),
(2293, 'POVEDANO', '2098', '1980', '5'),
(2294, 'GUELL', '2097', '2063', '8'),
(2295, 'ALBIOL', '2097', '1939', '50'),
(2296, 'LUCERO', '2097', '1780', '26'),
(2297, 'FAYOS', '2096', '2101', '16'),
(2298, 'BOTANA', '2096', '2031', '74'),
(2299, 'PAZO', '2096', '1955', '13'),
(2300, 'YEBRA', '2094', '2119', '35'),
(2301, 'FIOL', '2094', '2029', '15'),
(2302, 'MONTERDE', '2093', '2038', '18'),
(2303, 'CARVALHO', '2093', '1846', '12'),
(2304, 'DE VICENTE', '2091', '1185', '6'),
(2305, 'CORES', '2090', '2076', '43'),
(2306, 'BENALI', '2089', '701', '40'),
(2307, 'DIOUF', '2089', '400', '56'),
(2308, 'CASTRILLON', '2088', '2203', '36'),
(2309, 'CABANAS', '2088', '1956', '11'),
(2310, 'MUELAS', '2086', '2066', '13'),
(2311, 'TRAPERO', '2085', '2243', '20'),
(2312, 'RENEDO', '2085', '1994', '23'),
(2313, 'GARRE', '2083', '2109', '30'),
(2314, 'ORIA', '2082', '2099', '21'),
(2315, 'SELVA', '2080', '2204', '22'),
(2316, 'FORTEA', '2080', '1989', '13'),
(2317, 'DE GRACIA', '2077', '2183', '17'),
(2318, 'BASCU?ANA', '2077', '2016', '12'),
(2319, 'DE PABLOS', '2077', '1920', '6'),
(2320, 'OLANO', '2074', '2012', '21'),
(2321, 'PALOMERO', '2072', '2028', '10'),
(2322, 'ANTU?A', '2071', '2100', '39'),
(2323, 'VAQUERIZO', '2071', '1906', '35'),
(2324, 'EXTREMERA', '2070', '2266', '40'),
(2325, 'FORT', '2070', '2127', '7'),
(2326, 'ALIAS', '2069', '2105', '24'),
(2327, 'APARISI', '2067', '1890', '16'),
(2328, 'ABDESELAM', '2062', '2039', '87'),
(2329, 'LAZO', '2060', '2065', '16'),
(2330, 'NAYA', '2059', '1889', '11'),
(2331, 'MAGDALENA', '2058', '2086', '9'),
(2332, 'VINAGRE', '2057', '2313', '22'),
(2333, 'CEJAS', '2056', '2196', '33'),
(2334, 'ZURDO', '2056', '2089', '..'),
(2335, 'DO?A', '2055', '2266', '20'),
(2336, 'CINTAS', '2055', '2038', '17'),
(2337, 'ENCISO', '2055', '2035', '14'),
(2338, 'FABIAN', '2054', '2089', '15'),
(2339, 'CEVALLOS', '2054', '1984', '47'),
(2340, 'BIOSCA', '2054', '1891', '21'),
(2341, 'REGIDOR', '2053', '2078', '11'),
(2342, 'HAMED', '2052', '1721', '62'),
(2343, 'TAYLOR', '2052', '343', '..'),
(2344, 'TOURE', '2051', '332', '26'),
(2345, 'LLANES', '2049', '2028', '..'),
(2346, 'PENAS', '2049', '1975', '18'),
(2347, 'LORES', '2048', '2070', '23'),
(2348, 'ESCANDELL', '2046', '2037', '60'),
(2349, 'SOLDEVILA', '2044', '1878', '..'),
(2350, 'FORNER', '2043', '2022', '21'),
(2351, 'PANDO', '2042', '2049', '9'),
(2352, 'LOZA', '2040', '1957', '11'),
(2353, 'ESPADAS', '2039', '1919', '..'),
(2354, 'PAIS', '2038', '1950', '20'),
(2355, 'CABEZUELO', '2036', '1913', '21'),
(2356, 'ARTACHO', '2034', '2014', '32'),
(2357, 'MARUGAN', '2033', '2019', '55'),
(2358, 'COSANO', '2032', '1967', '22'),
(2359, 'PIQUE', '2030', '1932', '7'),
(2360, 'GERMAN', '2029', '1974', '12'),
(2361, 'HEREDERO', '2025', '1810', '7'),
(2362, 'SUBIRATS', '2022', '1953', '29'),
(2363, 'ARBOLEDA', '2021', '2014', '20'),
(2364, 'DE LA MATA', '2019', '1796', '5'),
(2365, 'MANEIRO', '2014', '2070', '41'),
(2366, 'ROSSI', '2014', '1203', '5'),
(2367, 'COLON', '2013', '1990', '24'),
(2368, 'ABBAS', '2013', '226', '14'),
(2369, 'BRUNET', '2010', '1968', '..'),
(2370, 'BRAGADO', '2010', '1903', '21'),
(2371, 'ESCODA', '2009', '1788', '20'),
(2372, 'PUJADAS', '2006', '1913', '5'),
(2373, 'VALLEJOS', '2003', '2065', '17'),
(2374, 'MINGO', '2003', '1800', '23'),
(2375, 'BALLESTERO', '2002', '1943', '36'),
(2376, 'FARRES', '2000', '1829', '15'),
(2377, 'ROGER', '1999', '1900', '7'),
(2378, 'BARRY', '1999', '479', '220'),
(2379, 'LENDINEZ', '1998', '1830', '18'),
(2380, 'SOJO', '1996', '1913', '47'),
(2381, 'FLOREA', '1994', '282', '18'),
(2382, 'PENALVA', '1993', '1885', '7'),
(2383, 'BEATO', '1992', '2085', '16'),
(2384, 'SANTANO', '1988', '2085', '22'),
(2385, 'QUIJANO', '1988', '2013', '10'),
(2386, 'CAPELLA', '1988', '1948', '14'),
(2387, 'FOFANA', '1988', '366', '94'),
(2388, 'ALGARRA', '1987', '1908', '24'),
(2389, 'RUIPEREZ', '1987', '1809', '8'),
(2390, 'GOYA', '1986', '1972', '54'),
(2391, 'PORCAR', '1985', '2106', '28'),
(2392, 'CADENA', '1985', '2090', '14'),
(2393, 'BOSQUE', '1985', '1845', '12'),
(2394, 'SOTOMAYOR', '1985', '1844', '5'),
(2395, 'BELLOSO', '1983', '2076', '9'),
(2396, 'VALLINA', '1982', '1958', '17'),
(2397, 'AMAR', '1980', '2200', '33'),
(2398, 'TABERNERO', '1980', '1910', '25'),
(2399, 'PE?ATE', '1979', '1883', '54'),
(2400, 'CA?AMERO', '1978', '1989', '19'),
(2401, 'RONDA', '1978', '1883', '20'),
(2402, 'BENLLOCH', '1978', '1822', '14'),
(2403, 'TELLERIA', '1977', '2031', '19'),
(2404, 'VILLARES', '1977', '2005', '19'),
(2405, 'REVERT', '1977', '1795', '22'),
(2406, 'TEJERINA', '1970', '1966', '10'),
(2407, 'SIGUENZA', '1970', '1946', '21'),
(2408, 'CALLES', '1969', '2147', '31'),
(2409, 'LUCIO', '1969', '1982', '6'),
(2410, 'ALMELA', '1968', '2129', '..'),
(2411, 'CARRIO', '1967', '2045', '20'),
(2412, 'VI?ALS', '1967', '2030', '11'),
(2413, 'BURGUE?O', '1967', '1740', '21'),
(2414, 'VALIDO', '1966', '1960', '49'),
(2415, 'NEGRO', '1965', '1840', '27'),
(2416, 'PUJANTE', '1965', '1806', '18'),
(2417, 'ALZATE', '1962', '2037', '23'),
(2418, 'VIEITES', '1962', '1755', '18'),
(2419, 'VELILLA', '1961', '1964', '..'),
(2420, 'BUIL', '1959', '2031', '19'),
(2421, 'PEDRO', '1958', '2099', '5'),
(2422, 'FERRERES', '1957', '1879', '21'),
(2423, 'TROYANO', '1956', '2059', '17'),
(2424, 'MONCHO', '1956', '1893', '35'),
(2425, 'RIGO', '1955', '1873', '98'),
(2426, 'RANDO', '1953', '1901', '29'),
(2427, 'ABDELKADER', '1953', '1570', '34'),
(2428, 'IMAZ', '1951', '1809', '9'),
(2429, 'PUCHADES', '1948', '1765', '15'),
(2430, 'HERRAN', '1945', '2011', '22'),
(2431, 'MUSTAFA', '1943', '836', '23'),
(2432, 'CABA?ERO', '1942', '2029', '26'),
(2433, 'DE LA RUBIA', '1942', '1850', '10'),
(2434, 'CIFRE', '1940', '1954', '38'),
(2435, 'BA?O', '1939', '1917', '18'),
(2436, 'REGUERO', '1937', '1899', '5'),
(2437, 'COLOMINA', '1937', '1829', '9'),
(2438, 'CABERO', '1937', '1780', '28'),
(2439, 'MASO', '1936', '1839', '7'),
(2440, 'MACARRO', '1934', '1943', '12'),
(2441, 'BA?ULS', '1934', '1919', '17'),
(2442, 'SOLANAS', '1930', '1950', '26'),
(2443, 'VA?O', '1929', '1860', '43'),
(2444, 'ZHAN', '1929', '121', '7'),
(2445, 'VALI?O', '1928', '1980', '19'),
(2446, 'ESCAMEZ', '1928', '1940', '10'),
(2447, 'FIGUEROLA', '1926', '1850', '7'),
(2448, 'ENCARNACION', '1924', '2195', '98'),
(2449, 'URANGA', '1924', '2132', '31'),
(2450, 'DOPAZO', '1923', '1947', '22'),
(2451, 'BARREIRA', '1923', '1823', '43'),
(2452, 'SERVERA', '1923', '1748', '32'),
(2453, 'OPREA', '1920', '186', '17'),
(2454, 'INGLES', '1919', '1930', '20'),
(2455, 'VILLARRUBIA', '1919', '1836', '14'),
(2456, 'CALVILLO', '1916', '1750', '9'),
(2457, 'LEE', '1916', '687', '40'),
(2458, 'CABEZON', '1915', '2013', '..'),
(2459, 'SENA', '1915', '1841', '32'),
(2460, 'BACA', '1914', '1931', '38'),
(2461, 'ROY', '1914', '1768', '17'),
(2462, 'PINILLOS', '1913', '1857', '26'),
(2463, 'GUINEA', '1912', '1717', '12'),
(2464, 'TAPIAS', '1910', '2004', '6'),
(2465, 'CALONGE', '1910', '1913', '11'),
(2466, 'VERDAGUER', '1910', '1890', '5'),
(2467, 'LANGA', '1910', '1879', '15'),
(2468, 'ANDUEZA', '1910', '1800', '9'),
(2469, 'MANCHE?O', '1909', '1852', '10'),
(2470, 'HUARTE', '1907', '1812', '32'),
(2471, 'RIESGO', '1906', '1789', '26'),
(2472, 'PARAMO', '1904', '1929', '10'),
(2473, 'MENCIA', '1904', '1917', '16'),
(2474, 'COBAS', '1904', '1838', '11'),
(2475, 'MARCHAL', '1903', '1866', '11'),
(2476, 'CANTALEJO', '1903', '1793', '13'),
(2477, 'CUMPLIDO', '1902', '1988', '7'),
(2478, 'MONTON', '1902', '1812', '9'),
(2479, 'MANZANERA', '1900', '1915', '13'),
(2480, 'BARRANTES', '1900', '1770', '15'),
(2481, 'DOCAMPO', '1899', '1823', '12'),
(2482, 'MASCARELL', '1898', '1995', '41'),
(2483, 'CASCO', '1898', '1984', '15'),
(2484, 'ORIVE', '1897', '1961', '6'),
(2485, 'CLARAMUNT', '1897', '1863', '15'),
(2486, 'LINDE', '1895', '1861', '46'),
(2487, 'BARREDO', '1894', '1841', '23'),
(2488, 'REPISO', '1893', '2029', '36'),
(2489, 'FERRON', '1892', '1827', '15'),
(2490, 'LIDON', '1891', '1922', '9'),
(2491, 'HENARES', '1891', '1885', '13'),
(2492, 'BADIOLA', '1891', '1713', '33'),
(2493, 'FERRAN', '1890', '1843', '..'),
(2494, 'COLOME', '1887', '1765', '17'),
(2495, 'ESLAVA', '1886', '2150', '30'),
(2496, 'SUEIRO', '1886', '1868', '23'),
(2497, 'MANCHA', '1885', '1922', '13'),
(2498, 'ARGUDO', '1883', '1918', '27'),
(2499, 'PEGUERO', '1883', '1681', '21'),
(2500, 'PEON', '1882', '1987', '23'),
(2501, 'GRANJA', '1882', '1891', '8'),
(2502, 'FIGUEIRA', '1882', '1715', '23'),
(2503, 'LAO', '1880', '1819', '33'),
(2504, 'BRA?A', '1879', '1974', '15'),
(2505, 'HORMIGO', '1879', '1648', '..'),
(2506, 'BETANCORT', '1878', '1998', '51'),
(2507, 'ARRIAZA', '1878', '1808', '12'),
(2508, 'ASTUDILLO', '1877', '1677', '16'),
(2509, 'BASTOS', '1876', '1922', '12'),
(2510, 'APONTE', '1876', '1921', '13'),
(2511, 'FARIAS', '1876', '1920', '25'),
(2512, 'MENDIOLA', '1875', '2047', '..'),
(2513, 'YUBERO', '1874', '1889', '20'),
(2514, 'MOMPO', '1874', '1801', '22'),
(2515, 'BAYARRI', '1874', '1720', '23'),
(2516, 'MUI?OS', '1872', '1874', '12'),
(2517, 'VAREA', '1872', '1857', '26'),
(2518, 'DE TORRES', '1872', '1854', '15'),
(2519, 'RAMALLO', '1871', '1715', '11'),
(2520, 'MASSO', '1870', '1704', '10'),
(2521, 'AGRA', '1868', '1767', '27'),
(2522, 'PI?ON', '1867', '1902', '32'),
(2523, 'LAMELA', '1865', '1970', '15'),
(2524, 'CARRAL', '1860', '1910', '31'),
(2525, 'NOVA', '1859', '1863', '72'),
(2526, 'GARDE', '1859', '1683', '19'),
(2527, 'ALEJANDRO', '1858', '1823', '15'),
(2528, 'GONZALVO', '1857', '1953', '11'),
(2529, 'ESPA?OL', '1857', '1713', '11'),
(2530, 'DACOSTA', '1857', '1539', '..'),
(2531, 'PEDROS', '1856', '1796', '14'),
(2532, 'RUPEREZ', '1855', '1758', '31'),
(2533, 'MANERO', '1854', '1904', '5'),
(2534, 'MAZO', '1853', '1841', '9'),
(2535, 'TORNE', '1853', '1780', '9'),
(2536, 'ANTA', '1853', '1767', '50'),
(2537, 'NIEVA', '1852', '1741', '12'),
(2538, 'CORROCHANO', '1851', '1958', '68'),
(2539, 'CELIS', '1850', '1747', '8'),
(2540, 'VILASECA', '1847', '1836', '21'),
(2541, 'PERAZA', '1846', '1694', '15'),
(2542, 'GUIU', '1845', '1785', '15'),
(2543, 'PAMPIN', '1844', '1785', '22'),
(2544, 'MUNTEANU', '1844', '174', '17'),
(2545, 'MO?INO', '1843', '1899', '12'),
(2546, 'FORCADA', '1843', '1834', '25'),
(2547, 'GRIMA', '1843', '1799', '26'),
(2548, 'CONSUEGRA', '1842', '1883', '6'),
(2549, 'LIZANA', '1842', '1791', '11'),
(2550, 'DE BENITO', '1842', '1471', '..'),
(2551, 'CADIZ', '1841', '1979', '47'),
(2552, 'MURCIANO', '1841', '1799', '16'),
(2553, 'SIDIBE', '1841', '237', '73'),
(2554, 'VELIZ', '1839', '1806', '21'),
(2555, 'BARBEITO', '1838', '1948', '54'),
(2556, 'VILELLA', '1838', '1603', '..'),
(2557, 'MAILLO', '1837', '1757', '10'),
(2558, 'NEGRETE', '1833', '1793', '6'),
(2559, 'TUDOR', '1833', '176', '14'),
(2560, 'LACRUZ', '1832', '1777', '13'),
(2561, 'PARGA', '1830', '1740', '5'),
(2562, 'BORT', '1829', '1770', '11'),
(2563, 'SERROUKH', '1829', '943', '260'),
(2564, 'PATO', '1828', '1977', '32'),
(2565, 'POMAR', '1828', '1759', '11'),
(2566, 'PLAZAS', '1827', '1778', '33'),
(2567, 'LOJO', '1826', '1794', '16'),
(2568, 'IRIONDO', '1824', '1763', '14'),
(2569, 'MARIMON', '1823', '1765', '5'),
(2570, 'CARRATALA', '1822', '1689', '..'),
(2571, 'FONTANET', '1821', '1777', '14'),
(2572, 'ESTELLES', '1821', '1705', '5'),
(2573, 'DEL ARCO', '1820', '1716', '12'),
(2574, 'FOLGADO', '1819', '1779', '..'),
(2575, 'VALDERAS', '1817', '1835', '21'),
(2576, 'BORDON', '1815', '1687', '38'),
(2577, 'ESPIGARES', '1814', '1933', '52'),
(2578, 'VI?UELA', '1812', '1622', '19'),
(2579, 'ESTUPI?AN', '1811', '1878', '23'),
(2580, 'SANDU', '1810', '161', '10'),
(2581, 'BENGOA', '1808', '1886', '15'),
(2582, 'PEREGRINA', '1806', '1836', '20'),
(2583, 'ZAPATER', '1804', '1770', '39'),
(2584, 'SABIO', '1803', '1868', '..'),
(2585, 'DAHMANI', '1803', '488', '73');
INSERT INTO `apellidos` (`id`, `apellido`, `ap1`, `ap2`, `total`) VALUES
(2586, 'CREUS', '1801', '1723', '5'),
(2587, 'BOLADO', '1801', '1652', '14'),
(2588, 'BEITIA', '1800', '1696', '19'),
(2589, 'RAGA', '1799', '1714', '17'),
(2590, 'PI?ERA', '1799', '1706', '34'),
(2591, 'TOURAY', '1798', '741', '264'),
(2592, 'PALOU', '1797', '1692', '6'),
(2593, 'ISIDRO', '1796', '1752', '21'),
(2594, 'COLINA', '1794', '1876', '28'),
(2595, 'CELADA', '1793', '1823', '30'),
(2596, 'SOCAS', '1790', '1834', '64'),
(2597, 'VELOSO', '1790', '1744', '17'),
(2598, 'CAZALLA', '1790', '1721', '30'),
(2599, 'MBAYE', '1789', '386', '43'),
(2600, 'LAZCANO', '1788', '1882', '21'),
(2601, 'DE TORO', '1787', '1705', '..'),
(2602, 'LACASA', '1786', '1760', '26'),
(2603, 'TASCON', '1785', '1785', '69'),
(2604, 'ADAM', '1785', '876', '11'),
(2605, 'ALBACETE', '1783', '1938', '10'),
(2606, 'ITURRALDE', '1782', '1750', '..'),
(2607, 'NACHER', '1781', '1758', '17'),
(2608, 'NUNES', '1781', '1467', '19'),
(2609, 'MULLER', '1781', '894', '5'),
(2610, 'NOVELLA', '1780', '1913', '9'),
(2611, 'LUPIA?EZ', '1780', '1640', '28'),
(2612, 'PIRIZ', '1779', '1815', '29'),
(2613, 'POYATO', '1779', '1747', '38'),
(2614, 'MELIA', '1778', '1862', '10'),
(2615, 'CLARES', '1778', '1565', '15'),
(2616, 'VIGARA', '1775', '1802', '15'),
(2617, 'GA?AN', '1774', '1794', '21'),
(2618, 'CALA', '1773', '1829', '13'),
(2619, 'LEMUS', '1773', '1754', '11'),
(2620, 'POZAS', '1773', '1669', '13'),
(2621, 'ION', '1773', '197', '7'),
(2622, 'CARLOS', '1772', '1918', '17'),
(2623, 'CARRIZO', '1772', '1677', '18'),
(2624, 'SINTES', '1771', '1657', '45'),
(2625, 'CASA?AS', '1770', '1812', '14'),
(2626, 'OGANDO', '1770', '1806', '47'),
(2627, 'MANTILLA', '1770', '1744', '..'),
(2628, 'JERONIMO', '1770', '1712', '24'),
(2629, 'MERCADAL', '1769', '1721', '16'),
(2630, 'MEZQUITA', '1768', '1771', '55'),
(2631, 'OCON', '1768', '1680', '24'),
(2632, 'DELICADO', '1767', '1590', '15'),
(2633, 'POCH', '1766', '1628', '..'),
(2634, 'BALCELLS', '1766', '1623', '12'),
(2635, 'VALERIO', '1765', '1635', '19'),
(2636, 'CIVERA', '1764', '1718', '16'),
(2637, 'MURGA', '1764', '1683', '..'),
(2638, 'JORQUERA', '1762', '1713', '7'),
(2639, 'DE MINGO', '1761', '1646', '21'),
(2640, 'CEREZUELA', '1760', '1687', '10'),
(2641, 'ALES', '1759', '1702', '25'),
(2642, 'MONDRAGON', '1756', '1701', '14'),
(2643, 'GOZALO', '1755', '1900', '26'),
(2644, 'FERRIZ', '1753', '1804', '6'),
(2645, 'RENTERO', '1753', '1772', '13'),
(2646, 'CABRE', '1752', '1523', '18'),
(2647, 'DE SANTIAGO', '1750', '1216', '..'),
(2648, 'QUI?ONERO', '1749', '1630', '6'),
(2649, 'CELAYA', '1749', '1548', '..'),
(2650, 'BEA', '1748', '1663', '16'),
(2651, 'CARCELLER', '1747', '1941', '14'),
(2652, 'ROSIQUE', '1747', '1830', '6'),
(2653, 'MOLINO', '1747', '1786', '6'),
(2654, 'PESCADOR', '1747', '1686', '15'),
(2655, 'HOYO', '1746', '1881', '10'),
(2656, 'PETROVA', '1743', '998', '68'),
(2657, 'ORENES', '1742', '1689', '7'),
(2658, 'EGA?A', '1741', '1696', '32'),
(2659, 'MORAIS', '1741', '1671', '21'),
(2660, 'ALAMINOS', '1740', '1619', '27'),
(2661, 'GASTON', '1739', '1719', '19'),
(2662, 'MANZANERO', '1737', '1817', '11'),
(2663, 'VALOR', '1737', '1787', '27'),
(2664, 'PEREYRA', '1737', '1263', '13'),
(2665, 'RAVENTOS', '1735', '1571', '29'),
(2666, 'RAJA', '1735', '1481', '43'),
(2667, 'RABANAL', '1734', '1690', '15'),
(2668, 'MASIA', '1734', '1643', '8'),
(2669, 'ABUIN', '1733', '1736', '27'),
(2670, 'MONFORTE', '1733', '1708', '20'),
(2671, 'URDIALES', '1731', '1608', '29'),
(2672, 'CORUJO', '1731', '1560', '22'),
(2673, 'MONLEON', '1729', '1803', '24'),
(2674, 'CULEBRAS', '1728', '1696', '8'),
(2675, 'RULL', '1728', '1631', '..'),
(2676, 'TALENS', '1728', '1582', '9'),
(2677, 'JANE', '1728', '1579', '7'),
(2678, 'SU?E', '1727', '1760', '30'),
(2679, 'ROBAINA', '1726', '1769', '45'),
(2680, 'TUBIO', '1725', '1731', '26'),
(2681, 'GARAU', '1725', '1704', '16'),
(2682, 'RECALDE', '1724', '1810', '28'),
(2683, 'CAMU?AS', '1723', '1754', '13'),
(2684, 'COLINO', '1721', '1575', '17'),
(2685, 'RODES', '1721', '1494', '..'),
(2686, 'TERRONES', '1718', '1941', '42'),
(2687, 'BERENGUEL', '1718', '1717', '33'),
(2688, 'DE LA MORENA', '1718', '1437', '39'),
(2689, 'EL OUAHABI', '1718', '653', '162'),
(2690, 'MURESAN', '1718', '193', '14'),
(2691, 'RASCON', '1717', '1518', '18'),
(2692, 'GUARDADO', '1716', '1834', '14'),
(2693, 'CARBALLIDO', '1716', '1729', '25'),
(2694, 'DINU', '1715', '140', '7'),
(2695, 'LUZON', '1714', '1773', '28'),
(2696, 'REMON', '1714', '1714', '28'),
(2697, 'MOSTEIRO', '1714', '1605', '35'),
(2698, 'COTS', '1713', '1685', '10'),
(2699, 'TRAVER', '1713', '1494', '34'),
(2700, 'FLORIT', '1711', '1897', '53'),
(2701, 'TU?ON', '1711', '1647', '16'),
(2702, 'MADRAZO', '1710', '1869', '20'),
(2703, 'SECK', '1710', '386', '32'),
(2704, 'TRIAS', '1709', '1557', '..'),
(2705, 'PETIT', '1709', '1449', '7'),
(2706, 'HONRUBIA', '1707', '1730', '18'),
(2707, 'SU?ER', '1706', '1719', '7'),
(2708, 'BLAY', '1706', '1515', '10'),
(2709, 'RECASENS', '1705', '1563', '23'),
(2710, 'FEMENIA', '1704', '1748', '12'),
(2711, 'BARNES', '1704', '1404', '7'),
(2712, 'DAOUDI', '1704', '505', '39'),
(2713, 'GAO', '1704', '221', '..'),
(2714, 'IRIBARREN', '1702', '1855', '30'),
(2715, 'PORTAS', '1702', '1765', '13'),
(2716, 'MUNAR', '1702', '1673', '50'),
(2717, 'CENTELLES', '1702', '1655', '10'),
(2718, 'OLAIZOLA', '1702', '1537', '10'),
(2719, 'LU', '1701', '193', '..'),
(2720, 'CESAR', '1700', '1683', '14'),
(2721, 'DE SANTOS', '1700', '1502', '5'),
(2722, 'MUDARRA', '1698', '1493', '21'),
(2723, 'BENEITEZ', '1696', '1703', '27'),
(2724, 'BALADO', '1696', '1611', '..'),
(2725, 'VILLARINO', '1696', '1520', '10'),
(2726, 'OLVERA', '1694', '1723', '23'),
(2727, 'CIDONCHA', '1694', '1643', '21'),
(2728, 'SERANTES', '1694', '1585', '15'),
(2729, 'CLAVER', '1693', '1614', '..'),
(2730, 'MOREY', '1693', '1588', '9'),
(2731, 'MORUNO', '1692', '1827', '22'),
(2732, 'MINAYA', '1692', '1581', '43'),
(2733, 'MORETA', '1691', '1647', '32'),
(2734, 'CANELA', '1691', '1606', '11'),
(2735, 'BALSALOBRE', '1691', '1566', '..'),
(2736, 'SORRIBES', '1691', '1540', '17'),
(2737, 'TOMA', '1689', '172', '10'),
(2738, 'JUNCAL', '1687', '1694', '21'),
(2739, 'PRIMO', '1687', '1692', '23'),
(2740, 'GATO', '1686', '1651', '25'),
(2741, 'MALLEN', '1686', '1578', '12'),
(2742, 'VILLAMOR', '1683', '1646', '7'),
(2743, 'AKHTAR', '1682', '1131', '24'),
(2744, 'CHOQUE', '1680', '1777', '40'),
(2745, 'TARRES', '1679', '1792', '25'),
(2746, 'CABA', '1678', '1815', '8'),
(2747, 'MIRET', '1678', '1640', '13'),
(2748, 'FUSTE', '1677', '1613', '..'),
(2749, 'URQUIJO', '1676', '1627', '9'),
(2750, 'LLOMPART', '1676', '1458', '20'),
(2751, 'BASTIDAS', '1675', '1822', '27'),
(2752, 'YEBENES', '1674', '1775', '25'),
(2753, 'ESPI?EIRA', '1674', '1668', '29'),
(2754, 'ACHA', '1673', '1629', '13'),
(2755, 'RIU', '1672', '1666', '7'),
(2756, 'ZIANI', '1672', '576', '41'),
(2757, 'JUSTINIANO', '1671', '1950', '46'),
(2758, 'BORRAJO', '1671', '1662', '13'),
(2759, 'VELO', '1670', '1762', '28'),
(2760, 'FENOLL', '1670', '1726', '9'),
(2761, 'VILLAFRANCA', '1670', '1665', '5'),
(2762, 'CASO', '1670', '1657', '7'),
(2763, 'BLEDA', '1670', '1623', '26'),
(2764, 'JOHNSON', '1670', '490', '18'),
(2765, 'LI?ARES', '1668', '1769', '32'),
(2766, 'TARRAGO', '1666', '1579', '8'),
(2767, 'CORCHADO', '1665', '1717', '35'),
(2768, 'ABAJO', '1664', '1488', '55'),
(2769, 'SUBIRANA', '1664', '1471', '7'),
(2770, 'MUJICA', '1663', '1568', '8'),
(2771, 'CABALLE', '1663', '1521', '6'),
(2772, 'ORTOLA', '1663', '1369', '28'),
(2773, 'CUERVA', '1662', '1579', '15'),
(2774, 'DEL PRADO', '1661', '1637', '32'),
(2775, 'MONTOLIU', '1659', '1520', '12'),
(2776, 'VILLACORTA', '1659', '1517', '9'),
(2777, 'BENGOECHEA', '1658', '1917', '10'),
(2778, 'VALLECILLO', '1658', '1677', '14'),
(2779, 'VARGA', '1657', '600', '20'),
(2780, 'LASSO', '1656', '1603', '8'),
(2781, 'CRISTEA', '1656', '135', '12'),
(2782, 'PISA', '1653', '1836', '87'),
(2783, 'VILLAGRASA', '1651', '1738', '16'),
(2784, 'TOBAR', '1651', '1708', '37'),
(2785, 'GANCEDO', '1651', '1570', '17'),
(2786, 'BANDERA', '1650', '1580', '13'),
(2787, 'AZCARATE', '1649', '1823', '11'),
(2788, 'ALAVA', '1649', '1632', '12'),
(2789, 'ORTEGO', '1648', '1622', '9'),
(2790, 'APARICI', '1648', '1554', '22'),
(2791, 'CASTI?EIRAS', '1647', '1717', '12'),
(2792, 'HORRILLO', '1646', '1816', '19'),
(2793, 'SOCIAS', '1646', '1689', '27'),
(2794, 'MOLDES', '1646', '1601', '32'),
(2795, 'CASQUERO', '1644', '1612', '34'),
(2796, 'BEDMAR', '1644', '1601', '8'),
(2797, 'PASTORIZA', '1644', '1599', '..'),
(2798, 'FONS', '1643', '1654', '11'),
(2799, 'PORTALES', '1643', '1516', '..'),
(2800, 'GAYO', '1642', '1792', '20'),
(2801, 'ZULUAGA', '1642', '1599', '24'),
(2802, 'MADERO', '1642', '1530', '23'),
(2803, 'PALOP', '1641', '1624', '16'),
(2804, 'O?A', '1640', '1819', '21'),
(2805, 'CALVETE', '1640', '1537', '6'),
(2806, 'MANTECON', '1639', '1597', '14'),
(2807, 'TORT', '1636', '1564', '..'),
(2808, 'CERVILLA', '1635', '1790', '18'),
(2809, 'ESTUDILLO', '1634', '1871', '13'),
(2810, 'MOROCHO', '1634', '1708', '54'),
(2811, 'GUIJO', '1633', '1768', '21'),
(2812, 'LARRINAGA', '1633', '1667', '10'),
(2813, 'PETROV', '1632', '879', '71'),
(2814, 'DAMIAN', '1631', '1116', '9'),
(2815, 'SAN PEDRO', '1630', '1846', '10'),
(2816, 'OBANDO', '1630', '1741', '43'),
(2817, 'VARON', '1630', '1629', '13'),
(2818, 'DE LA RIVA', '1630', '1429', '5'),
(2819, 'QUINTANS', '1629', '1603', '12'),
(2820, 'BARRIUSO', '1629', '1589', '28'),
(2821, 'ERAZO', '1628', '1491', '23'),
(2822, 'LODEIRO', '1627', '1623', '11'),
(2823, 'PORTOLES', '1627', '1587', '9'),
(2824, 'ROSERO', '1627', '1529', '19'),
(2825, 'RUIBAL', '1627', '1525', '14'),
(2826, 'DIAKITE', '1627', '186', '49'),
(2827, 'CARCELEN', '1626', '1634', '11'),
(2828, 'JUSTE', '1626', '1627', '8'),
(2829, 'TAMARGO', '1626', '1590', '16'),
(2830, 'TARDIO', '1626', '1529', '..'),
(2831, 'MADERA', '1625', '1728', '6'),
(2832, 'SALINERO', '1625', '1621', '10'),
(2833, 'MEGIA', '1625', '1517', '16'),
(2834, 'ANDREI', '1625', '169', '25'),
(2835, 'CARBALLEIRA', '1624', '1638', '28'),
(2836, 'WILSON', '1624', '398', '..'),
(2837, 'LERA', '1622', '1775', '13'),
(2838, 'PECO', '1621', '1591', '10'),
(2839, 'GOMAR', '1621', '1491', '21'),
(2840, 'MASEDA', '1621', '1441', '16'),
(2841, 'CARDO', '1620', '1732', '8'),
(2842, 'ESCRIBA', '1620', '1629', '10'),
(2843, 'TORREBLANCA', '1620', '1556', '11'),
(2844, 'ARAUZ', '1619', '1654', '13'),
(2845, 'LUPU', '1617', '152', '15'),
(2846, 'OSA', '1616', '1630', '29'),
(2847, 'SIMBA?A', '1615', '1487', '128'),
(2848, 'CERVERO', '1614', '1637', '28'),
(2849, 'ARA', '1614', '1597', '16'),
(2850, 'RUBI', '1613', '1565', '7'),
(2851, 'BALAN', '1613', '229', '13'),
(2852, 'FONTENLA', '1612', '1531', '15'),
(2853, 'NISTAL', '1612', '1462', '16'),
(2854, 'NAVEIRA', '1612', '1404', '18'),
(2855, 'CUSTODIO', '1611', '1688', '20'),
(2856, 'CORCUERA', '1609', '1614', '11'),
(2857, 'ARGENTE', '1609', '1533', '44'),
(2858, 'SOUZA', '1608', '1515', '6'),
(2859, 'ZABALZA', '1608', '1478', '6'),
(2860, 'DO?ATE', '1607', '1644', '21'),
(2861, 'PINZON', '1607', '1600', '12'),
(2862, 'PLANELLES', '1607', '1521', '12'),
(2863, 'BIBI', '1605', '2541', '7'),
(2864, 'AU?ON', '1605', '1615', '9'),
(2865, 'PREGO', '1605', '1532', '22'),
(2866, 'VAQUER', '1604', '1591', '17'),
(2867, 'IVORRA', '1604', '1580', '74'),
(2868, 'BARONA', '1604', '1539', '10'),
(2869, 'CAPOTE', '1603', '1689', '..'),
(2870, 'FORERO', '1603', '1543', '7'),
(2871, 'MARSAL', '1602', '1568', '5'),
(2872, 'SOBRADO', '1601', '1685', '11'),
(2873, 'MARTE', '1599', '1580', '82'),
(2874, 'SEGADO', '1599', '1449', '14'),
(2875, 'ASIN', '1599', '1443', '9'),
(2876, 'ORDU?A', '1597', '1602', '10'),
(2877, 'OJEA', '1596', '1495', '22'),
(2878, 'GARNICA', '1596', '1468', '11'),
(2879, 'CALIN', '1594', '201', '13'),
(2880, 'RENGEL', '1593', '1667', '11'),
(2881, 'OCHANDO', '1592', '1465', '8'),
(2882, 'LOMBARDO', '1592', '1450', '11'),
(2883, 'HAJJI', '1592', '515', '76'),
(2884, 'SANTA CRUZ', '1591', '1700', '7'),
(2885, 'MENDO', '1591', '1634', '7'),
(2886, 'LAPUENTE', '1591', '1471', '8'),
(2887, 'CARLES', '1590', '1553', '7'),
(2888, 'SELMA', '1590', '1493', '8'),
(2889, 'STANCIU', '1590', '126', '14'),
(2890, 'SENRA', '1589', '1657', '21'),
(2891, 'FEBRER', '1589', '1512', '7'),
(2892, 'ANGHEL', '1589', '133', '15'),
(2893, 'FEBLES', '1588', '1599', '14'),
(2894, 'ANGLES', '1588', '1460', '27'),
(2895, 'EL HARRAK', '1588', '815', '95'),
(2896, 'EIZAGUIRRE', '1587', '1598', '18'),
(2897, 'CELA', '1586', '1610', '15'),
(2898, 'LADO', '1586', '1489', '13'),
(2899, 'OSTOS', '1586', '1445', '21'),
(2900, 'SAN MILLAN', '1586', '1381', '5'),
(2901, 'HOSSAIN', '1585', '416', '19'),
(2902, 'REBOREDO', '1584', '1467', '23'),
(2903, 'BARRA', '1583', '1597', '10'),
(2904, 'ANDRADA', '1583', '1528', '27'),
(2905, 'SILVEIRA', '1583', '1355', '12'),
(2906, 'FURIO', '1582', '1529', '10'),
(2907, 'PASCUA', '1582', '1428', '23'),
(2908, 'DONG', '1581', '82', '..'),
(2909, 'ABENZA', '1580', '1574', '15'),
(2910, 'MARICHAL', '1579', '1723', '50'),
(2911, 'LARIO', '1579', '1557', '11'),
(2912, 'CARAMES', '1579', '1537', '24'),
(2913, 'BERZAL', '1579', '1442', '15'),
(2914, 'MEJUTO', '1579', '1366', '8'),
(2915, 'AYMERICH', '1579', '1358', '..'),
(2916, 'FREITAS', '1578', '1513', '11'),
(2917, 'MORRO', '1577', '1607', '11'),
(2918, 'FENOY', '1577', '1604', '14'),
(2919, 'ALBERTOS', '1577', '1516', '23'),
(2920, 'TEIXIDOR', '1576', '1719', '5'),
(2921, 'JAVIER', '1576', '1455', '13'),
(2922, 'LLINAS', '1575', '1549', '..'),
(2923, 'VITORIA', '1574', '1589', '10'),
(2924, 'GALMES', '1573', '1617', '48'),
(2925, 'LLULL', '1572', '1502', '25'),
(2926, 'TEMPRANO', '1571', '1696', '19'),
(2927, 'ORIOL', '1571', '1398', '9'),
(2928, 'PERDIGUERO', '1570', '1656', '15'),
(2929, 'RIPOLLES', '1570', '1509', '8'),
(2930, 'GILI', '1569', '1479', '..'),
(2931, 'MARRON', '1569', '1478', '11'),
(2932, 'GARIN', '1568', '1409', '5'),
(2933, 'MOSCARDO', '1567', '1550', '20'),
(2934, 'RISUE?O', '1567', '1510', '6'),
(2935, 'FELICES', '1567', '1467', '9'),
(2936, 'CASTELLVI', '1564', '1544', '27'),
(2937, 'BOTELLO', '1563', '1721', '14'),
(2938, 'MONTEJANO', '1563', '1555', '..'),
(2939, 'BASCON', '1562', '1548', '29'),
(2940, 'CARBONERO', '1560', '1619', '16'),
(2941, 'MARZAL', '1560', '1545', '13'),
(2942, 'MOLINOS', '1560', '1542', '18'),
(2943, 'RIBOT', '1558', '1602', '17'),
(2944, 'HERNAIZ', '1558', '1499', '39'),
(2945, 'CORDEIRO', '1558', '1258', '13'),
(2946, 'HERCE', '1556', '1690', '30'),
(2947, 'SARASOLA', '1556', '1677', '21'),
(2948, 'CEDRES', '1556', '1607', '11'),
(2949, 'SERRADILLA', '1556', '1518', '16'),
(2950, 'FELIP', '1556', '1452', '..'),
(2951, 'SORDO', '1556', '1402', '25'),
(2952, 'HIGUERO', '1555', '1634', '45'),
(2953, 'MUNERA', '1555', '1530', '5'),
(2954, 'CARPENA', '1553', '1562', '8'),
(2955, 'SERENA', '1553', '1351', '..'),
(2956, 'ORDAS', '1552', '1515', '10'),
(2957, 'CARNEIRO', '1550', '1661', '21'),
(2958, 'QUI?ONEZ', '1550', '1592', '40'),
(2959, 'MESQUIDA', '1550', '1575', '25'),
(2960, 'ESCALADA', '1550', '1495', '23'),
(2961, 'PLIEGO', '1550', '1445', '12'),
(2962, 'LANZAS', '1549', '1597', '..'),
(2963, 'LOOR', '1547', '1713', '23'),
(2964, 'JESUS', '1546', '1643', '7'),
(2965, 'TARIFA', '1545', '1582', '18'),
(2966, 'SARDA', '1545', '1461', '5'),
(2967, 'CERRADA', '1545', '1427', '78'),
(2968, 'BARCALA', '1545', '1380', '11'),
(2969, 'BUTRON', '1544', '1486', '7'),
(2970, 'SIGNES', '1543', '1530', '69'),
(2971, 'CELMA', '1543', '1464', '12'),
(2972, 'DE LA FLOR', '1542', '1445', '6'),
(2973, 'ALEJOS', '1541', '1647', '11'),
(2974, 'PULGARIN', '1540', '1542', '12'),
(2975, 'FULLANA', '1540', '1465', '35'),
(2976, 'CAMBRONERO', '1539', '1619', '20'),
(2977, 'CASAMAYOR', '1538', '1513', '8'),
(2978, 'FAYE', '1537', '298', '16'),
(2979, 'DRAGOMIR', '1536', '140', '11'),
(2980, 'ZUBILLAGA', '1534', '1493', '22'),
(2981, 'NAVIO', '1532', '1362', '23'),
(2982, 'BUGALLO', '1531', '1449', '20'),
(2983, 'COLLADOS', '1530', '1559', '34'),
(2984, 'ROSENDO', '1529', '1537', '15'),
(2985, 'CARIDE', '1528', '1272', '9'),
(2986, 'LUACES', '1527', '1534', '20'),
(2987, 'FAURA', '1525', '1405', '..'),
(2988, 'CALATRAVA', '1524', '1357', '..'),
(2989, 'PARRONDO', '1523', '1564', '40'),
(2990, 'ARRUTI', '1522', '1738', '28'),
(2991, 'MAGALLON', '1522', '1454', '29'),
(2992, 'ZARZUELA', '1522', '1378', '10'),
(2993, 'PINOS', '1521', '1488', '15'),
(2994, 'REYERO', '1521', '1479', '..'),
(2995, 'MARGALEF', '1521', '1461', '24'),
(2996, 'ROZALEN', '1520', '1523', '33'),
(2997, 'ARMARIO', '1520', '1381', '..'),
(2998, 'SOTILLO', '1519', '1530', '18'),
(2999, 'BARQUILLA', '1518', '1626', '23'),
(3000, 'UCLES', '1518', '1519', '15'),
(3001, 'CRESPILLO', '1516', '1542', '..'),
(3002, 'AHUMADA', '1516', '1382', '..'),
(3003, 'CEESAY', '1516', '574', '207'),
(3004, 'PERIA?EZ', '1515', '1602', '5'),
(3005, 'SOLDADO', '1514', '1473', '25'),
(3006, 'ALFEREZ', '1513', '1374', '17'),
(3007, 'ROMAY', '1512', '1573', '14'),
(3008, 'BUJALANCE', '1512', '1504', '..'),
(3009, 'NEAGU', '1511', '118', '6'),
(3010, 'SOTOS', '1510', '1625', '16'),
(3011, 'PULGAR', '1510', '1514', '6'),
(3012, 'FARFAN', '1509', '1587', '5'),
(3013, 'ALCOVER', '1507', '1347', '16'),
(3014, 'TEJADO', '1506', '1493', '..'),
(3015, 'RENGIFO', '1506', '1485', '21'),
(3016, 'MILIAN', '1506', '1468', '21'),
(3017, 'LUNGU', '1505', '128', '18'),
(3018, 'MELGUIZO', '1504', '1427', '20'),
(3019, 'GUADALUPE', '1504', '1252', '24'),
(3020, 'JORNET', '1503', '1380', '28'),
(3021, 'BENEDI', '1499', '1473', '28'),
(3022, 'VALLADOLID', '1498', '1648', '13'),
(3023, 'CEPERO', '1498', '1416', '5'),
(3024, 'TARANCON', '1498', '1327', '6'),
(3025, 'SHAHZAD', '1498', '66', '10'),
(3026, 'ANGUERA', '1497', '1395', '14'),
(3027, 'MURIAS', '1496', '1458', '27'),
(3028, 'ALLUE', '1495', '1459', '14'),
(3029, 'PAUL', '1495', '1187', '9'),
(3030, 'FERRAGUT', '1493', '1602', '..'),
(3031, 'NODA', '1493', '1483', '10'),
(3032, 'FRAU', '1493', '1425', '23'),
(3033, 'DAMAS', '1493', '1339', '14'),
(3034, 'MARCHAN', '1492', '1459', '26'),
(3035, 'BAIXAULI', '1492', '1366', '39'),
(3036, 'POLONIO', '1491', '1494', '..'),
(3037, 'INSA', '1491', '1467', '6'),
(3038, 'HERMOSA', '1490', '1471', '5'),
(3039, 'CHIVA', '1490', '1350', '20'),
(3040, 'BEGUM', '1489', '3134', '7'),
(3041, 'VILLATORO', '1489', '1529', '11'),
(3042, 'ORMAZABAL', '1489', '1461', '12'),
(3043, 'PARICIO', '1489', '1458', '31'),
(3044, 'SOLAR', '1489', '1426', '10'),
(3045, 'IGNACIO', '1488', '1726', '9'),
(3046, 'SANCHA', '1487', '1553', '19'),
(3047, 'LLERENA', '1487', '1474', '26'),
(3048, 'ALBALAT', '1487', '1365', '7'),
(3049, 'IONITA', '1487', '122', '8'),
(3050, 'SOLAZ', '1486', '1578', '24'),
(3051, 'PARRON', '1486', '1427', '13'),
(3052, 'OLCINA', '1484', '1394', '26'),
(3053, 'ARENAL', '1483', '1580', '14'),
(3054, 'SESE', '1483', '1438', '10'),
(3055, 'ELORRIAGA', '1483', '1437', '7'),
(3056, 'COLOMO', '1483', '1379', '..'),
(3057, 'DE ARMAS', '1482', '1350', '5'),
(3058, 'MEHMOOD', '1482', '56', '8'),
(3059, 'PALOS', '1481', '1545', '10'),
(3060, 'PANCORBO', '1481', '1388', '18'),
(3061, 'HERNAEZ', '1481', '1347', '17'),
(3062, 'VERCHER', '1480', '1523', '16'),
(3063, 'GALVE', '1480', '1459', '16'),
(3064, 'CAMPANARIO', '1479', '1495', '21'),
(3065, 'RICHART', '1479', '1487', '..'),
(3066, 'MORIN', '1479', '1413', '22'),
(3067, 'PINEL', '1479', '1399', '8'),
(3068, 'ESCUDER', '1479', '1399', '5'),
(3069, 'BARRASA', '1479', '1268', '7'),
(3070, 'RISQUEZ', '1478', '1459', '14'),
(3071, 'FRAGOSO', '1478', '1419', '14'),
(3072, 'ZALDIVAR', '1477', '1531', '12'),
(3073, 'BERRUEZO', '1477', '1452', '..'),
(3074, 'UNGUREANU', '1477', '123', '11'),
(3075, 'CLADERA', '1476', '1492', '47'),
(3076, 'CABOT', '1476', '1344', '9'),
(3077, 'LLOPART', '1476', '1260', '17'),
(3078, 'TIZON', '1474', '1439', '11'),
(3079, 'EL BAKKALI', '1474', '564', '83'),
(3080, 'VISO', '1473', '1663', '6'),
(3081, 'PEDREGOSA', '1471', '1369', '..'),
(3082, 'BALSA', '1471', '1290', '18'),
(3083, 'TORREZ', '1470', '1647', '15'),
(3084, 'TINEO', '1470', '1593', '18'),
(3085, 'VILLODRES', '1470', '1547', '11'),
(3086, 'BARRON', '1470', '1413', '20'),
(3087, 'LOURIDO', '1469', '1435', '8'),
(3088, 'CREGO', '1469', '1304', '13'),
(3089, 'ELIZONDO', '1468', '1498', '7'),
(3090, 'SUTIL', '1468', '1440', '13'),
(3091, 'NAVAL', '1468', '1351', '5'),
(3092, 'NARBONA', '1467', '1416', '11'),
(3093, 'SETIEN', '1466', '1487', '8'),
(3094, 'ARMIJOS', '1466', '1475', '73'),
(3095, 'ZELAYA', '1466', '1346', '23'),
(3096, 'CUBELLS', '1464', '1505', '13'),
(3097, 'COMES', '1464', '1428', '10'),
(3098, 'ESCOLA', '1463', '1393', '..'),
(3099, 'PAVIA', '1463', '1373', '10'),
(3100, 'SANTISO', '1463', '1291', '13'),
(3101, 'IRAOLA', '1462', '1515', '18'),
(3102, 'CORDOBES', '1462', '1498', '17'),
(3103, 'VILLORIA', '1462', '1355', '13'),
(3104, 'PEDRAJAS', '1461', '1450', '8'),
(3105, 'COVES', '1460', '1309', '28'),
(3106, 'ESCRICHE', '1459', '1525', '..'),
(3107, 'FORTE', '1459', '1446', '23'),
(3108, 'CEGARRA', '1459', '1416', '11'),
(3109, 'LORO', '1458', '1465', '19'),
(3110, 'PUCHOL', '1458', '1396', '5'),
(3111, 'ZAMUDIO', '1458', '1367', '8'),
(3112, 'SYLLA', '1458', '380', '87'),
(3113, 'CANTALAPIEDRA', '1457', '1449', '33'),
(3114, 'ZAVALA', '1457', '1446', '20'),
(3115, 'ZORNOZA', '1457', '1433', '37'),
(3116, 'THIAM', '1457', '265', '33'),
(3117, 'PICADO', '1456', '1501', '5'),
(3118, 'CIRERA', '1456', '1380', '8'),
(3119, 'COMPTE', '1456', '1258', '..'),
(3120, 'CATALINA', '1455', '1368', '..'),
(3121, 'SEQUERA', '1453', '1565', '7'),
(3122, 'SOLANS', '1453', '1240', '15'),
(3123, 'TRIANA', '1452', '1525', '20'),
(3124, 'CARDENAL', '1452', '1422', '11'),
(3125, 'SANTA', '1452', '1341', '11'),
(3126, 'SIXTO', '1451', '1409', '16'),
(3127, 'MENDIA', '1450', '1499', '5'),
(3128, 'GUILLERMO', '1450', '1491', '5'),
(3129, 'COMELLAS', '1450', '1241', '..'),
(3130, 'DIENG', '1450', '310', '44'),
(3131, 'TALLON', '1449', '1337', '..'),
(3132, 'BAO', '1449', '1142', '7'),
(3133, 'QUETGLAS', '1448', '1413', '7'),
(3134, 'CURRAS', '1448', '1346', '11'),
(3135, 'BADILLO', '1447', '1537', '..'),
(3136, 'CANEDO', '1447', '1467', '33'),
(3137, 'CERVI?O', '1447', '1431', '14'),
(3138, 'NEBREDA', '1446', '1622', '21'),
(3139, 'ABELLO', '1446', '1395', '..'),
(3140, 'BRUN', '1446', '1380', '9'),
(3141, 'BEN', '1446', '828', '..'),
(3142, 'SAFONT', '1445', '1444', '5'),
(3143, 'LAVILLA', '1445', '1411', '16'),
(3144, 'GRUESO', '1444', '1482', '11'),
(3145, 'BRETON', '1444', '1389', '14'),
(3146, 'BARANDIARAN', '1442', '1386', '12'),
(3147, 'PENADES', '1442', '1350', '7'),
(3148, 'VANEGAS', '1441', '1612', '12'),
(3149, 'BLANQUEZ', '1441', '1597', '20'),
(3150, 'RAFAEL', '1441', '1546', '5'),
(3151, 'CASAIS', '1441', '1499', '17'),
(3152, 'TERRERO', '1441', '1432', '26'),
(3153, 'VALL', '1441', '1429', '9'),
(3154, 'ECHARRI', '1440', '1514', '22'),
(3155, 'BURON', '1440', '1420', '..'),
(3156, 'MELLA', '1440', '1309', '9'),
(3157, 'AARAB', '1439', '529', '85'),
(3158, 'IONESCU', '1439', '135', '14'),
(3159, 'TABERNER', '1437', '1427', '11'),
(3160, 'BALBAS', '1437', '1321', '5'),
(3161, 'BIBILONI', '1436', '1416', '18'),
(3162, 'GAVIRIA', '1435', '1501', '23'),
(3163, 'ESCA?O', '1434', '1392', '6'),
(3164, 'ARTES', '1432', '1564', '26'),
(3165, 'EGUIA', '1432', '1437', '..'),
(3166, 'SILLAH', '1432', '569', '234'),
(3167, 'CAI', '1432', '109', '6'),
(3168, 'AIBAR', '1431', '1462', '17'),
(3169, 'REUS', '1431', '1369', '11'),
(3170, 'FORTEZA', '1431', '1309', '25'),
(3171, 'CALO', '1430', '1605', '23'),
(3172, 'MESONERO', '1430', '1484', '16'),
(3173, 'VALES', '1429', '1369', '..'),
(3174, 'DE ANTONIO', '1429', '1155', '..'),
(3175, 'PAULINO', '1428', '1485', '43'),
(3176, 'ARTAL', '1428', '1419', '44'),
(3177, 'TORRA', '1428', '1348', '5'),
(3178, 'ISASI', '1428', '1127', '6'),
(3179, 'BOLA?O', '1427', '1443', '16'),
(3180, 'MANZANEQUE', '1427', '1442', '20'),
(3181, 'VILLADA', '1427', '1395', '6'),
(3182, 'BODAS', '1427', '1347', '20'),
(3183, 'TEVAR', '1427', '1287', '28'),
(3184, 'RUEDAS', '1425', '1553', '20'),
(3185, 'ESCARTIN', '1425', '1481', '15'),
(3186, 'FANJUL', '1425', '1243', '18'),
(3187, 'UMPIERREZ', '1424', '1499', '10'),
(3188, 'ALMONTE', '1424', '1305', '63'),
(3189, 'COUCEIRO', '1423', '1363', '16'),
(3190, 'CONCHA', '1422', '1544', '6'),
(3191, 'ILLANA', '1422', '1476', '..'),
(3192, 'LLARENA', '1422', '1425', '..'),
(3193, 'VILLAMAYOR', '1422', '1374', '7'),
(3194, 'SAZ', '1422', '1324', '28'),
(3195, 'CABREJAS', '1421', '1437', '13'),
(3196, 'CRACIUN', '1421', '129', '7'),
(3197, 'COTELO', '1420', '1363', '6'),
(3198, 'ROBLEDILLO', '1419', '1424', '14'),
(3199, 'BESADA', '1418', '1412', '40'),
(3200, 'SAGREDO', '1418', '1337', '11'),
(3201, 'FEREZ', '1418', '1304', '15'),
(3202, 'MONFERRER', '1418', '1286', '29'),
(3203, 'OUBI?A', '1416', '1505', '24'),
(3204, 'MORIANA', '1416', '1377', '28'),
(3205, 'CARCEL', '1415', '1422', '32'),
(3206, 'USERO', '1414', '1408', '20'),
(3207, 'BERNARDINO', '1414', '1360', '15'),
(3208, 'ALBERTI', '1414', '1283', '5'),
(3209, 'POSADAS', '1413', '1345', '7'),
(3210, 'TELLECHEA', '1412', '1533', '28'),
(3211, 'HERRERIAS', '1412', '1441', '27'),
(3212, 'JUNCO', '1412', '1404', '11'),
(3213, 'NOVAL', '1411', '1504', '10'),
(3214, 'MIELGO', '1411', '1400', '48'),
(3215, 'VIEITEZ', '1410', '1401', '27'),
(3216, 'LEIS', '1410', '1401', '14'),
(3217, 'PACHO', '1410', '1386', '56'),
(3218, 'LADRON DE GUEVARA', '1410', '1237', '..'),
(3219, 'CALDERA', '1409', '1444', '7'),
(3220, 'BENNASAR', '1409', '1421', '15'),
(3221, 'PE?ARRUBIA', '1408', '1286', '25'),
(3222, 'JACOME', '1407', '1460', '13'),
(3223, 'BASANTA', '1407', '1353', '9'),
(3224, 'CARBALLAL', '1406', '1378', '12'),
(3225, 'BISBAL', '1406', '1365', '17'),
(3226, 'ALGAR', '1406', '1340', '15'),
(3227, 'ALEIXANDRE', '1406', '1324', '14'),
(3228, 'ROBERT', '1405', '1327', '..'),
(3229, 'AGUT', '1404', '1474', '21'),
(3230, 'ORTIZ DE ZARATE', '1402', '1370', '13'),
(3231, 'REBOLLEDO', '1401', '1422', '9'),
(3232, 'MEANA', '1401', '1358', '26'),
(3233, 'PELLEJERO', '1401', '1312', '10'),
(3234, 'MERAYO', '1400', '1300', '51'),
(3235, 'IRASTORZA', '1399', '1453', '14'),
(3236, 'MURUA', '1399', '1329', '10'),
(3237, 'MOUSSAOUI', '1398', '475', '29'),
(3238, 'NDONG', '1398', '404', '18'),
(3239, 'KADDOURI', '1397', '432', '30'),
(3240, 'BARBU', '1397', '142', '6'),
(3241, 'PORRES', '1396', '1381', '8'),
(3242, 'CARNERERO', '1396', '1268', '5'),
(3243, 'ARANEGA', '1394', '1482', '..'),
(3244, 'TOUS', '1394', '1345', '6'),
(3245, 'BADEA', '1393', '111', '12'),
(3246, 'OYARZABAL', '1392', '1553', '10'),
(3247, 'DEL SAZ', '1392', '1353', '29'),
(3248, 'URETA', '1392', '1313', '10'),
(3249, 'REDON', '1392', '1273', '17'),
(3250, 'ARRUFAT', '1392', '1267', '9'),
(3251, 'LUDE?A', '1391', '1470', '13'),
(3252, 'ALMARCHA', '1391', '1441', '..'),
(3253, 'ALMENDRO', '1391', '1389', '..'),
(3254, 'MA', '1391', '127', '..'),
(3255, 'PALOMEQUE', '1390', '1439', '5'),
(3256, 'BEDIA', '1390', '1391', '43'),
(3257, 'PECES', '1390', '1303', '..'),
(3258, 'COSTALES', '1389', '1445', '11'),
(3259, 'GALEOTE', '1389', '1362', '10'),
(3260, 'BAKKALI', '1389', '635', '75'),
(3261, 'MOREDA', '1388', '1353', '11'),
(3262, 'MOR', '1387', '1490', '17'),
(3263, 'ZUBELDIA', '1387', '1396', '13'),
(3264, 'OLIVERO', '1387', '1329', '19'),
(3265, 'CERNADAS', '1387', '1195', '11'),
(3266, 'DE LA HERA', '1386', '1508', '12'),
(3267, 'ONIEVA', '1386', '1312', '6'),
(3268, 'NOLASCO', '1385', '1319', '5'),
(3269, 'HORCAJO', '1384', '1361', '6'),
(3270, 'RIVILLA', '1384', '1186', '17'),
(3271, 'ARGIBAY', '1383', '1274', '8'),
(3272, 'BARRULL', '1382', '1246', '129'),
(3273, 'PROL', '1381', '1269', '29'),
(3274, 'OLARTE', '1380', '1355', '15'),
(3275, 'EL MANSOURI', '1380', '444', '24'),
(3276, 'GABARRON', '1379', '1477', '8'),
(3277, 'CHAVERO', '1379', '1368', '6'),
(3278, 'SIVERIO', '1376', '1441', '78'),
(3279, 'CANTERA', '1376', '1328', '5'),
(3280, 'BETETA', '1375', '1484', '11'),
(3281, 'PARDAL', '1375', '1344', '16'),
(3282, 'BRETONES', '1374', '1379', '11'),
(3283, 'PAYO', '1374', '1352', '22'),
(3284, 'RADA', '1374', '1305', '16'),
(3285, 'IZA', '1373', '1338', '18'),
(3286, 'CAMPRUBI', '1373', '1280', '..'),
(3287, 'MAYANS', '1371', '1335', '24'),
(3288, 'SANTAMARINA', '1371', '1247', '9'),
(3289, 'AMEZCUA', '1370', '1440', '7'),
(3290, 'BUESO', '1370', '1384', '8'),
(3291, 'GISPERT', '1370', '1358', '14'),
(3292, 'BAILEN', '1370', '1342', '..'),
(3293, 'GURREA', '1370', '1320', '..'),
(3294, 'MARCILLA', '1370', '1281', '7'),
(3295, 'EL ASRI', '1370', '458', '41'),
(3296, 'JARILLO', '1369', '1466', '20'),
(3297, 'TOCINO', '1369', '1369', '..'),
(3298, 'SANTILLAN', '1369', '1312', '13'),
(3299, 'HERMO', '1368', '1551', '18'),
(3300, 'BARCENILLA', '1368', '1403', '68'),
(3301, 'CORELLA', '1367', '1238', '6'),
(3302, 'KONE', '1367', '166', '30'),
(3303, 'ESNAOLA', '1366', '1268', '6'),
(3304, 'DE LA CASA', '1365', '1337', '10'),
(3305, 'BARRANQUERO', '1365', '1292', '..'),
(3306, 'SANTOME', '1365', '1222', '23'),
(3307, 'ROTGER', '1363', '1466', '8'),
(3308, 'CASCON', '1363', '1281', '10'),
(3309, 'PUERTOLAS', '1362', '1393', '36'),
(3310, 'MILLET', '1362', '1294', '12'),
(3311, 'YANGUAS', '1362', '1276', '19'),
(3312, 'CEBOLLA', '1360', '1375', '22'),
(3313, 'SANSANO', '1359', '1304', '..'),
(3314, 'BALAGUE', '1358', '1271', '8'),
(3315, 'FILIP', '1357', '176', '7'),
(3316, 'VLAD', '1357', '148', '11'),
(3317, 'NEGRE', '1356', '1308', '5'),
(3318, 'CARDENES', '1355', '1386', '11'),
(3319, 'ALCOBA', '1355', '1311', '18'),
(3320, 'ASCANIO', '1355', '1253', '8'),
(3321, 'SANTACREU', '1354', '1396', '13'),
(3322, 'DARRIBA', '1354', '1262', '15'),
(3323, 'MONTOLIO', '1353', '1412', '18'),
(3324, 'BELHAJ', '1353', '500', '24'),
(3325, 'LANCHO', '1352', '1353', '22'),
(3326, 'YAGO', '1351', '1227', '10'),
(3327, 'ARROCHA', '1350', '1457', '35'),
(3328, 'SANCHIZ', '1350', '1319', '19'),
(3329, 'CABALLER', '1350', '1270', '15'),
(3330, 'RAHMAN', '1350', '117', '25'),
(3331, 'LOBERA', '1349', '1419', '..'),
(3332, 'GUALDA', '1349', '1271', '23'),
(3333, 'ALHAMBRA', '1349', '1230', '19'),
(3334, 'MARAVER', '1348', '1306', '..'),
(3335, 'VIUDEZ', '1348', '1295', '16'),
(3336, 'DE LAMO', '1347', '1207', '42'),
(3337, 'PINAZO', '1346', '1274', '28'),
(3338, 'ARBONA', '1346', '1223', '11'),
(3339, 'MOHAMMAD', '1346', '182', '12'),
(3340, 'MAHMOOD', '1346', '81', '20'),
(3341, 'CARRALERO', '1345', '1348', '..'),
(3342, 'LOZADA', '1345', '1313', '17'),
(3343, 'MIGUENS', '1345', '1259', '18'),
(3344, 'BOSCA', '1345', '1111', '14'),
(3345, 'ALBI?ANA', '1344', '1414', '5'),
(3346, 'SANTONJA', '1344', '1231', '5'),
(3347, 'CASASOLA', '1343', '1339', '19'),
(3348, 'BADENES', '1343', '1308', '8'),
(3349, 'COMAN', '1342', '115', '8'),
(3350, 'MELON', '1341', '1371', '10'),
(3351, 'HERRADA', '1340', '1375', '12'),
(3352, 'CATENA', '1340', '1276', '15'),
(3353, 'DEL FRESNO', '1340', '1223', '13'),
(3354, 'FONTECHA', '1339', '1297', '..'),
(3355, 'LLAURADO', '1339', '1245', '27'),
(3356, 'TURON', '1338', '1468', '7'),
(3357, 'MANTECA', '1338', '1386', '..'),
(3358, 'CHILLON', '1338', '1238', '6'),
(3359, 'DE GREGORIO', '1338', '1041', '22'),
(3360, 'DAVIES', '1338', '188', '..'),
(3361, 'KIM', '1337', '491', '45'),
(3362, 'DRAME', '1337', '267', '52'),
(3363, 'CONDORI', '1336', '1488', '27'),
(3364, 'CARNICER', '1336', '1320', '..'),
(3365, 'SANTANDREU', '1336', '1285', '8'),
(3366, 'CHICANO', '1335', '1543', '..'),
(3367, 'CLARO', '1334', '1431', '6'),
(3368, 'CAMPOVERDE', '1334', '1170', '49'),
(3369, 'RIESTRA', '1334', '1168', '6'),
(3370, 'BASTANTE', '1333', '1341', '18'),
(3371, 'PALANCA', '1332', '1233', '30'),
(3372, 'PE?UELA', '1331', '1444', '..'),
(3373, 'CARCAMO', '1331', '1278', '10'),
(3374, 'BAHAMONDE', '1331', '1249', '..'),
(3375, 'MUT', '1331', '1243', '19'),
(3376, 'TANASE', '1331', '122', '6'),
(3377, 'RACERO', '1329', '1498', '6'),
(3378, 'TREVI?O', '1329', '1283', '..'),
(3379, 'CIRIA', '1329', '1233', '13'),
(3380, 'VILARDELL', '1329', '1168', '8'),
(3381, 'FUNEZ', '1328', '1494', '26'),
(3382, 'ALBURQUERQUE', '1328', '1317', '15'),
(3383, 'GOITIA', '1328', '1283', '7'),
(3384, 'LLANEZA', '1327', '1225', '23'),
(3385, 'VALDIVIELSO', '1327', '1168', '8'),
(3386, 'MACEIRAS', '1326', '1440', '15'),
(3387, 'CA?AVERAS', '1326', '1281', '7'),
(3388, 'CASTEL', '1326', '1262', '17'),
(3389, 'ISLAM', '1326', '118', '16'),
(3390, 'DE ALMEIDA', '1325', '1564', '9'),
(3391, 'CHICAIZA', '1325', '1290', '37'),
(3392, 'COLLAZOS', '1324', '1432', '21'),
(3393, 'BAQUEDANO', '1324', '1349', '17'),
(3394, 'NOMBELA', '1324', '1167', '19'),
(3395, 'PENEDO', '1322', '1386', '11'),
(3396, 'QUINTO', '1321', '1534', '19'),
(3397, 'LUCIA', '1321', '1372', '16'),
(3398, 'MARCANO', '1321', '1359', '37'),
(3399, 'MUNARRIZ', '1321', '1302', '..'),
(3400, 'TORNER', '1321', '1198', '..'),
(3401, 'PREDA', '1320', '128', '..'),
(3402, 'ARTECHE', '1319', '1553', '11'),
(3403, 'CAMINERO', '1318', '1115', '24'),
(3404, 'CASTA?ER', '1316', '1431', '5'),
(3405, 'HOMS', '1316', '1198', '..'),
(3406, 'BARRENO', '1315', '1328', '6'),
(3407, 'RESINA', '1315', '1287', '7'),
(3408, 'DRAGAN', '1315', '93', '..'),
(3409, 'EUGENIO', '1314', '1369', '7'),
(3410, 'MADRO?AL', '1314', '1279', '7'),
(3411, 'GUIMERA', '1313', '1384', '20'),
(3412, 'UNANUE', '1313', '1239', '12'),
(3413, 'MARTINO', '1313', '1134', '47'),
(3414, 'GIRO', '1312', '1141', '..'),
(3415, 'TRAVIESO', '1311', '1441', '7'),
(3416, 'COLADO', '1311', '1383', '14'),
(3417, 'ALMI?ANA', '1311', '1379', '..'),
(3418, 'MAIZ', '1311', '1185', '5'),
(3419, 'DESCALZO', '1310', '1400', '..'),
(3420, 'COLOMAR', '1310', '1279', '29'),
(3421, 'ONTIVEROS', '1310', '1255', '12'),
(3422, 'BONNIN', '1310', '1216', '37'),
(3423, 'DE ALBA', '1310', '1189', '..'),
(3424, 'PAU', '1310', '1146', '..'),
(3425, 'FRAGUAS', '1309', '1282', '10'),
(3426, 'TADEO', '1308', '1414', '..'),
(3427, 'TARRIO', '1308', '1169', '10'),
(3428, 'CAMPANO', '1307', '1443', '11'),
(3429, 'BARJA', '1307', '1286', '40'),
(3430, 'MARMOLEJO', '1307', '1239', '7'),
(3431, 'ALDAMA', '1307', '1168', '13'),
(3432, 'BUCETA', '1306', '1516', '..'),
(3433, 'HORCAJADA', '1306', '1316', '10'),
(3434, 'ABALO', '1306', '1171', '35'),
(3435, 'PATRICIO', '1305', '1234', '8'),
(3436, 'TRISTAN', '1304', '1264', '6'),
(3437, 'CASANUEVA', '1304', '1263', '21'),
(3438, 'PI?AR', '1304', '1206', '..'),
(3439, 'MOCANU', '1304', '126', '8'),
(3440, 'MASEGOSA', '1303', '1370', '12'),
(3441, 'CAL', '1303', '1284', '19'),
(3442, 'GUIL', '1303', '1174', '..'),
(3443, 'EL HADDAD', '1303', '469', '15'),
(3444, 'MATURANA', '1302', '1436', '5'),
(3445, 'FREIXAS', '1302', '1362', '9'),
(3446, 'MOROS', '1302', '1345', '10'),
(3447, 'URQUIZA', '1302', '1286', '..'),
(3448, 'LOMBA', '1302', '1273', '35'),
(3449, 'KANE', '1302', '251', '47'),
(3450, 'GALIAN', '1301', '1285', '5'),
(3451, 'CAMPAYO', '1301', '1256', '..'),
(3452, 'CAMERO', '1301', '1204', '..'),
(3453, 'MOLAS', '1301', '1183', '5'),
(3454, 'CHIMENO', '1301', '1180', '30'),
(3455, 'CABEZUDO', '1300', '1397', '19'),
(3456, 'MASDEU', '1300', '1356', '5'),
(3457, 'MONLLOR', '1300', '1319', '5'),
(3458, 'GALEA', '1300', '1196', '6'),
(3459, 'PANIZO', '1299', '1306', '33'),
(3460, 'CISCAR', '1298', '1321', '14'),
(3461, 'AYORA', '1297', '1301', '9'),
(3462, 'RASO', '1296', '1197', '15'),
(3463, 'DOBRE', '1296', '116', '..'),
(3464, 'MERCADE', '1295', '1310', '7'),
(3465, 'BOLEA', '1295', '1119', '6'),
(3466, 'IORDACHE', '1295', '117', '11'),
(3467, 'ANDINO', '1294', '1243', '17'),
(3468, 'BORDAS', '1294', '1210', '..'),
(3469, 'LEIRA', '1293', '1374', '16'),
(3470, 'USON', '1293', '1325', '23'),
(3471, 'ARAN', '1293', '1115', '15'),
(3472, 'GORRIN', '1292', '1318', '31'),
(3473, 'NEILA', '1292', '1285', '18'),
(3474, 'FORNIELES', '1292', '1271', '..'),
(3475, 'CUERDA', '1292', '1239', '27'),
(3476, 'SARANGO', '1291', '1338', '81'),
(3477, 'POUS', '1291', '1260', '..'),
(3478, 'MONCLUS', '1291', '1204', '..'),
(3479, 'VILARO', '1291', '1180', '5'),
(3480, 'BALDO', '1290', '1191', '8'),
(3481, 'COBACHO', '1289', '1358', '20'),
(3482, 'EGUREN', '1289', '1358', '6'),
(3483, 'VENTOSA', '1289', '1348', '..'),
(3484, 'FORNOS', '1289', '1268', '..'),
(3485, 'SANTALLA', '1288', '1361', '12'),
(3486, 'CARMENA', '1288', '1319', '73'),
(3487, 'CIVICO', '1288', '1216', '..'),
(3488, 'VIQUEIRA', '1288', '1178', '11'),
(3489, 'CANCIO', '1287', '1250', '11'),
(3490, 'ROLLAN', '1287', '1245', '32'),
(3491, 'LERIDA', '1285', '1361', '..'),
(3492, 'RESA', '1284', '1309', '11'),
(3493, 'MOGOLLON', '1282', '1344', '11'),
(3494, 'LAGUNAS', '1282', '1248', '8'),
(3495, 'RUBIRA', '1281', '1421', '..'),
(3496, 'URBANEJA', '1281', '1378', '5'),
(3497, 'HILARIO', '1281', '1316', '..'),
(3498, 'TERNERO', '1281', '1244', '56'),
(3499, 'OLIVAR', '1281', '1217', '5'),
(3500, 'DE LA OSA', '1281', '1166', '..'),
(3501, 'IGLESIA', '1280', '1499', '31'),
(3502, 'BLANDON', '1280', '1316', '18'),
(3503, 'RASERO', '1280', '1275', '6'),
(3504, 'ESTELLER', '1279', '1181', '19'),
(3505, 'ABALOS', '1278', '1307', '12'),
(3506, 'KARIM', '1278', '331', '23'),
(3507, 'CEDILLO', '1277', '1449', '31'),
(3508, 'AZURMENDI', '1277', '1328', '14'),
(3509, 'RIEGO', '1277', '1314', '..'),
(3510, 'LOZOYA', '1277', '1265', '..'),
(3511, 'SAN NICOLAS', '1277', '1188', '..'),
(3512, 'URBAN', '1276', '1260', '..'),
(3513, 'MULLOR', '1275', '1222', '15'),
(3514, 'ISABEL', '1275', '1212', '13'),
(3515, 'VALCARCE', '1275', '1203', '20'),
(3516, 'MONTERRUBIO', '1275', '1196', '9'),
(3517, 'HORTAL', '1275', '1160', '14'),
(3518, 'CABANA', '1273', '1383', '24'),
(3519, 'RABASCO', '1273', '1371', '9'),
(3520, 'EGUILUZ', '1273', '1334', '11'),
(3521, 'CA?ERO', '1273', '1270', '..'),
(3522, 'LEGAZ', '1273', '1214', '18'),
(3523, 'RAMAJO', '1273', '1171', '30'),
(3524, 'SHI', '1273', '71', '..'),
(3525, 'LESTON', '1272', '1359', '34'),
(3526, 'YEPEZ', '1271', '1315', '14'),
(3527, 'SEGADE', '1271', '1161', '8'),
(3528, 'CHICOTE', '1270', '1359', '10'),
(3529, 'IMBERNON', '1270', '1326', '9'),
(3530, 'LIZARRALDE', '1270', '1302', '17'),
(3531, 'CANCHO', '1270', '1234', '11'),
(3532, 'UROZ', '1270', '1018', '..'),
(3533, 'CAMPELLO', '1269', '1374', '9'),
(3534, 'CAMBA', '1269', '1291', '7'),
(3535, 'LIA?O', '1269', '1136', '11'),
(3536, 'CORTIZO', '1269', '1079', '10'),
(3537, 'VERGEL', '1268', '1308', '12'),
(3538, 'CASELLES', '1268', '1246', '..'),
(3539, 'PARRO', '1268', '1229', '18'),
(3540, 'DAPENA', '1268', '1182', '14'),
(3541, 'BELLA', '1268', '1054', '..'),
(3542, 'ALFAGEME', '1267', '1239', '15'),
(3543, 'TORRO', '1266', '1340', '25'),
(3544, 'PIZA', '1266', '1217', '6'),
(3545, 'CAMI?A', '1265', '1333', '14'),
(3546, 'ESPARCIA', '1265', '1192', '..'),
(3547, 'FERRIS', '1265', '1188', '6'),
(3548, 'AJA', '1263', '1436', '18'),
(3549, 'CANDELAS', '1263', '1353', '..'),
(3550, 'MONTAGUT', '1261', '1286', '15'),
(3551, 'MERLOS', '1261', '1155', '8'),
(3552, 'IRISARRI', '1261', '1072', '9'),
(3553, 'MONTES DE OCA', '1260', '1223', '11'),
(3554, 'DONIZ', '1260', '1207', '170'),
(3555, 'HELLIN', '1260', '1161', '5'),
(3556, 'RUZAFA', '1259', '1328', '6'),
(3557, 'DE LA LLAVE', '1259', '1124', '6'),
(3558, 'URBIETA', '1258', '1313', '..'),
(3559, 'ALACID', '1258', '1217', '12'),
(3560, 'MORATILLA', '1258', '1174', '20'),
(3561, 'SERRET', '1258', '1156', '10'),
(3562, 'ARZA', '1256', '1193', '13'),
(3563, 'COS', '1256', '1152', '..'),
(3564, 'GRI?AN', '1256', '1116', '6'),
(3565, 'MARINO', '1256', '975', '17'),
(3566, 'ENCABO', '1256', '943', '6'),
(3567, 'COLMENARES', '1255', '1295', '16'),
(3568, 'BLANQUER', '1255', '1210', '5'),
(3569, 'HORNERO', '1254', '1244', '17'),
(3570, 'BARANDA', '1253', '1262', '7'),
(3571, 'FERRARI', '1253', '684', '5'),
(3572, 'ENACHE', '1253', '98', '7'),
(3573, 'CALAVIA', '1251', '1269', '13'),
(3574, 'CANALEJO', '1251', '1209', '..'),
(3575, 'MONTESINO', '1250', '1273', '..'),
(3576, 'OBRADOR', '1250', '1263', '24'),
(3577, 'GUAITA', '1248', '1248', '31'),
(3578, 'PLANES', '1247', '1192', '13'),
(3579, 'DIAGNE', '1247', '304', '18'),
(3580, 'LUCA', '1247', '166', '9'),
(3581, 'IVAN', '1247', '113', '10'),
(3582, 'VERDES', '1246', '1098', '14'),
(3583, 'FANDOS', '1245', '1291', '7'),
(3584, 'CANDAL', '1245', '1161', '30'),
(3585, 'FITO', '1245', '1126', '..'),
(3586, 'GRANADA', '1244', '1279', '11'),
(3587, 'OROZ', '1244', '1220', '..'),
(3588, 'SAN VICENTE', '1243', '1247', '..'),
(3589, 'DEZA', '1243', '1190', '7'),
(3590, 'BONMATI', '1243', '1095', '10'),
(3591, 'BELCHI', '1242', '1167', '..'),
(3592, 'JOYA', '1241', '1394', '6'),
(3593, 'AZPIAZU', '1241', '1245', '6'),
(3594, 'NIEVAS', '1241', '1191', '14'),
(3595, 'SARASA', '1241', '1105', '..'),
(3596, 'GRILLO', '1240', '1280', '24'),
(3597, 'TERRAZAS', '1240', '1242', '14'),
(3598, 'BESCOS', '1240', '1195', '10'),
(3599, 'FERRADAS', '1240', '1100', '14'),
(3600, 'SAID', '1240', '690', '16'),
(3601, 'PETRE', '1240', '110', '9'),
(3602, 'REVERTER', '1239', '1293', '31'),
(3603, 'DE CELIS', '1238', '1273', '8'),
(3604, 'JIMENA', '1238', '1161', '9'),
(3605, 'HUAMAN', '1237', '1484', '12'),
(3606, 'JANEIRO', '1236', '1128', '18'),
(3607, 'PARTIDA', '1236', '1080', '15'),
(3608, 'VILLASANTE', '1236', '1023', '..'),
(3609, 'BALTASAR', '1235', '1259', '7'),
(3610, 'SAA', '1235', '1206', '5'),
(3611, 'BA?UELOS', '1235', '1190', '21'),
(3612, 'MOREL', '1235', '1050', '24'),
(3613, 'JACINTO', '1234', '1311', '9'),
(3614, 'PLATAS', '1234', '1155', '17'),
(3615, 'CORTAZAR', '1233', '1204', '15'),
(3616, 'JORDANA', '1233', '1179', '..'),
(3617, 'ALQUEZAR', '1233', '1124', '49'),
(3618, 'MARQUINEZ', '1232', '1204', '35'),
(3619, 'AGREDA', '1232', '1197', '12'),
(3620, 'PORRO', '1231', '1258', '12'),
(3621, 'BRUNA', '1231', '1205', '..'),
(3622, 'AMBROSIO', '1231', '1144', '6'),
(3623, 'ALEDO', '1230', '1294', '10'),
(3624, 'SERRATO', '1230', '1226', '..'),
(3625, 'BEAS', '1230', '1033', '7'),
(3626, 'MULAS', '1229', '1300', '10'),
(3627, 'SEARA', '1228', '1286', '18'),
(3628, 'BOYERO', '1227', '1292', '13'),
(3629, 'ALMARAZ', '1226', '1279', '15'),
(3630, 'ESPESO', '1226', '1188', '10'),
(3631, 'BARRENECHEA', '1225', '1299', '5'),
(3632, 'ANIORTE', '1225', '1250', '7'),
(3633, 'SANROMAN', '1223', '1222', '20'),
(3634, 'MARCE', '1223', '1145', '12'),
(3635, 'CARACUEL', '1223', '1100', '11'),
(3636, 'ARRIERO', '1220', '1305', '7'),
(3637, 'MONTE', '1220', '1295', '14'),
(3638, 'MENCHON', '1220', '1213', '15'),
(3639, 'TIMON', '1220', '1120', '58'),
(3640, 'SALVAT', '1219', '1086', '15'),
(3641, 'MANTEROLA', '1218', '1232', '11'),
(3642, 'GOENAGA', '1217', '1219', '..'),
(3643, 'RODILLA', '1217', '1195', '14'),
(3644, 'RUSSO', '1217', '416', '..'),
(3645, 'SAN SEBASTIAN', '1216', '1288', '5'),
(3646, 'GRELA', '1216', '1239', '..'),
(3647, 'SANSO', '1215', '1187', '23'),
(3648, 'ESTEVAN', '1215', '1178', '23'),
(3649, 'BURGUERA', '1215', '1049', '30'),
(3650, 'CABEDO', '1215', '999', '6'),
(3651, 'RAZA', '1215', '109', '8'),
(3652, 'ULLAH', '1215', '64', '10'),
(3653, 'COSTOYA', '1214', '1238', '6'),
(3654, 'OLIAS', '1214', '1173', '..'),
(3655, 'MODREGO', '1213', '1259', '40'),
(3656, 'PUNZANO', '1212', '1189', '12'),
(3657, 'TOAPANTA', '1212', '1157', '53'),
(3658, 'BARCELONA', '1212', '1154', '20'),
(3659, 'PINDADO', '1212', '1117', '19'),
(3660, 'MONTOTO', '1212', '1110', '27'),
(3661, 'LANA', '1212', '1109', '9'),
(3662, 'AUSIN', '1212', '970', '19'),
(3663, 'MARES', '1212', '898', '6'),
(3664, 'HAMDAOUI', '1212', '356', '49'),
(3665, 'GALVIS', '1211', '1302', '18'),
(3666, 'BELMAR', '1211', '1214', '5'),
(3667, 'BRULL', '1210', '1131', '14'),
(3668, 'GRIGORE', '1210', '83', '..'),
(3669, 'CALDERIN', '1209', '1157', '64'),
(3670, 'MUNGUIA', '1208', '1229', '11'),
(3671, 'ROSAL', '1208', '1181', '..'),
(3672, 'NAVIA', '1207', '1297', '6'),
(3673, 'URRA', '1207', '1174', '12'),
(3674, 'LISTE', '1207', '1124', '15'),
(3675, 'REBOLLAR', '1207', '1114', '6'),
(3676, 'MUNTEAN', '1206', '101', '8'),
(3677, 'POUSA', '1205', '1341', '18'),
(3678, 'ROMAGUERA', '1205', '1078', '10'),
(3679, 'GRAJALES', '1204', '1342', '35'),
(3680, 'VIZOSO', '1204', '1208', '..'),
(3681, 'TORRERO', '1203', '1349', '..'),
(3682, 'LEIRO', '1203', '1303', '..'),
(3683, 'LIZCANO', '1203', '1294', '7'),
(3684, 'SABARIEGO', '1203', '1183', '..'),
(3685, 'SILVAN', '1203', '1040', '53'),
(3686, 'BOO', '1202', '1312', '13'),
(3687, 'DOLS', '1202', '1261', '..'),
(3688, 'CA?AVATE', '1202', '1257', '9'),
(3689, 'CAPELLAN', '1202', '1206', '20'),
(3690, 'BECERRO', '1201', '1311', '8'),
(3691, 'JOFRE', '1200', '1062', '..'),
(3692, 'TOBAJAS', '1199', '1207', '9'),
(3693, 'ARQUERO', '1198', '1291', '11'),
(3694, 'PRETEL', '1198', '1277', '11'),
(3695, 'MARIANO', '1198', '1214', '..'),
(3696, 'PEDROCHE', '1198', '1017', '5'),
(3697, 'OSMA', '1195', '1258', '46'),
(3698, 'GRIMALT', '1195', '1157', '8'),
(3699, 'LASERNA', '1195', '1150', '..'),
(3700, 'SOLIZ', '1194', '1257', '20'),
(3701, 'AMARILLA', '1194', '1159', '27'),
(3702, 'MELENDO', '1194', '1053', '7'),
(3703, 'OLIVELLA', '1193', '1103', '8'),
(3704, 'DE LA CONCEPCION', '1192', '1222', '..'),
(3705, 'BOULLOSA', '1192', '1178', '18'),
(3706, 'COJOCARU', '1192', '117', '10'),
(3707, 'CARRILERO', '1191', '1108', '..'),
(3708, 'CAMPA', '1190', '1352', '14'),
(3709, 'VICH', '1190', '1160', '13'),
(3710, 'ALFAYA', '1190', '1091', '12'),
(3711, 'IPARRAGUIRRE', '1188', '1183', '14'),
(3712, 'BALLARIN', '1187', '1277', '13'),
(3713, 'TOCA', '1186', '1204', '25'),
(3714, 'SANTAMARTA', '1186', '1134', '11'),
(3715, 'REIXACH', '1186', '1085', '6'),
(3716, 'THOMPSON', '1185', '240', '..'),
(3717, 'ZORITA', '1183', '1155', '..'),
(3718, 'VILLAVICENCIO', '1183', '1130', '21'),
(3719, 'ANEIROS', '1183', '1105', '6'),
(3720, 'MARGARIT', '1183', '1039', '..'),
(3721, 'CARDIEL', '1182', '1347', '14'),
(3722, 'REVENGA', '1181', '1210', '11'),
(3723, 'ECIJA', '1181', '1052', '7'),
(3724, 'BOFILL', '1181', '1051', '..'),
(3725, 'SILLA', '1181', '1012', '13'),
(3726, 'RUBIANO', '1180', '1157', '12'),
(3727, 'LLOBERA', '1180', '1149', '5'),
(3728, 'AJENJO', '1180', '1099', '6'),
(3729, 'ZUAZO', '1180', '1083', '..'),
(3730, 'VOICU', '1180', '112', '8'),
(3731, 'CORTI?AS', '1179', '1181', '16'),
(3732, 'ABELLEIRA', '1179', '1009', '6'),
(3733, 'VALLVERDU', '1178', '1205', '15'),
(3734, 'TITOS', '1178', '1051', '..'),
(3735, 'OREA', '1177', '1204', '6'),
(3736, 'IBARROLA', '1176', '1266', '8'),
(3737, 'CA?ON', '1176', '1248', '26'),
(3738, 'MOHAND', '1176', '1223', '48'),
(3739, 'ALABAU', '1175', '1165', '9'),
(3740, 'LO', '1175', '335', '62'),
(3741, 'CHUMILLAS', '1174', '1268', '8'),
(3742, 'RANZ', '1174', '1111', '13'),
(3743, 'HUIDOBRO', '1174', '1087', '..'),
(3744, 'FABRE', '1174', '1072', '..'),
(3745, 'MORANO', '1174', '1069', '..'),
(3746, 'PACIOS', '1173', '1255', '15'),
(3747, 'CORTADA', '1173', '1194', '7'),
(3748, 'VILLACAMPA', '1173', '1161', '8'),
(3749, 'BESTARD', '1172', '1193', '11'),
(3750, 'DEMBELE', '1172', '83', '23'),
(3751, 'GAVALDA', '1171', '1130', '9'),
(3752, 'LIRA', '1171', '1113', '7'),
(3753, 'DE MARCOS', '1171', '1108', '..'),
(3754, 'ESTELA', '1171', '1034', '..'),
(3755, 'PE?ALBA', '1170', '1130', '14'),
(3756, 'ALCONCHEL', '1170', '1112', '..'),
(3757, 'PERA', '1170', '1076', '5'),
(3758, 'ACEBO', '1169', '1336', '30'),
(3759, 'ALOY', '1169', '1157', '12'),
(3760, 'MARCELO', '1169', '1058', '..'),
(3761, 'RELA?O', '1169', '1054', '9'),
(3762, 'ENE', '1169', '184', '5'),
(3763, 'GATA', '1168', '1159', '23'),
(3764, 'MOLEDO', '1168', '1138', '10'),
(3765, 'BERRAL', '1167', '1256', '19'),
(3766, 'SANTOLARIA', '1167', '1146', '6'),
(3767, 'ALCIVAR', '1166', '1234', '20'),
(3768, 'BOTIA', '1166', '1168', '13'),
(3769, 'SARRIO', '1166', '1021', '9'),
(3770, 'VIDALES', '1165', '1201', '28'),
(3771, 'ANADON', '1164', '1173', '5'),
(3772, 'SCHMIDT', '1164', '461', '..'),
(3773, 'ARRONDO', '1163', '1190', '52'),
(3774, 'ANGUIANO', '1163', '1087', '5'),
(3775, 'SANTILLANA', '1162', '1207', '..'),
(3776, 'BOVER', '1162', '1124', '5'),
(3777, 'BASTERRA', '1161', '1116', '5'),
(3778, 'CAMPELO', '1161', '1051', '6'),
(3779, 'MAHIQUES', '1160', '1163', '43'),
(3780, 'HERRUZO', '1160', '1160', '19'),
(3781, 'TORIJA', '1160', '1157', '11'),
(3782, 'CAIZA', '1160', '1153', '37'),
(3783, 'ZABALLOS', '1160', '1095', '26'),
(3784, 'BARCA', '1160', '1064', '8'),
(3785, 'LIMONES', '1160', '1058', '..'),
(3786, 'LIRIA', '1159', '1257', '..'),
(3787, 'GALARRAGA', '1159', '1255', '34'),
(3788, 'CABALLO', '1159', '1226', '9'),
(3789, 'ZANON', '1159', '1182', '23'),
(3790, 'COSTEA', '1159', '236', '12'),
(3791, 'PUYOL', '1157', '1103', '..'),
(3792, 'TABORDA', '1157', '1006', '13'),
(3793, 'ALAPONT', '1156', '1151', '6'),
(3794, 'RAEZ', '1155', '1089', '16'),
(3795, 'MORET', '1155', '1020', '..'),
(3796, 'LUZ', '1154', '1195', '10'),
(3797, 'CERDEIRA', '1154', '1124', '27'),
(3798, 'CANTILLO', '1153', '1310', '8'),
(3799, 'OCA', '1153', '1179', '23'),
(3800, 'GANUZA', '1153', '1142', '9'),
(3801, 'FONTANA', '1153', '1028', '..'),
(3802, 'DANIEL', '1153', '889', '..'),
(3803, 'LIARTE', '1152', '1151', '12'),
(3804, 'NOGUEROL', '1152', '1148', '9'),
(3805, 'SALOMON', '1152', '1115', '6'),
(3806, 'ARRAEZ', '1152', '994', '8'),
(3807, 'LAIN', '1151', '1208', '14'),
(3808, 'MONTANE', '1151', '1117', '14'),
(3809, 'VELAYOS', '1151', '1090', '31'),
(3810, 'NARRO', '1151', '1077', '..'),
(3811, 'EVANS', '1151', '242', '..'),
(3812, 'CANDON', '1150', '1155', '..'),
(3813, 'AMER', '1150', '1044', '8'),
(3814, 'TAVARES', '1150', '1036', '5'),
(3815, 'MA?E', '1150', '1031', '5'),
(3816, 'CABAL', '1150', '983', '10'),
(3817, 'STOIAN', '1150', '94', '9'),
(3818, 'COSSIO', '1149', '1228', '..'),
(3819, 'BRIZUELA', '1149', '1147', '9'),
(3820, 'CARABIAS', '1149', '1102', '16'),
(3821, 'CASIMIRO', '1149', '1089', '..'),
(3822, 'CARCEDO', '1149', '1071', '14'),
(3823, 'GILA', '1148', '1287', '6'),
(3824, 'TORRANO', '1148', '1155', '18'),
(3825, 'ABALDE', '1148', '1146', '30'),
(3826, 'LINERO', '1148', '1112', '14'),
(3827, 'ALIA', '1148', '1100', '25'),
(3828, 'CORBELLA', '1147', '1192', '6'),
(3829, 'FU', '1147', '126', '..'),
(3830, 'MONEO', '1145', '1213', '5'),
(3831, 'TABOAS', '1145', '1107', '14'),
(3832, 'CROS', '1145', '1081', '5'),
(3833, 'ASUNCION', '1144', '1292', '..'),
(3834, 'AROSTEGUI', '1144', '1227', '..'),
(3835, 'GARI', '1144', '1223', '15'),
(3836, 'SUAZO', '1144', '1161', '26'),
(3837, 'OLAZABAL', '1144', '987', '..'),
(3838, 'AISSAOUI', '1144', '340', '43'),
(3839, 'MANZANEDO', '1143', '1250', '9'),
(3840, 'PIQUERO', '1143', '1191', '..'),
(3841, 'QUILIS', '1143', '1158', '20'),
(3842, 'VILLAMARIN', '1142', '1105', '5'),
(3843, 'LANDETE', '1141', '1166', '14'),
(3844, 'LORENZANA', '1141', '1084', '9'),
(3845, 'ABELENDA', '1141', '1002', '6'),
(3846, 'CAGIGAS', '1141', '999', '10'),
(3847, 'EVANGELISTA', '1141', '970', '16'),
(3848, 'TODOROVA', '1141', '794', '50'),
(3849, 'NICOLAE', '1141', '94', '..'),
(3850, 'BROCAL', '1140', '1039', '..'),
(3851, 'CASADEVALL', '1139', '1120', '7'),
(3852, 'COLMENAR', '1138', '1107', '13'),
(3853, 'BOBADILLA', '1138', '1102', '7'),
(3854, 'RETAMERO', '1138', '1090', '18'),
(3855, 'RIVEROS', '1138', '1023', '7'),
(3856, 'TODOROV', '1138', '694', '54'),
(3857, 'AIZPURU', '1137', '1195', '16'),
(3858, 'ENTRENA', '1137', '1129', '7'),
(3859, 'DIESTE', '1137', '1093', '13'),
(3860, 'MANEA', '1137', '97', '12'),
(3861, 'GALLASTEGUI', '1136', '1135', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(2) DEFAULT NULL,
  `codigo` varchar(26) DEFAULT NULL,
  `nombre` varchar(61) DEFAULT NULL,
  `frasedescriptiva` varchar(190) DEFAULT NULL,
  `FK_profesores_nombrecompleto` int(1) DEFAULT NULL,
  `FK_directores_nombrecompleto` int(1) DEFAULT NULL,
  `imagen` varchar(40) DEFAULT NULL,
  `descripcion` varchar(380) DEFAULT NULL,
  `duracion` varchar(41) DEFAULT NULL,
  `precio` varchar(3) DEFAULT NULL,
  `precio2` varchar(10) DEFAULT NULL,
  `precio3` varchar(10) DEFAULT NULL,
  `url` varchar(10) DEFAULT NULL,
  `objetivos` varchar(343) DEFAULT NULL,
  `conocimientosprevios` varchar(83) DEFAULT NULL,
  `dirigidoa` varchar(201) DEFAULT NULL,
  `metodologia` varchar(132) DEFAULT NULL,
  `software` varchar(151) DEFAULT NULL,
  `tipodecurso` varchar(40) DEFAULT NULL,
  `preinscripcion` varchar(10) DEFAULT NULL,
  `matricula` varchar(10) DEFAULT NULL,
  `financiacion` varchar(10) DEFAULT NULL,
  `activo` int(1) DEFAULT NULL,
  `gratuito` varchar(1) DEFAULT NULL,
  `visualizaciones` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `codigo`, `nombre`, `frasedescriptiva`, `FK_profesores_nombrecompleto`, `FK_directores_nombrecompleto`, `imagen`, `descripcion`, `duracion`, `precio`, `precio2`, `precio3`, `url`, `objetivos`, `conocimientosprevios`, `dirigidoa`, `metodologia`, `software`, `tipodecurso`, `preinscripcion`, `matricula`, `financiacion`, `activo`, `gratuito`, `visualizaciones`) VALUES
(1, 'joomla', 'Curso de Joomla 3', 'Aprende a crear tus propios sitios web completos con el gestor de contenido más completo', 1, 1, 'Joomla-flat-logo-en.png', 'Joomla es un gestor de contenido que te permite crear tu propia página web sin tener que programar. En este curso gratuito vas a aprender a crear tus propios sitios web de forma completamente sencilla pero con todo el control que te proporciona esta herramienta', 'Este curso tiene una duración de 15 horas', '0 €', '', '', '', 'El objetivo de este curso es que el alumno sea capaz de crear sus propios sitios web sin necesidad de programar, usando el software Joomla', 'Este curso no requiere conocimientos previos', 'Cualquier persona que quiera aprender a crear sus propios sitios web', 'Este curso tiene una metodología completamente práctica', 'El curso no requiere el uso de ningun software especial. Se requiere disponer de un ordenador o dispositivo conectado a internet', 'Curso online gratuito sin soporte', '', '', '', 0, '1', 497),
(2, 'blenderinicial', 'Curso Inicial de Blender', 'Aprende los fundamentos de Blender 3D ', 1, 1, 'BlenderDesktopLogo.png', 'Blender es el software de creación 3D de software libre con más capacidades del mercado. El objetivo de este curso es proporcionarte los conocimientos necesarios para que puedas realizar proyectos de cualquier tipo en este programa 3D', '25 horas', '15', '', '', '', 'El objetivo de este curso es proporcionar los conocimientos necesarios para realizar cualquier proyecto de animación en el sector de la arquitectura, los efectos especiales y la animación de personajes', 'Este curso no requiere conocimientos de base', 'Este curso esta dirigido a cualquier persona interesada en aprender a trabajar en 3D con Blender', 'Este curso se presenta en formato online, con ejercicios prácticos dirigidos paso a paso', 'Blender 3D', 'Curso online con soporte', '', '', '', 1, '0', 589),
(5, '3dsmax', 'Curso completo de 3dsmax', 'Crea tus propias animaciones 3D con 3dsmax', 1, 1, '3ds-max-icon-400px-social.png', '3dsmax es el software de animación 3D más utilizado de la industria. El objettivo de este curso es proporcionarte una formación completa a través de cuatro módulos: inicial, arquitectura, animación de personajes y presentación de producto', 'Este curso tiene una duración de 25 horas', '15', '', '', '', 'El objetivo de este curso es proporcionar al alumno una formación completa acerca de 3dsmax', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en obtener una formación completa en cuando al uso de 3dsmax', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso requiere el uso del software Autodesk 3dsmax', 'Este curso es de tipo online con soporte', '', '', '', 0, '', 345),
(4, 'wordpress', 'Curso de Wordpress', 'Aprende a crear tus propias páginas web con el gestor de contenido más potente', 1, 1, 'logo-wordpress_318-33553.jpg', 'Wordpress es el software de creación de sitios web más usado en el mercado. El objetivo de este curso es mostrarte, paso a paso, como usar Wordpress.', '15 hroas', '20', '', '', '', 'El objetivo de este curso es que el alumno aprenda a usar el software Wordpress para crear sus propios sitios web sin programar', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona que desee aprender a crear sitios web sin necesidad de programar', 'Este curso tiene una medología completamente práctica, mostrando el uso del software a partir de un ejercicio completamente práctico', 'Este curso no requiere ningun tipo de software', 'Este es un curso online con soporte', '', '', '', 0, '0', 399),
(8, 'j2ee', 'Curso completo en desarrollo con Java y J2EE', 'Desarrolla aplicaciones web de escritorio y en el servidor con Java, Java Enterprise y MySQL', 1, 1, 'java-1.png', 'En este completo curso de Java y Java Enterprise, el alumno aprenderá tanto a crear aplicaciones de escritorio basadas en Java, como a crear aplicaciones web basadas en Java Enterprise. Además, tambien mostraremos como conectar tanto las aplicaciones de escritorio como las aplicaciones web a un servidor de bases de datos basado en MySQL', 'Este curso tiene una duración de 25 horas', '50', '', '', '', 'El objetivo de este curso es que el alumno aprenda a crear completas aplicaciones de escritorio y en la web, basadas en Java y Java Enterprise', 'Este curso empieza completamente desde cero y no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona que desee aprender a crear aplicaciones basadas en Java en en Java Enterprise', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso no requiere ningun software de partida', 'Este es un curso online con soporte', '', '', '', 0, '0', 576),
(7, 'aplicacionesweb', 'Curso en desarrollo de aplicaciones web', 'Desarrolla completas aplicaciones web 2.0 con HTML5, CSS3, PHP, Javascript y MySQL', 1, 1, 'aplicacionesweb.jpeg', 'Curso completo de creación de aplicaciones web, en el que aprenderás todo lo necesario para crear completas aplicaciones basadas en HTML5, CSS3, Javascript, PHP y MySQL', 'Este curso tiene una duración de 30 horas', '50', '', '', '', 'El curso tiene como objetivo mostrar al alumnado los procesos completos de creación de una web tanto en el lado del cliente como en el lado del servidor', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en conocer cómo se crean completas aplicaciones web', 'El curso muestra los contenidos teóricos constantemente aplicados en ejercicios practicos', 'Este curso requiere el uso de editores de código de software libre. Durante el curso se ofrecen las indicaciones necesarias para obtener estos editores', 'Este es un curso online con soporte', '', '', '', 0, '0', 597),
(9, 'html5css3', 'Curso en desarrollo de webs con HTML5 y CSS3', 'Desarrolla sitios web con HTML5 y CSS3', 1, 1, 'html5-logo-300.png', 'HTML5 y CSS3 son las tecnologías base para realizar cualquier web a dia de hoy. El objetivo de este curso es mostrar a los alumnos como desarrollar completas webs usando estos dos lenguajes de programacion', 'Este curso tiene una duración de 10 horas', '40', '', '', '', 'El objetivo de este curso es enseñar a los alumnos a crear paginas web basadas en HTML5', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en aprender a crear sitios web con HTML5 y CSS3', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'El curso no requiere el uso de ningun software especial. Se requiere disponer de un ordenador o dispositivo conectado a internet', 'Este es un curso online con soporte', '', '', '', 0, '0', 471),
(10, 'prestashop', 'Curso de PrestaShop', 'Crea tu propia tienda online con Prestashop sin necesidad de programar', 1, 1, 'descarga.png', 'El comercio online esta en auge, y todo parece indicar que esta tendencia se va a mantener a lo largo de los próximos años. PrestaShop es un software que te permite crear tu propia tienda virtual y publicarla online, sin tener que aprender a programar', 'Este curso tiene una duración de 15 horas', '40', '', '', '', 'El objetivo de este curso es enseñar a los alumnos a crear su propia tienda online, de forma gratuita y sin tener que aprender a programar', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona que quiera crear su propia tienda virtual onlin', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso no requiere ningun software de partida', 'Este es un curso online con soporte', '', '', '', 0, '1', 442),
(11, 'robotica', 'Curso de robotica con Arduino e impresión 3D', 'Crea tus propios robots usando Arduino como plataforma electrónica e imprimiendo tus propias piezas en 3D', 1, 1, 'Arduino_logo_pantone_2.png', 'Arduino es una plataforma de hardware libre que te permite crear tus propios sistemas animatrónicos de la forma más sencilla posible. ', 'Este curso tiene una duración de 25 horas', '49', '', '', '', 'El objetivo de este curso es mostrar a los alumnos como crear completos proyectos animatrónicos basados en Arduino e impresión 3D', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en aprender a crear sistemas animatrónicos basados en Arduino para la parte electrónica y técnicas de impresión 3D para las piezas del ensamblaje', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso no requiere ningun software de partida', 'Este es un curso online con soporte', '', '', '', 0, '0', 1254),
(12, 'sculptris', 'Escultura digital con Sculptris', 'Esculpe en 3D con el software gratuito más potente actualmente en el mercado', 1, 1, 'sculptris_logo.png', 'Sculptris es un programa de escultura digital 3D con un enfoque único, basado en Voxeles. Nos permite crear completos modelos 3D esculpidos con una técnica que nos ofrece resolución infinita, y un conjunto de herramientas que posibilitan el modelado sencillo de modelos 3D organicos', 'Este curso tiene una duración de 10 horas', '40', '', '', '', 'El objetivo de este curso es enseñar a los alumnos a realizar escultura digital 3D usando Sculptris', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en aprender técnicas de escultura digital 3D', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso no requiere ningun software de partida', 'Este es un curso online con soporte', '', '', '', 0, '1', 510),
(14, '3dsmaxbasico', 'Curso inicial de 3D Studio MAX', 'Aprende los fundamentos de trabajo de 3d studio max', 1, 1, '3ds-max-icon-400px-social.png', '3dsmax es el software de animación 3D más utilizado de la industria. El objettivo de este curso es proporcionarte una formación esencial de base para poder realizar cualquier tipo de proyecto', 'Este curso tiene una duración de 10 horas', '40', '', '', '', 'El objetivo de este curso es proporcionar una formación de base a cualquier persona interesada en realizar proyectos de infografía 3D con 3dsmax', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona interesada en aprender a usar 3dsmax', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso requiere que el alumno tenga instalado el software 3dsmax en su ordenador', 'Este es un curso online con soporte', '', '', '', 0, '', 405),
(15, '3dsmaxarquitectura', 'Curso de modelado y render arquitectónico con 3dsmax', 'Crea tus propios proyectos de arquitectura e interiorismo en 3D ', 1, 1, '3ds-max-icon-400px-social.png', ' 3D Studio Max es el software más usado para la creación de proyectos de visualización arquitectónica en 3D. Gracias a este curso, podrás no solo modelar entre tus proyectos, sino también obtener representaciones foto realistas de los mismos ', '', '40', '', '', '', ' El objetivo de este curso es que el alumno aprenda a crear proyectos ártica arquitectónicos tridimensionales a partir de los planos proporcionados en dos dimensiones. A lo largo del curso se muestra tanto la fase de modelado, como la materialidad, como la iluminación, como las cámaras, así como realizar animaciones de  tipo arquitectónico ', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '', 361),
(16, '3dsmaxpersonajes', 'Curso de modelado y animación de personajes con 3d studio max', 'Aprende a modelar, rigear, y animar tus propios personajes en 3D con 3dsmax 2014', 1, 1, '3ds-max-icon-400px-social.png', 'Tres de estudio Max es uno de los programas más usados para crear completas animaciones de personajes tridimensionales.  En este curso tres de estudio Max es uno de los programas más usados para crear completas animaciones de personajes tridimensionales. En este curso estaremos visualizando las herramientas necesarias para modelar, colocar esqueletos, y animar personajes en 3D ', '', '40', '', '', '', ' El objetivo de este curso es mostrar todas las herramientas y las técnicas necesarias para conseguir crear completas animaciones de personajes bípedos en 3D usando el software 3D Studio Max ', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '', 412),
(17, 'blender', 'Curso completo de Blender', 'Aprende a crear todo tipo de proyectos 3D con el software libre más potente', 1, 1, 'BlenderDesktopLogo.png', ' En este curso completo aprenderás todos los aspectos del manejo de Blender, el programa de software libre de creación 3D más extendido actualmente. Este curso incluye tanto los módulos inicial, como el de modelado y representación arquitectónica, modelado y representación de personajes, efectos especiales, partículas, simulación de humo y fuego, y representación foto realista ', '', '40', '', '', '', ' El objetivo de este curso consiste en proporcionar una formación completa al estudiante para que pueda afrontar cualquier proyecto en el que se requiera el uso del programa Blender 3D ', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 554),
(18, 'blendercycles', 'Curso de render fotorrealista con Blender Cycles', 'Crea tus imágenes con el más alto grado de fotorrealismo con el motor de render integrado dentro de Blender', 1, 1, 'BlenderDesktopLogo.png', ' Blender incorpora un  Motor de representación física que nos permite obtener imágenes y animaciones de la máxima calidad. En este curso te enseñamos cómo crear diferentes tipos de escena para sacarle el máximo partido a este excelente motor de representación 3D ', '', '40', '', '', '', 'El objetivo de este curso consiste en proporcionar una formación completa en cuanto a generación de imágenes y animaciones foto realistas con Blender 3D', 'para realizar este curso se requiere tener conocimientos fluidos de base de Blender', ' Éste curso está dirigido a todas aquellas personas que desean realizar representaciones foto realistas de la máxima calidad utilizando Blender 3D ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 469),
(19, 'scratch', 'Curso de Scratch', 'Introdúcete en el mundo de la programación con el lenguaje Scratch', 1, 1, 'Scratch_Logo.png', 'Si deseas aprender a programar completamente desde cero, pero de la forma más sencilla, posible, este es el curso indicado para comenzar. Scratch es un entorno visual en el que se realizan programas de con nodos y bloques, de forma que cualquier persona, especialmente los más pequeños, pueden comenzar su camino en el mundo de la programación.', '12 horas', '20', '', '', '', 'El objetivo de este curso es que el alumno aprenda los conceptos básicos necesarios para programar en cualquier lenguaje, a través del sistema de creación visual de Scratch', 'Este curso no requiere conocimientos previos', 'Este curso esta dirigido a cualquier persona que quiera empezar a aprender a programar, y quiera realizar la tarea mediante un lenguaje visual', 'El curso está basado en ejercicios prácticos en los que se va aplicando la teoría necesaria', 'Para realizar este curso unicamente es necesario un ordenador con un navegador web y conexión a internet', 'Este es un curso online con soporte', '', '', '', 0, '0', 425),
(20, 'bluegriffon', 'Curso de desarrollo HTML5 con BlueGriffon', 'Bluegriffon es un editor web de código abierto', 1, 1, 'bluegriffon.png', 'Bluegriffon es un completo editor de código HTML de tipo WYSIWYG', '', '20', '', '', '', '', 'Este curso no requiere conocimientos previos', 'Cualquier persona que quiera aprender a crear sus propios sitios web', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', 'Este curso no requiere ningun software de partida', 'Curso online gratuito sin soporte', '', '', '', 0, '1', 599),
(21, 'photoshop', 'Curso de Photoshop', 'Aprende a tratar imágenes basadas en pixeles', 1, 1, 'Photoshop.png', ' Photoshop es el programa comercial de retoque fotográfico y de imágenes más extendido del mercado. Gracias a este curso aprenderás a manejar este imprescindible programa que te permitirá crear, editar y retocar tus propias imágenes ', '', '20', '', '', '', ' El objetivo de este curso consiste en proporcionar una formación completa, paso a paso y desde cero del programa Photoshop para permitir que el alumno pueda realizar proyectos gráficos en los que haya que realizar retoques de imágenes basadas en píxeles ', ' Este curso no requiere ningún conocimiento previo ', ' Éste curso está dirigido a todas aquellas personas que deseen formarse en el uso de la herramienta Photoshop ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 650),
(22, 'illustrator', 'Illustrator', 'Aprende a crear ilustraciones vectoriales', 1, 1, 'Illustrator_CC_icon.png', ' Si vas a generar ilustraciones vectoriales, este es el programa imprescindible que debes aprender, ya que contiene todas las herramientas necesarias para realizar cualquier proyecto gráfico basado en vectores ', '', '20', '', '', '', ' El objetivo de este curso es proporcionar al alumno el conocimiento del uso de la herramienta, y a crear completas ilustraciones vectoriales por ordenador ', ' Este curso no requiere conocimientos previos ', ' Éste curso está dirigido a cualquier persona interesada en aprender a crear ilustraciones vectoriales ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 435),
(23, 'inDesign', 'inDesign', 'Aprende a crear maquetaciones multipágina', 1, 1, 'Adobe_InDesign_CC_icon.svg.png', ' Esta es la herramienta imprescindible si quieres aprender a realizar maqueta aciones de documentos multi página. Esta herramienta es de uso imprescindible junto con una herramienta de edición de imágenes y otra de ilustración vectorial, para poder crear completos proyectos gráficos ', '', '20', '', '', '', ' El objetivo de esta formación es mostrarle al alumno los procesos y las metodologías involucrados en la creación de documentos multi página maqueta dos con este software. Además, se hace un refuerzo muy importante en la relación de este programa con Photoshop e illustrator ', 'Este curso requiere conocimientos previos del uso de herramientas de Adobe', ' Éste curso está dirigido a cualquier persona interesada en aprender a realizar maquetación es multi página usando Adobe InDesign ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 408),
(24, 'proyectosgraficos', 'Proyectos gráficos con Adobe Creative Cloud', 'En este curso desarrollamos proyectos prácticos mediante la combinación de Photoshop, Illustrator e inDesign', 1, 1, 'adobecs.jpeg', 'En este curso te mostramos cómo crear proyectos gráficos mediante la combinación de herramientas de diseño de Adobe', '', '20', '', '', '', '', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 410),
(25, 'flashcs5', 'Crea sitios web con Flash', 'Aprende a crear tus propios sitios web con Adobe Flash', 1, 1, 'flashlogo.jpg', ' Flash es una tecnología de Adobe que nos permite crear páginas web dinámicas interactivas. Éste cursos que te muestra paso a paso cómo realizar un sitio web usando la tecnología de Adobe flash ', '', '20', '', '', '', ' El objetivo de este curso es proporcionar al alumno los conocimientos necesarios para desarrollar cualquier proyecto de desarrollo de sitio web usando la tecnología de Adobe flash. Se muestran las herramientas principales de la interfaz de usuario, así como una introducción a la programación en el lenguaje específico de la tecnología flash ', ' Este curso no requiere conocimientos previos ', ' Éste curso está dirigido a cualquier persona interesada en aprender a crear sitios web usando la tecnología de Adobe flash ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 448),
(26, 'gimp', 'GIMP', 'Edita imágenes con el editor de código libre más potente', 1, 1, 'GIMP.jpg', ' En este curso aprenderás a editar tus propias imágenes y a retocar imágenes existentes usando el software libre más utilizado del sector. Este programa te permite crear tus propios proyectos gráficos utilizando un software completamente abierto, y sin tener que pagar por una licencia ', '', '0 €', '', '', '', ' El objetivo de este curso es proporcionar los conocimientos necesarios para crear cualquier proyecto gráfico utilizando software libre ', ' Este curso no requiere conocimientos previos ', ' Este curso está dirigido a cualquier persona interesada en aprender a crear proyectos gráficos basados en imágenes de mapas de bits utilizando uso fuera abierto ', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 499),
(27, 'inikscape', 'Inkscape', 'Creación de ilustraciones vectoriales con software libre', 1, 1, '1024px-Inkscape_Logo.svg.png', 'Con este curso aprenderás a crear ilustraciones vectoriales con el software libre Inkscape. Las ilustraciones vectoriales tienen una calidad ilimitada, ya que no se basan en píxeles, y son esenciales para el trabajo de ilustracion', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', 'Este curso está dirigido a cualquier persona interesada en aprender diseño gráfico', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 445),
(28, 'access', 'Access 2010', 'Creación de bases de datos con Access 2010', 1, 1, 'microsoft-access-logo.png', 'La gestión de bases de datos es un proceso imprescindible en cualquier empresa moderna. A través de este curso aprenderás a gestionar bases de datos de una forma eficiente, usando el software Microsoft Access', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', 'Este curso está dirigido a cualquier persona que desee aprender a trabajar con bases de datos empresariales', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 408),
(29, 'php', 'Curso de PHP', 'Aprende a crear aplicaciones en el lado del servidor', 1, 1, 'php.png', 'PHP es el lenguaje de programación del lado del servidor más utilizado para aplicaciones web 2.0. Aprende todo lo necesario para programar aplicaciones web con este curso de PHP', '', '40', '', '', '', '', ' Este curso no requiere conocimientos previos ', 'Este curso está dirigido a cualquier persona interesada en aprender a programar en el lenguaje PHP', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 499),
(30, 'phpprogramarunblog', 'Taller: Como programar un blog en PHP', 'Taller para aprender a programar un blog en PHP', 1, 1, 'php.png', 'En este taller te mostramos un ejemplo práctico de programación con PHP, para crear un blog con contenido', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', 'Este taller esta dirigido a personas que quieran profundizar en sus conocimientos en el lenguaje PHP', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 365),
(31, 'html5portafolio', 'Creación de un portafolio con HTML5', 'Taller de creación de un portafolio en HTML5 y CSS3', 1, 1, '2000px-HTML5_logo_and_wordmark.svg.png', 'Este taller te mostrará cómo crear un blog de portafolio, ussando tecnologías nativas como HTML5 y Javascript', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', 'Este curso está dirigido a personas que quieran aprender a hacer un portafolio con html5 y javascript', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 400),
(32, 'htmlmaquetacionmovil', 'Taller de maquetación móvil en HTML5', 'Taller en el que aprenderás como maquetar una aplicación móvil en HTML5', 1, 1, '2000px-HTML5_logo_and_wordmark.svg.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 387),
(33, 'mysql', 'MySQL', 'Curso para aprender a trabajar con bases de datos MySQL a través de phpMyAdmin', 1, 1, 'My-SqlLogo.png', '', '', '', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 407),
(34, 'dreamweavercs5', 'Dreamweaver CS5', 'Crea tus propios sitios web con Dreamweaver', 1, 1, 'dreamweaverloho.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 427),
(35, 'dreamweaverphp', 'PHP con dreamweaver', 'Aprende a crear aplicaciones del lado del servidor con PHP en Dreamweaver', 1, 1, 'dreamweaverloho.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 398),
(36, 'dreamweavertiendaonline', 'Creación de una tienda online con Dreamweaver', 'Aprende a maquetar una tienda online con HTML5 y CSS3 en Dreamweaver', 1, 1, 'dreamweaverloho.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 431),
(37, 'dreamweaverjquery', 'jQuery con Dreamweaver', 'Aprende a trabajar con la librería jQuery en Dreamweaver', 1, 1, 'dreamweaverloho.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 405),
(38, 'webapps', 'Curso de creación de Webapps', 'Aprende a crear apps móviles web con este completo curso', 1, 1, 'webapplogo.png', '', '', '40', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 424),
(39, 'html5css3-2', 'Curso de creación de sitios web con HTML5 y CSS3', 'Aprende a crear sitios web con las ultimas tecnologías', 1, 1, '2000px-HTML5_logo_and_wordmark.svg.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 403),
(40, 'windowsserver2012', 'Windows Server 2012', 'Instala y administra tu servidor con Windows Server versión 2012', 1, 1, 'windows-server-blue-a517bed8722d2e78.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 565),
(41, 'phpsqlite', 'Bases de datos SQLite con PHP', 'aprende a crear tus propias bases de datos SQLite y gestionarlas con PHP', 1, 1, 'Sqlite-square-icon.svg.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 627),
(42, 'phpcrearcms', 'Crea un CMS con PHP', 'Con este taller aprenderás a crear un CMS con PHP', 1, 1, 'php.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 477),
(43, 'phpintroduccion', 'Introducción a PHP', 'Introdúcete en el mundo de la programación de aplicaciones en el servidor', 1, 1, 'php.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 397),
(44, 'introduccionseo', 'Introducción al SEO', 'Conoce las técnicas que te permitirán posicionar tu sitio web', 1, 1, '577034-106vxE1514532250.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 399),
(45, 'analyticsintroduccion', 'Introducción a Analytics', 'Aprende a analizar a los visitantes de tus sitios web', 1, 1, 'google_analytics_oficial.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 398),
(47, 'mysql56', 'MySQL 5.6', 'Apende a trabajar con bases de datos MySQL a través del gestor phpMyAdmin', 1, 1, 'mysql-logo-square.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 408),
(48, 'mysql558', 'MySQL 5.5', 'Aprende a crear bases de datos con MySQL y a administrarlas con phpMyAdmin', 1, 1, 'mysql-logo-square.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 379),
(49, 'mysqlconexionphp', 'Conexión de MySQL con PHP', 'Aprende a conectar tus aplicaciones PHP con un servidor de bases de datos MySQL', 1, 1, 'mysql-logo-square.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 388),
(50, 'blendersatelites', 'Taller de creación de animación con Blender', 'El objetivo de este taller es ofrecerte una aplicación práctica de la creación de proyectos con Blender a través de una animación sobre una nave espacial que se acerca a la órbita de saturno', 1, 1, 'blender_logo_square.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 368),
(51, 'blenderarquitectura', 'Taller de arquitectura 3D con Blender', 'Aprede a crear y representar edificios en 3D con Blender', 1, 1, 'blender_logo_square.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 392),
(52, 'blenderanimacionpersonajes', 'Taller de animación de personajes 3D con Blender', 'Aprende a modelar, rigear, y animar tus propios personajes en 3D con Blender', 1, 1, 'blender_logo_square.png', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '1', 427),
(53, 'wordpress41', 'Curso de Wordpress 4.1', 'Crea tu propio blog sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 407),
(54, 'wordpress31', 'Curso de Wordpress 3.1', 'Crea tu propio blog sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '20', '', '', '', '', ' Este curso no requiere conocimientos previos ', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 388),
(55, 'wordpressconstructor', 'Plugin Constructor para Wordpress', 'Crea tus propias plantillas sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '', '', '', '', '', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 371),
(56, 'wordpress35', 'Curso de Wordpress 3.5', 'Crea tu propio blog sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '', '', '', '', '', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 367),
(57, 'wordpress342', 'Wordpress 3.4.2', 'Crea tu propio blog sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '', '', '', '', '', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 331),
(58, 'wordpress351', 'Wordpress 3.5.1', 'Crea tu propio blog sin tener que programar', 1, 1, 'logo-wordpress_318-33553.jpg', '', '', '', '', '', '', '', '', '', 'Este curso muestra el contenido a través de ejercicios completamente prácticos', '', 'Este es un curso online con soporte', '', '', '', 0, '0', 381),
(59, 'suscripcion', 'Suscripcion', '', 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombresninos`
--

CREATE TABLE `nombresninos` (
  `COL 1` varchar(10) DEFAULT NULL,
  `COL 2` varchar(9) DEFAULT NULL,
  `COL 3` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nombresninos`
--

INSERT INTO `nombresninos` (`COL 1`, `COL 2`, `COL 3`) VALUES
('', 'NI?OS', ''),
('nombrenino', 'totalnino', 'genero'),
('HUGO', '3832', 'M'),
('LUCAS', '3633', 'M'),
('MARTIN', '3349', 'M'),
('DANIEL', '3243', 'M'),
('PABLO', '3157', 'M'),
('MATEO', '3116', 'M'),
('ALEJANDRO', '3028', 'M'),
('LEO', '2674', 'M'),
('ALVARO', '2512', 'M'),
('MANUEL', '2501', 'M'),
('ADRIAN', '2428', 'M'),
('DAVID', '2208', 'M'),
('', '', ''),
('nombrenina', 'totalnina', ''),
('LUCIA', '4037', 'F'),
('SOFIA', '3732', 'F'),
('MARIA', '3561', 'F'),
('MARTINA', '3559', 'F'),
('PAULA', '2860', 'F'),
('JULIA', '2772', 'F'),
('EMMA', '2632', 'F'),
('VALERIA', '2539', 'F'),
('DANIELA', '2524', 'F'),
('ALBA', '2370', 'F'),
('SARA', '2274', 'F'),
('CARLA', '2095', 'F');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contrasena` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usuario` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Identificador`, `nombre`, `contrasena`, `usuario`, `email`) VALUES
(1, 'jocarsa', 'jocarsa', 'Jose Vicente Carratala sanchis', 'hola'),
(2, 'pedro', 'pedro', 'pedrin', 'fallo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `apellidos`
--
ALTER TABLE `apellidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agenda`
--
ALTER TABLE `agenda`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `apellidos`
--
ALTER TABLE `apellidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3862;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Base de datos: `ejemplo`
--
CREATE DATABASE IF NOT EXISTS `ejemplo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `ejemplo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemploa`
--

CREATE TABLE `ejemploa` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `peso` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ejemploa`
--
ALTER TABLE `ejemploa`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ejemploa`
--
ALTER TABLE `ejemploa`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `hero`
--
CREATE DATABASE IF NOT EXISTS `hero` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hero`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `boton1` varchar(255) NOT NULL,
  `boton2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`Identificador`, `titulo`, `texto`, `boton1`, `boton2`) VALUES
(1, 'titulo primera seccion', 'texto primera seccion', 'boton1', 'boton2'),
(2, 'titulo segubda seccion', 'texto 2 seccion', 'boton2', 'boton2'),
(3, 'titulo 3seccion', 'texto 3 seccion', 'boton3', 'boton3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

--
-- Volcado de datos para la tabla `pma__bookmark`
--

INSERT INTO `pma__bookmark` (`id`, `dbase`, `user`, `label`, `query`) VALUES
(1, 'practica dama', 'root', 'Primerpedido', 'SELECT \n\nusuarios.nombre AS \'Nombre del usuario\',\nusuarios.aficiones AS \'Lo que le gusta hacer\',\npedidosa.cantidad AS \"Cantidad\",\nproductos.nombre AS \"Que voy a comprar\",\nproductos.precio AS \"Precio\",\npedidosa.cantidad*productos.precio AS \"TOTAL\"\n\nFROM pedidosa\n\nLEFT JOIN usuarios\n\nON pedidosa.idusuario = usuarios.Identificador\n\nLEFT JOIN productos\nON pedidosa.idproducto = productos.Identificador;');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Volcado de datos para la tabla `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'DBNavidad', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"cachorros\",\"customers\",\"donaciones\",\"gatos\",\"inventory\",\"orders\",\"order_items\",\"otros\",\"perretes\",\"perretess\",\"products\"],\"table_structure[]\":[\"cachorros\",\"customers\",\"donaciones\",\"gatos\",\"inventory\",\"orders\",\"order_items\",\"otros\",\"perretes\",\"perretess\",\"products\"],\"table_data[]\":[\"cachorros\",\"customers\",\"donaciones\",\"gatos\",\"inventory\",\"orders\",\"order_items\",\"otros\",\"perretes\",\"perretess\",\"products\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Volcado de datos para la tabla `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'hoja 1', 'table', 'practica dama', ''),
('root', 'pedidos', 'table', 'practica dama', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"cover\",\"table\":\"cover\"},{\"db\":\"blog\",\"table\":\"blog\"},{\"db\":\"hero\",\"table\":\"secciones\"},{\"db\":\"cursojava\",\"table\":\"usuarios\"},{\"db\":\"practica dama\",\"table\":\"usuarios\"},{\"db\":\"cursojava\",\"table\":\"agenda\"},{\"db\":\"cursojava\",\"table\":\"apellidos\"},{\"db\":\"cursojava\",\"table\":\"nombresninos\"},{\"db\":\"practica dama\",\"table\":\"bases_terminar_1\"},{\"db\":\"practica dama\",\"table\":\"bases_terminar\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-02-16 18:16:43', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"DefaultConnectionCollation\":\"utf8mb4_spanish_ci\",\"NavigationWidth\":262,\"Console\\/Height\":9.971000000000004}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `practica dam`
--
CREATE DATABASE IF NOT EXISTS `practica dam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `practica dam`;
--
-- Base de datos: `practica dama`
--
CREATE DATABASE IF NOT EXISTS `practica dama` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `practica dama`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bases_terminar`
--

CREATE TABLE `bases_terminar` (
  `COL 2` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bases_terminar`
--

INSERT INTO `bases_terminar` (`COL 2`) VALUES
('NI?OS'),
('191.56'),
('3832'),
('3633'),
('3349'),
('3243'),
('3157'),
('3116'),
('3028'),
('2674'),
('2512'),
('2501'),
('2428'),
('2208'),
('NI?AS'),
('181.20'),
('4037'),
('3732'),
('3561'),
('3559'),
('2860'),
('2772'),
('2632'),
('2539'),
('2524'),
('2370'),
('2274'),
('2095');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplos`
--

CREATE TABLE `ejemplos` (
  `nombre` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ejemplos`
--

INSERT INTO `ejemplos` (`nombre`) VALUES
('ANTONIO'),
('MANUEL'),
('JOSE'),
('FRANCISCO'),
('DAVID'),
('JUAN'),
('JAVIER'),
('JOSE ANTONIO'),
('DANIEL'),
('FRANCISCO JAVIER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoja 1`
--

CREATE TABLE `hoja 1` (
  `A` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hoja 1`
--

INSERT INTO `hoja 1` (`A`) VALUES
('nombre'),
('ANTONIO'),
('MANUEL'),
('JOSE'),
('FRANCISCO'),
('DAVID'),
('JUAN'),
('JAVIER'),
('JOSE ANTONIO'),
('DANIEL'),
('FRANCISCO JAVIER'),
('nombre'),
('ANTONIO'),
('MANUEL'),
('JOSE'),
('FRANCISCO'),
('DAVID'),
('JUAN'),
('JAVIER'),
('JOSE ANTONIO'),
('DANIEL'),
('FRANCISCO JAVIER'),
('nombre'),
('ANTONIO'),
('MANUEL'),
('JOSE'),
('FRANCISCO'),
('DAVID'),
('JUAN'),
('JAVIER'),
('JOSE ANTONIO'),
('DANIEL'),
('FRANCISCO JAVIER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoja1`
--

CREATE TABLE `hoja1` (
  `nombrenino` varchar(10) DEFAULT NULL,
  `totalnino` varchar(9) DEFAULT NULL,
  `genero` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hoja1`
--

INSERT INTO `hoja1` (`nombrenino`, `totalnino`, `genero`) VALUES
('HUGO', '3832', 'M'),
('LUCAS', '3633', 'M'),
('MARTIN', '3349', 'M'),
('DANIEL', '3243', 'M'),
('PABLO', '3157', 'M'),
('MATEO', '3116', 'M'),
('ALEJANDRO', '3028', 'M'),
('LEO', '2674', 'M'),
('ALVARO', '2512', 'M'),
('MANUEL', '2501', 'M'),
('ADRIAN', '2428', 'M'),
('DAVID', '2208', 'M'),
('nombrenina', 'totalnina', 'genero'),
('LUCIA', '4037', 'F'),
('SOFIA', '3732', 'F'),
('MARIA', '3561', 'F'),
('MARTINA', '3559', 'F'),
('PAULA', '2860', 'F'),
('JULIA', '2772', 'F'),
('EMMA', '2632', 'F'),
('VALERIA', '2539', 'F'),
('DANIELA', '2524', 'F'),
('ALBA', '2370', 'F'),
('SARA', '2274', 'F'),
('CARLA', '2095', 'F');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `Identificador` int(255) NOT NULL,
  `idusuario` int(255) NOT NULL,
  `idproducto` int(255) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`Identificador`, `idusuario`, `idproducto`, `cantidad`) VALUES
(0, 1, 1, 1),
(2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidosa`
--

CREATE TABLE `pedidosa` (
  `Identificador` int(255) NOT NULL,
  `idusuario` int(255) NOT NULL,
  `idproducto` int(255) NOT NULL,
  `cantidad` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `pedidosa`
--

INSERT INTO `pedidosa` (`Identificador`, `idusuario`, `idproducto`, `cantidad`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 5),
(3, 3, 2, 12),
(4, 3, 2, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Identificador`, `nombre`, `descripcion`, `precio`) VALUES
(1, 'cerveza', 'fresquita y deliciosa', '1.50'),
(2, 'vino', 'suave y relajante', '1.80');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `peso` float NOT NULL,
  `aficiones` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `edad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Identificador`, `nombre`, `apellidos`, `peso`, `aficiones`, `edad`) VALUES
(1, 'yaesta', 'Pérez Martínez', 78.4, ' Le gusta beber cerveza y comer bollicaos', 43),
(3, 'pedro', 'marin', 78, 'comer chocolate', 55),
(4, 'Luis', 'Medina', 66, 'el bailoteo', 25),
(19, 'rtyrty', 'fsdf', 77, 'hfghfgh', 12);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedidosa`
--
ALTER TABLE `pedidosa`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedidosa`
--
ALTER TABLE `pedidosa`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Base de datos: `proyectonavidad`
--
CREATE DATABASE IF NOT EXISTS `proyectonavidad` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `proyectonavidad`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cachorros`
--

CREATE TABLE `cachorros` (
  `Identificador` int(255) NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Raza` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Edad` int(255) NOT NULL,
  `Personalidad` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Chip` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Localizacion` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `cachorros`
--

INSERT INTO `cachorros` (`Identificador`, `Nombre`, `Raza`, `Edad`, `Personalidad`, `Chip`, `Localizacion`) VALUES
(1, 'Curro', 'Mastin', 1, 'Tranquilo', 'Si', 'Elche'),
(2, 'Lola', 'Pastor', 1, 'Valiente', 'No', 'Ademuz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created`, `modified`, `status`) VALUES
(4, 'dgdfg', 'dfgdfgdfg', '24234434', 'dfgdfgdfgdfgd', '2023-01-02 14:47:08', '2023-01-02 14:47:08', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `donaciones`
--

CREATE TABLE `donaciones` (
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Apellidos` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Telefono` int(255) NOT NULL,
  `Cantidad` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `donaciones`
--

INSERT INTO `donaciones` (`nombre`, `Apellidos`, `email`, `Telefono`, `Cantidad`) VALUES
('gdfg', '', 'cuentabombero@gmail.com', 0, 0),
('pruebados', '', 'vkk@dos.com', 0, 0),
('pruebados', '', 'vkk@dos.com', 0, 0),
('pruebados', '', 'vkk@dos.com', 0, 0),
('asd', '', 'cuentabombero@gmail.com', 0, 0),
('asdasd', '', 'cuentabombero@gmail.com', 0, 0),
('asdasd', '', 'cuentabombero@gmail.com', 0, 0),
('asdasd', '', 'cuentabombero@gmail.com', 0, 0),
('asdasd', '', 'cuentabombero@gmail.com', 0, 0),
('asdasd', '', 'cuentabombero@gmail.com', 0, 0),
('asdasd', '', 'cuentabombero@gmail.com', 0, 0),
('asdasd', '', 'cuentabombero@gmail.com', 0, 0),
('', '', '', 0, 0),
('rtyrty', '', 'cuentabombero@gmail.com', 0, 0),
('rtyrty', '', 'cuentabombero@gmail.com', 0, 0),
('rtyrty', '', 'cuentabombero@gmail.com', 0, 0),
('rtyrty', '', 'cuentabombero@gmail.com', 0, 0),
('rtyrty', '', 'cuentabombero@gmail.com', 0, 0),
('rtyrty', '', 'cuentabombero@gmail.com', 0, 0),
('rtyrty', '', 'cuentabombero@gmail.com', 0, 0),
('a?ado', '', 'cuentabombero@gmail.com', 0, 0),
('a?ado', '', 'cuentabombero@gmail.com', 0, 0),
('a?ado', '', 'cuentabombero@gmail.com', 0, 0),
('a?ado', '', 'cuentabombero@gmail.com', 0, 0),
('a?ado', '', 'cuentabombero@gmail.com', 0, 0),
('a?ado', '', 'cuentabombero@gmail.com', 0, 0),
('a?ado', '', 'cuentabombero@gmail.com', 0, 0),
('carrito', '', 'carrito@carrito.com', 0, 0),
('', '', '', 0, 0),
('añado', '', 'cuentabombero@gmail.com', 0, 0),
('rtyrty', '', 'cuentabombero@gmail.com', 0, 0),
('rtyrty', '', '', 0, 0),
('rtyrty', 'Fran Moreno', '', 3124234, 1212),
('rtyrty', 'Fran Moreno', '', 3124234, 1212),
('a?ado', 'Fran Moreno', 'cuentabombero@gmail.com', 3124234, 23),
('a?ado', 'Fran Moreno', 'cuentabombero@gmail.com', 3124234, 3333),
('a?ado', 'Fran Moreno', 'cuentabombero@gmail.com', 3124234, 3333),
('a?ado', 'Fran Moreno', 'cuentabombero@gmail.com', 3124234, 3333),
('a?ado', 'prueba', 'cuentabombero@gmail.com', 234234, 1212),
('ggg', 'rrrrr', 'cuentabombero@gmail.com', 2123123, 2323);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gatos`
--

CREATE TABLE `gatos` (
  `Identificador` int(255) NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Raza` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Edad` int(255) NOT NULL,
  `Personalidad` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Chip` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Localizacion` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `gatos`
--

INSERT INTO `gatos` (`Identificador`, `Nombre`, `Raza`, `Edad`, `Personalidad`, `Chip`, `Localizacion`) VALUES
(1, 'Lolo', 'Mestizo', 2, 'Tranquilo', 'Si', 'Elche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory`
--

CREATE TABLE `inventory` (
  `id` int(255) NOT NULL,
  `name` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `description` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `image` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otros`
--

CREATE TABLE `otros` (
  `Identificador` int(255) NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Raza` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Edad` int(255) NOT NULL,
  `Personalidad` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Chip` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Localizacion` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perretes`
--

CREATE TABLE `perretes` (
  `Identificador` int(255) NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Raza` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Edad` int(255) NOT NULL,
  `Personalidad` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Chip` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Localizacion` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `perretes`
--

INSERT INTO `perretes` (`Identificador`, `Nombre`, `Raza`, `Edad`, `Personalidad`, `Chip`, `Localizacion`) VALUES
(1, 'Dogo', 'Dogo Argentino', 3, 'Tranquilote', 'Si', 'Valencia'),
(2, 'Bull', 'PitBull', 5, 'Territorial', 'Si', 'Valencia'),
(3, 'Chop', 'Chihuahua', 1, 'Travieso, muerde', 'No', 'Madrid'),
(4, 'Lina', 'Husky', 2, 'Juguetona', 'Si', 'Barcelona'),
(5, 'Lina', 'Husky', 2, 'Juguetona', 'Si', 'Barcelona'),
(6, 'Lina', 'Husky', 2, 'Juguetona', 'Si', 'Barcelona'),
(17, 'Nuevo ', 'proyercto', 0, '', '', ''),
(18, 'Nuevo ', 'proyercto', 0, '', '', ''),
(19, '', '', 0, '', '', ''),
(20, '', '', 0, '', '', ''),
(21, 'esto ', 'ya ', 0, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perretess`
--

CREATE TABLE `perretess` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `raza` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `edad` int(255) NOT NULL,
  `enlace` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `perretess`
--

INSERT INTO `perretess` (`id`, `image`, `nombre`, `raza`, `edad`, `enlace`) VALUES
(1, 'youtube.png', 'Curro', 'Mastin', 12, 'http://localhost/Finalnavidad/perros_adopcion/index.html'),
(3, 'youtube.png', 'Al', 'Dogo', 6, 'http://localhost/Finalnavidad/perros_adopcion/perro2.html'),
(4, 'al.jpeg', 'Al', 'Mixto', 2, 'http://localhost/Finalnavidad/perros_adopcion/perro3.html'),
(9, 'husky.jpeg', 'Dogo', 'MixtoHusky', 26, 'http://localhost/Finalnavidad/perros_adopcion/index.html'),
(10, 'labra.jpeg', 'Dama', 'Golden', 5, 'http://localhost/Finalnavidad/perros_adopcion/perro4.html'),
(12, 'labra.jpeg', 'Dama', 'Golden', 5, 'http://localhost/Finalnavidad/perros_adopcion/perro4.html');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `created`, `modified`, `status`) VALUES
(3, 'Camiseta Gitpet', 'Suave', 10.00, '2023-01-02 14:40:22', '2023-01-02 14:40:22', '1'),
(4, 'LLavero', 'No lo pierdas', 2.00, '2023-01-02 14:40:52', '2023-01-02 14:40:53', '1'),
(5, 'Boligrafo', 'Apunta todo', 5.00, '2023-01-02 14:41:08', '2023-01-02 14:41:08', '1'),
(6, 'Pulsera', 'De GitPet!', 6.00, '2023-01-02 14:41:22', '2023-01-02 14:41:22', '1'),
(7, 'Linterna', 'Led', 12.00, '2023-01-02 14:41:47', '2023-01-02 14:41:47', '1'),
(8, 'Correa', 'Para perretes', 12.00, '2023-01-02 14:42:49', '2023-01-02 14:42:49', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cachorros`
--
ALTER TABLE `cachorros`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gatos`
--
ALTER TABLE `gatos`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `otros`
--
ALTER TABLE `otros`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `perretes`
--
ALTER TABLE `perretes`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `perretess`
--
ALTER TABLE `perretess`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cachorros`
--
ALTER TABLE `cachorros`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `gatos`
--
ALTER TABLE `gatos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `otros`
--
ALTER TABLE `otros`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perretes`
--
ALTER TABLE `perretes`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `perretess`
--
ALTER TABLE `perretess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de datos: `usuarios`
--
CREATE DATABASE IF NOT EXISTS `usuarios` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `usuarios`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
