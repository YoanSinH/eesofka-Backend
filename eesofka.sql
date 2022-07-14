-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2022 a las 11:45:04
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
-- Base de datos: `eesofka`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nave`
--

CREATE TABLE `nave` (
  `id` bigint(20) NOT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `emitter` varchar(255) DEFAULT NULL,
  `mission` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nave`
--

INSERT INTO `nave` (`id`, `destination`, `emitter`, `mission`, `name`, `type`) VALUES
(5, 'Marte', 'EEUU', 'H20Marte', 'Saturno V', 'Lanzadera'),
(6, 'Luna', 'Rusia', 'Satelite2', 'Proton', 'Lanzadera'),
(7, 'Saturno', 'Japón', 'Estudios34', 'H-IIA', 'Lanzadera'),
(8, 'Espacio', 'EEUU', 'Exploracion', 'Explorer', 'No tripulada'),
(9, 'Espacio', 'Rusia', 'Satelite', 'Sputnik', 'No tripulada'),
(10, 'Marte', 'Japón', 'Fotografía', 'Soho', 'No tripulada'),
(11, 'Luna', 'EEUU', 'Exploracion', 'Apolo', 'Tripulada'),
(12, 'Orbita Terrestre', 'Rusia', 'Orbitar', 'Vostok', 'Tripulada'),
(13, 'ISS', 'Japón', 'Cientifica', 'Shenzou', 'Tripulada');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `nave`
--
ALTER TABLE `nave`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `nave`
--
ALTER TABLE `nave`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
