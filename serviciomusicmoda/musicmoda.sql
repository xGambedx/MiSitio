-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2022 a las 07:16:53
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `musicmoda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `idcancion` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `album` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `artista` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`idcancion`, `titulo`, `album`, `genero`, `artista`) VALUES
(1, 'Monotonia', 'Monotonia', 'Bachata', 'Shakira'),
(2, 'Titi Me Pregunto', 'Un Verano Sin Ti', 'Urbano', 'Bad Bunny'),
(3, 'Despecha', 'Despecha', 'Mambo', 'Rosalia'),
(4, 'MAMMI', 'MAMMI', 'Regueton', 'Becky G'),
(5, 'Hey Mor', 'Hey Mor', 'Urbano', 'Ozuna'),
(6, 'Te Felicito', 'Te Felicito', 'Regueton', 'Shakira'),
(7, 'Neverita', 'Un Verano Sin Ti', 'Urbano', 'Bad Bunny');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `idevento` int(11) NOT NULL,
  `evento` varchar(50) NOT NULL,
  `invitado` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`idevento`, `evento`, `invitado`, `pais`, `fecha`) VALUES
(1, 'Tomorrowland', 'Alan Walker', 'Belgica', '2023-06-05'),
(2, 'Coachella', 'Martin Garrix', 'EE. UU.', '2023-04-14'),
(3, 'Ultra Miami', 'David Guetta', 'EE. UU.', '2023-03-23'),
(4, 'EDC Las Vegas', 'Armin Van Buuren', 'EE. UU.', '2023-05-18'),
(5, 'Mysteryland', 'DJ Snake', 'Holanda', '2023-08-25'),
(6, 'Hot 97 Summer Jam', 'Lil Baby', 'EE. UU.', '2023-09-20'),
(7, 'Lollapalooza', 'Billie Eilish', 'Argentina', '2023-03-19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`idcancion`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`idevento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `idcancion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `idevento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
