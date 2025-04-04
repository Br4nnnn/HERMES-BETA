-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2025 a las 07:01:16
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hermes_alpha`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `id_sede` int(11) NOT NULL,
  `nombre_sede` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`id_sede`, `nombre_sede`, `direccion`, `descripcion`, `fecha_creacion`, `estado`) VALUES
(1, 'Sede Central', 'Av. Principal 123', 'Oficina principal de la empresa', '2025-03-29 00:21:01', 'Activa'),
(2, 'Sucursal Norte', 'Calle 45 #67-89', 'Sucursal en la zona norte', '2025-03-29 00:21:01', 'Inactiva'),
(3, 'Sucursal Sur', 'Carrera 10 #15-20', 'Sucursal en la zona sur de la ciudad', '2025-03-29 00:21:01', 'Activa'),
(4, 'Sucursal Este', 'Diagonal 30 #50-75', 'Sucursal ubicada en el sector oriental', '2025-03-29 00:21:01', 'Activa'),
(5, 'Sucursal Oeste', 'Transversal 15 #22-30', 'Sucursal que atiende el sector occidental', '2025-03-29 00:21:01', 'Inactiva'),
(6, 'Centro de Distribución', 'Km 5 vía industrial', 'Centro logístico de distribución', '2025-03-29 00:21:01', 'Activa'),
(7, 'Oficina Administrativa', 'Edificio Torre 5, Piso 3', 'Oficinas para gerencia y administración', '2025-03-29 00:21:01', 'Inactiva'),
(8, 'Punto de Atención 1', 'Calle 8 #12-34', 'Pequeño punto de atención al cliente', '2025-03-29 00:21:01', 'Activa'),
(9, 'Punto de Atención 2', 'Carrera 20 #55-10', 'Otro punto de atención en la ciudad', '2025-03-29 00:21:01', 'Inactiva'),
(10, 'Almacén Principal', 'Zona Industrial Bodega 12', 'Bodega de almacenamiento de productos', '2025-03-29 00:21:01', 'Activa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `cedula` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `clave` varchar(45) NOT NULL,
  `rol` varchar(45) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `cedula`, `nombre`, `apellido`, `usuario`, `clave`, `rol`, `estado`) VALUES
(1, '1116281626', 'Jhoan', 'Sinisterra', 'Davidjdsv', 'david123', 'Administrador', 1),
(2, '123', 'pepe', 'potasio', 'pepe', '321', '1', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id_sede`),
  ADD UNIQUE KEY `nombre_sede` (`nombre_sede`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
