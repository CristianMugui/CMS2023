-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-04-2023 a las 06:55:09
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
-- Base de datos: `dw2023_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actores`
--

CREATE TABLE `actores` (
  `act_id` int(10) UNSIGNED NOT NULL,
  `act_nombres` varchar(100) NOT NULL,
  `act_apellidos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actores`
--

INSERT INTO `actores` (`act_id`, `act_nombres`, `act_apellidos`) VALUES
(1, 'Tom', 'Holland'),
(2, 'Zendaya', 'Colleman'),
(3, 'Keanu', 'Revees'),
(4, 'Carrie-Anne', 'Moss'),
(5, 'Leonardo', 'Dicaprio'),
(6, 'Kate', 'Winslet'),
(7, 'Jack', 'Nicolson'),
(8, 'Shelly', 'Duval'),
(9, 'Jamie', 'Fox'),
(10, 'Samuel', 'L. Jackson'),
(11, 'John', 'Travolta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directores`
--

CREATE TABLE `directores` (
  `dire_id` int(10) UNSIGNED NOT NULL,
  `dire_nombres` varchar(50) NOT NULL,
  `dire_apellidos` varchar(50) NOT NULL,
  `dire_img` text DEFAULT NULL,
  `dire_nacionalidad` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `directores`
--

INSERT INTO `directores` (`dire_id`, `dire_nombres`, `dire_apellidos`, `dire_img`, `dire_nacionalidad`) VALUES
(2, 'Lana', 'Wachoswky', 'https://resizing.flixster.com/ugcU0krwo4aHBQ1EZYDpjMIh0MU=/218x280/v2/https://flxt.tmsimg.com/assets/150673_v9_ba.jpg', 'USA'),
(3, 'James', 'Cameron', 'https://cdn.britannica.com/84/160284-050-695B1DE3/James-Cameron-2012.jpg', 'Canadá'),
(4, 'Christopher', 'Nolan', 'https://m.media-amazon.com/images/M/MV5BNjE3NDQyOTYyMV5BMl5BanBnXkFtZTcwODcyODU2Mw@@._V1_FMjpg_UX1000_.jpg', 'Reino Unido'),
(6, 'Quentin', 'Tarantino', 'https://m.media-amazon.com/images/M/MV5BMTgyMjI3ODA3Nl5BMl5BanBnXkFtZTcwNzY2MDYxOQ@@._V1_.jpg', 'USA'),
(7, '', 'Howard', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Ron_Howard_Cannes_2018.jpg/640px-Ron_Howard_Cannes_2018.jpg', 'USA'),
(8, 'Steven', 'Spilberg', 'https://upload.wikimedia.org/wikipedia/commons/6/67/Steven_Spielberg_by_Gage_Skidmore.jpg', 'USA'),
(9, 'Night', 'Salaman', 'https://cdn.britannica.com/69/231869-050-467B9E24/M-Night-Shyamalan-2019.jpg', 'USA'),
(10, 'Akira', 'Toriyama', 'https://elcomercio.pe/resizer/nS0bKCrLRz1mi7uEmw44MaoyDSw=/1200x1200/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/VFCFH2IX7JHXJJKHW63FK4EXVM.jpg', 'Japón');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `peli_id` int(10) UNSIGNED NOT NULL,
  `peli_dire_id` int(11) DEFAULT NULL,
  `peli_nombre` varchar(50) NOT NULL,
  `peli_img` text DEFAULT NULL,
  `peli_genero` varchar(20) NOT NULL,
  `peli_estreno` date NOT NULL,
  `peli_restricciones` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`peli_id`, `peli_dire_id`, `peli_nombre`, `peli_img`, `peli_genero`, `peli_estreno`, `peli_restricciones`) VALUES
(1, 1, 'Spiderman: No way home', NULL, 'Acción', '2021-12-15', 'PG-13'),
(2, 2, 'Matrix', 'https://pics.filmaffinity.com/Matrix-155050517-large.jpg', 'ciencia ficcion', '1999-10-10', 'PG-13'),
(3, NULL, 'El codigo enigma', NULL, 'Belica', '2017-05-05', 'PG-16'),
(4, 3, 'Titanic', 'https://www.ecartelera.com/carteles/2400/2425/002_m.jpg', 'Drama Romantico', '1997-09-09', 'PG'),
(5, 4, 'Interestellar', 'https://pics.filmaffinity.com/Interstellar-306936708-large.jpg', 'Ciencia Ficción', '2014-02-02', 'PG'),
(6, 5, 'El Resplandor', NULL, 'Terror', '1980-04-04', 'PG-18'),
(7, NULL, '50 sombras de gray', NULL, 'Thriller', '2013-06-06', 'PG-18'),
(8, 6, 'Django', NULL, 'Wenstern', '2016-12-12', 'PG-16'),
(9, 6, 'Pulp Fiction', 'https://www.miramax.com/assets/Pulp-Fiction1.png', 'Policial', '2010-10-10', 'PG-16'),
(10, NULL, 'El Resplandor 2', NULL, 'Terror', '1982-04-04', 'PG-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `per_act_id` int(11) NOT NULL,
  `per_peli_id` int(11) NOT NULL,
  `per_nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`per_act_id`, `per_peli_id`, `per_nombre`) VALUES
(1, 1, 'Spiderman'),
(2, 1, 'MJ'),
(3, 2, 'Neo'),
(4, 2, 'Trinity'),
(5, 4, 'Jack'),
(6, 4, 'Rose'),
(7, 6, 'Jack Torrance'),
(8, 6, 'Wendy Torrance');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actores`
--
ALTER TABLE `actores`
  ADD PRIMARY KEY (`act_id`);

--
-- Indices de la tabla `directores`
--
ALTER TABLE `directores`
  ADD PRIMARY KEY (`dire_id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`peli_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actores`
--
ALTER TABLE `actores`
  MODIFY `act_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `directores`
--
ALTER TABLE `directores`
  MODIFY `dire_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `peli_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
