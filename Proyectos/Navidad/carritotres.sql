-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-01-2023 a las 20:12:25
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
-- Base de datos: `carritotres`
--

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
(10, 'Compra ', 'qweqw', 'cuentabombero@gmail.com', '34534567435', 'Calle salvaro dali 34', '2023-01-18 16:17:10', '2023-01-18 16:17:10', 1);

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
(10, 10, 34.00, '2023-01-18 16:17:10', 'Pending');

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
(28, 10, 4, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
