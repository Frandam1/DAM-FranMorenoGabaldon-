-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-01-2023 a las 17:56:11
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
-- Base de datos: `proyectonavidad`
--

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
('a?ado', 'prueba', 'cuentabombero@gmail.com', 234234, 1212);

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
(10, 'labra.jpeg', 'Dama', 'Golden', 5, 'http://localhost/Finalnavidad/perros_adopcion/perro4.html');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
