-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql212.tonohost.com
-- Tiempo de generación: 09-10-2020 a las 10:43:53
-- Versión del servidor: 5.6.48-88.0
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ottos_26323356_seguridad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invento_categories`
--

CREATE TABLE `invento_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `place` varchar(200) NOT NULL,
  `descrp` varchar(400) NOT NULL,
  `date_added` date DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `invento_categories`
--

INSERT INTO `invento_categories` (`id`, `name`, `place`, `descrp`, `date_added`) VALUES
(1, 'Hogar', 'ProducciÃ³n', 'Material para el hogar y construcciÃ³n interna', '2020-10-01'),
(2, 'Linea Blanca', 'ProducciÃ³n', 'Productos y accesorios para lÃ­nea blanca', '2020-10-01'),
(3, 'Puertas', 'Produccion', 'Madera de pino', '2020-10-02'),
(4, 'Piso', 'bodega', 'distintos tipos de pisos', '2020-10-02'),
(5, 'oficina', '', '', '2020-10-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invento_items`
--

CREATE TABLE `invento_items` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `descrp` varchar(400) NOT NULL,
  `category` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `date_added` date DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `invento_items`
--

INSERT INTO `invento_items` (`id`, `name`, `descrp`, `category`, `qty`, `price`, `date_added`) VALUES
(1, 'Madera de Cedro', 'Madera cortada y preparada previamente de cedro de 2 x 1 x ', 1, 59, '10.00', '2020-10-01'),
(2, 'Muebles', 'Grandes', 1, 10, '20000.00', '2020-10-01'),
(3, 'Vidrio temprado', 'Vidrio templado laminado de 30x30', 1, 50, '20.00', '2020-10-01'),
(5, 'Muebles', 'Blanco', 1, 10, '20000.00', '2020-10-02'),
(9, 'Caja', 'caja de carton', 3, 10, '15.00', '2020-10-02'),
(10, 'Caja', 'caja de carton', 3, 10, '15.00', '2020-10-02'),
(11, 'caja', 'caja de carton', 1, 10, '15.00', '2020-10-02'),
(12, 'puerta', 'puerta de mental', 3, 10, '150.00', '2020-10-02'),
(13, 'puerta', 'puerta de mental', 3, 10, '150.00', '2020-10-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invento_logs`
--

CREATE TABLE `invento_logs` (
  `id` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  `item` int(11) NOT NULL,
  `fromqty` int(11) NOT NULL,
  `toqty` int(11) NOT NULL,
  `fromprice` decimal(15,2) NOT NULL,
  `toprice` decimal(15,2) NOT NULL,
  `date_added` date DEFAULT '0000-00-00',
  `user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `invento_logs`
--

INSERT INTO `invento_logs` (`id`, `type`, `item`, `fromqty`, `toqty`, `fromprice`, `toprice`, `date_added`, `user`) VALUES
(1, 2, 1, 100, 55, '450.00', '0.00', '2020-10-01', 1),
(2, 1, 1, 55, 59, '40.00', '0.00', '2020-10-01', 1),
(3, 3, 3, 0, 0, '20.00', '20.00', '2020-10-01', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invento_settings`
--

CREATE TABLE `invento_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `val` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `invento_settings`
--

INSERT INTO `invento_settings` (`id`, `name`, `val`) VALUES
(1, 'site_title', 'Invento - %page%'),
(2, 'site_logo', 'media/img/logo3x.png'),
(3, 'allow_userchange', 'y'),
(4, 'allow_namechange', 'y'),
(5, 'allow_emailchange', 'y'),
(6, 'installed', 'n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invento_users`
--

CREATE TABLE `invento_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` char(32) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(1) NOT NULL,
  `date_added` date DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `invento_users`
--

INSERT INTO `invento_users` (`id`, `username`, `password`, `name`, `email`, `role`, `date_added`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Obed Alvarado', 'admin@admin.com', 1, '2017-04-01'),
(2, 'Andrel', 'e10adc3949ba59abbe56e057f20f883e', 'Andre Leal', 'allan__2794@hotmail.com', 1, NULL),
(3, 'SupG1', 'e10adc3949ba59abbe56e057f20f883e', 'SP', 'sup1@hotmail.com', 2, NULL),
(4, 'Sup1', 'e10adc3949ba59abbe56e057f20f883e', 'SP2', 'Sup2@hotmail.com', 3, NULL),
(5, 'Vendedor1', 'e10adc3949ba59abbe56e057f20f883e', 'Vendedor', 'vvv@hotmail.com', 4, NULL),
(8, 'gerente12', 'e10adc3949ba59abbe56e057f20f883e', 'Gerente123', 'gerente123@gmail.com', 4, NULL),
(9, 'gerente1234', 'e10adc3949ba59abbe56e057f20f883e', 'Gerente1234', 'gerente1234@gmail.com', 3, NULL),
(10, 'Admin1', 'e10adc3949ba59abbe56e057f20f883e', 'Administrador12', 'admin12@gmail.com', 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `invento_categories`
--
ALTER TABLE `invento_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `invento_items`
--
ALTER TABLE `invento_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `invento_logs`
--
ALTER TABLE `invento_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `invento_settings`
--
ALTER TABLE `invento_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `invento_users`
--
ALTER TABLE `invento_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `invento_categories`
--
ALTER TABLE `invento_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `invento_items`
--
ALTER TABLE `invento_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `invento_logs`
--
ALTER TABLE `invento_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `invento_settings`
--
ALTER TABLE `invento_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `invento_users`
--
ALTER TABLE `invento_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
