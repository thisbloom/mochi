-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-12-2020 a las 04:52:51
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `udh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(6) NOT NULL,
  `codigo` varchar(12) NOT NULL,
  `nombres` varchar(90) NOT NULL,
  `apellidos` varchar(90) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `id_pa` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `codigo`, `nombres`, `apellidos`, `telefono`, `correo`, `id_pa`) VALUES
(3, '1231233423', 'Pedro', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(8, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(10, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(11, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(12, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(13, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(14, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(15, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(16, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(17, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(18, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(19, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(20, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(21, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(22, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(23, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(24, '1231233423', 'Jose', 'Sanchez', '90000009', 'pedros@gmail.com', 2),
(25, '1231233423', 'Andrea', 'Sanchez', '90000088', 'pedros@gmail.com', 1),
(29, '3242334', 'Omar ', 'Sulca', '32432423', 'das@gmail.com', 1),
(30, ':c', ':n', ':a', ':t', ':e', 0),
(31, ':c', ':n', ':a', ':t', ':e', 0),
(32, '3242334', 'Andrea', 'Cibelli', '32432432', 'das@gmail.com', 1),
(33, '3242334', 'Miguel', 'Perez', '32432423', '3sdas@gmail.com', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `id` int(2) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`id`, `nombre`) VALUES
(1, 'Ingenieria'),
(3, 'Educacion'),
(4, 'Ciencias de la Salud'),
(5, 'Administración'),
(6, 'Derecho y Ciencias Políticas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `figuras`
--

CREATE TABLE `figuras` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `figuras`
--

INSERT INTO `figuras` (`id`, `numero`) VALUES
(1, 12),
(2, 569),
(3, 1),
(4, 174),
(5, 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pa`
--

CREATE TABLE `pa` (
  `id` int(2) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `id_facultad` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pa`
--

INSERT INTO `pa` (`id`, `nombre`, `id_facultad`) VALUES
(1, 'Ingeniería de Sistemas e Informática', 1),
(2, 'Ingeniería Civil', 1),
(3, 'Ingeniera Ambiental', 1),
(4, 'Arquitectura', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(6) NOT NULL,
  `codigo` int(11) NOT NULL,
  `pass` varchar(72) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `id_pa` int(6) NOT NULL,
  `nombres` varchar(60) NOT NULL,
  `apellidos` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `codigo`, `pass`, `tipo`, `id_pa`, `nombres`, `apellidos`) VALUES
(1, 2147483647, '$2y$10$HEEOMKkb//06j2ilY.Yjk.BeCDQMrTZ8sclhffD6yq0SWxXJpQeD2', 'estudiante', 1, 'Pedro', 'Perez'),
(2, 2147483647, '123456', 'profesor', 1, 'Valentina', 'Cibelli'),
(3, 12345678, '$2y$10$T8DzRhDf9EusSFLOCk9MzOT6eo4xm8JWPbHjjejOYGjH1MzYE3uC6', 'administrador', 1, 'Omar', 'Perez'),
(5, 2147483647, '$2y$10$hXttko3F2//cnLON6tPHAO5yXp.QF4BePY2ufDfVBthBjPl17uWU2', 'estudiante', 1, 'Andrea', 'Soto'),
(6, 44448888, '$2y$10$v8Hqb3CzCnC2YPNti5GYt.CjXi4ptgeYJ88ZgcQitCSLoOz1gAz4u', 'administrador', 1, 'Omar ', 'Sulca'),
(7, 33332222, '$2y$10$fSBoPNXzClTxzoRcnUguPuokE/akKiVnW6JV6WZFbQUahcT1okP8y', 'estudiante', 1, 'Antonia', 'Valencia'),
(8, 11112222, '$2y$10$4aYE4jZNb9z4sy.tv5m.zeP9ADa.SuKOX.PB.0i6PyXIg.oAQZy96', 'profesor', 1, 'Miguel', 'Paucar'),
(9, 12345678, '$2y$10$2sOI/2hRJGg9anEI13bC0e1sRfXWi.nw3muxD3Opsu9G8DUjHOwXy', 'estudiante', 1, 'eh', 'ud'),
(10, 98745612, '$2y$10$p7fszXSNO6y.urN6jKvvmeaEnYMkmZzYsiJt84RNQUoANjta30jSa', 'estudiante', 1, 'ewes', 'awos'),
(11, 65498732, '$2y$10$8ZKAKQRejvqidSGP/D3qqO8xnjYNwopf6kDleHMhyyIkAwKZ/f.G6', 'profesor', 1, 'markos', 'ewe'),
(12, 32165498, '$2y$10$7jsisEAWh6fqyX/BVc7ine0quPXTQoHsSXlouofiFqA20fyp.3Wv2', 'estudiante', 1, 'ehudd', 'xd'),
(13, 96385274, '$2y$10$p/JfWLtuK721NiKkvOTETel3o8R5uGyJ0qCWGGZMeNvtnWgin7dp6', 'administrador', 1, 'omarsito', 'ewe');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `figuras`
--
ALTER TABLE `figuras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pa`
--
ALTER TABLE `pa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `figuras`
--
ALTER TABLE `figuras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pa`
--
ALTER TABLE `pa`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
