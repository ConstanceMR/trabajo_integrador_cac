-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2023 a las 01:38:18
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id_oradores` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `fecha_alta` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_oradores`, `nombre`, `apellido`, `email`, `tema`, `fecha_alta`) VALUES
(3, 'Soledad', 'Paz', 'solepaz@hotmail.com', 'PHP', '2023-11-12 21:17:55'),
(4, 'Analia', 'Suarez', 'analia@gmail.com', 'Seguridad Informatica', '2023-11-12 21:17:55'),
(6, 'Rocio', 'Almara', 'rocio.a@gmail.com', 'Javascript', '2023-11-12 21:24:10'),
(7, 'Ayelen', 'Paleo', 'ayep@gmail.com', 'Python', '2023-11-12 21:24:10'),
(8, 'Sebastian', 'Ludueña', 'sebastianl@gmail.com', 'Seguridad Informatica', '2023-11-12 21:27:06'),
(9, 'Daniel', 'Tobal', 'daniel@hotmail.com', 'Python', '2023-11-12 21:27:06'),
(10, 'Jorge', 'Montoya', 'j.montoya@gmail.com', 'Java', '2023-11-12 21:29:21'),
(11, 'Paola', 'Petrino', 'paola@hotmail.com', 'PHP', '2023-11-12 21:29:21'),
(12, 'Nicolas', 'Rodas', 'nicorodas@gmail.com', 'Java', '2023-11-12 21:32:27'),
(13, 'Antonio', 'Valdez', 'antonio@hotmail.com', 'Javascript', '2023-11-12 21:32:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id_oradores`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id_oradores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
