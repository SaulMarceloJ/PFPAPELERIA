-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2023 a las 02:07:59
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendap`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `C_CLIENTE` varchar(255) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `APELLIDO` varchar(255) NOT NULL,
  `DIRECCION` varchar(255) NOT NULL,
  `TELEFONO` int(11) NOT NULL,
  `C_PRODUCTO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`C_CLIENTE`, `NOMBRE`, `APELLIDO`, `DIRECCION`, `TELEFONO`, `C_PRODUCTO`) VALUES
('1', 'Ana', 'Gomez', 'Calle Principal 123', 555, '1'),
('10', 'Laura', 'Torres', 'Avenida de las Playas 707', 555, '10'),
('2', 'Carlos', 'Martinez', 'Avenida del Sol 456', 555, '2'),
('3', 'Elena', 'Perez', 'Calle de la Luna 789', 555, '3'),
('4', 'Javier', 'Lopez', 'Avenida de las Flores 101', 555, '4'),
('5', 'Luisa', 'Rodriguez', 'Calle de los Pinos 202', 555, '5'),
('6', 'María', 'García', 'Avenida del Bosque 303', 555, '6'),
('7', 'Pedro', 'Fernández', 'Calle del Río 404', 555, '7'),
('8', 'Sara', 'Díaz', 'Avenida del Mar 505', 555, '8'),
('9', 'Fernando', 'Hernández', 'Calle de las Montañas 606', 555, '9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `C_PRODUCTO` varchar(255) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `DESCRIPCION` varchar(255) NOT NULL,
  `PRECIO` int(11) NOT NULL,
  `CANTIDAD_DISPONIBLE` int(11) NOT NULL,
  `C_PROVEEDOR` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`C_PRODUCTO`, `NOMBRE`, `DESCRIPCION`, `PRECIO`, `CANTIDAD_DISPONIBLE`, `C_PROVEEDOR`) VALUES
('1', 'Lápices HB', 'Lápices de grafito estándar', 10, 100, '1'),
('10', 'Carpeta de Archivos', 'Carpeta de archivos expandible', 150, 40, '10'),
('2', 'Cuaderno Espiral', 'Cuaderno de espiral con tapa dura', 120, 50, '2'),
('3', 'Papel de Colores', 'Papel de colores variados', 100, 200, '3'),
('4', 'Goma de Borrar', 'Goma de borrar de alta calidad', 25, 150, '4'),
('5', 'Marcadores de Colores', 'Juego de marcadores de colores', 80, 30, '5'),
('6', 'Tijeras de Precisión', 'Tijeras de precisión para manualidades', 55, 40, '6'),
('7', 'Cinta Adhesiva Transparente', 'Rollo de cinta adhesiva transparente', 40, 80, '7'),
('8', 'Pegatinas Decorativas', 'Pegatinas decorativas para proyectos creativos', 30, 60, '8'),
('9', 'Calculadora de Bolsillo', 'Calculadora de bolsillo con pantalla LCD', 200, 20, '9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `C_PROVEEDOR` varchar(255) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `DIRECCION` varchar(255) NOT NULL,
  `TELEFONO` int(11) NOT NULL,
  `CORREO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`C_PROVEEDOR`, `NOMBRE`, `DIRECCION`, `TELEFONO`, `CORREO`) VALUES
('1', 'Lápices y Bolígrafos S.A.', 'Calle del Artículo, Ciudad Papel', 123, 'lapices@ejemplo.com'),
('10', 'Calculadoras y Matemáticas', 'Plaza de las Matemáticas, Ciudad Cálculo', 666, 'calculadoras@ejemplo.com'),
('2', 'Cuadernos y Libretas Ltda.', 'Avenida del Papel, Ciudad Escritura', 987, 'cuadernos@ejemplo.com'),
('3', 'Papelera Creativa, Inc.', 'Calle del Bloc, Ciudad Nota', 555, 'creativa@ejemplo.com'),
('4', 'Gomas y Correctores Felices', 'Avenida de la Corrección, Ciudad Borrador', 888, 'gomas@ejemplo.com'),
('5', 'Marcadores y Resaltadores Express', 'Bulevar del Marcado, Ciudad Destacado', 777, 'marcadores@ejemplo.com'),
('6', 'Tijeras y Cortadores Rápidos', 'Carrera de las Tijeras, Ciudad Recorte', 444, 'tijeras@ejemplo.com'),
('7', 'Cintas Adhesivas Supremas', 'Calle del Adhesivo, Ciudad Pegamento', 999, 'cintas@ejemplo.com'),
('8', 'Pegatinas y Etiquetas Premium', 'Avenida de las Etiquetas, Ciudad Etiqueta', 111, 'pegatinas@ejemplo.com'),
('9', 'Papel de Colores Variados', 'Carrera del Color, Ciudad Arte', 333, 'papelcolores@ejemplo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `C_STOCK` varchar(255) NOT NULL,
  `CATEGORIA` varchar(255) NOT NULL,
  `CANTIDAD_EXISTENCIA` int(11) NOT NULL,
  `PRECIO_COMPRA` int(11) NOT NULL,
  `PRECIO_VENTA` int(11) NOT NULL,
  `FECHA_ENTRADA` date NOT NULL,
  `C_PRODUCTO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`C_STOCK`, `CATEGORIA`, `CANTIDAD_EXISTENCIA`, `PRECIO_COMPRA`, `PRECIO_VENTA`, `FECHA_ENTRADA`, `C_PRODUCTO`) VALUES
('1', 'Lápices', 500, 10, 15, '2023-10-01', '1'),
('10', 'Calculadoras', 100, 80, 100, '2023-10-10', '10'),
('2', 'Cuadernos', 300, 60, 80, '2023-10-02', '2'),
('3', 'Papeles de Colores', 800, 40, 60, '2023-10-03', '3'),
('4', 'Gomas de Borrar', 400, 5, 10, '2023-10-04', '4'),
('5', 'Marcadores', 200, 25, 35, '2023-10-05', '5'),
('6', 'Tijeras', 150, 15, 20, '2023-10-06', '6'),
('7', 'Cintas Adhesivas', 300, 10, 15, '2023-10-07', '7'),
('8', 'Pegatinas', 250, 8, 12, '2023-10-08', '8'),
('9', 'Papel de Arte', 350, 20, 30, '2023-10-09', '9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `C_VENTA` varchar(255) NOT NULL,
  `FECHA` date NOT NULL,
  `PRODUCTO` varchar(255) NOT NULL,
  `PRECIO_PRODUCTO` int(11) NOT NULL,
  `TOTAL` int(11) NOT NULL,
  `C_CLIENTE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`C_VENTA`, `FECHA`, `PRODUCTO`, `PRECIO_PRODUCTO`, `TOTAL`, `C_CLIENTE`) VALUES
('', '2023-12-13', 'knsdonqj', 2345, 28140, 'wdwed'),
('1', '2023-10-01', 'Lápices', 15, 30, '1'),
('10', '2023-10-10', 'Calculadoras', 100, 200, '10'),
('12', '2023-12-11', 'EDWD', 10, 20, '1'),
('13', '2023-12-11', 'omas pelikan ', 5, 10, ''),
('2', '2023-10-02', 'Cuadernos', 80, 160, '2'),
('3', '2023-10-03', 'Papeles de Colores', 60, 120, '3'),
('4', '2023-10-04', 'Gomas de Borrar', 10, 20, '4'),
('5', '2023-10-05', 'Marcadores', 35, 70, '5'),
('6', '2023-10-06', 'Tijeras', 20, 40, '6'),
('7', '2023-10-07', 'Cintas Adhesivas', 15, 30, '7'),
('8', '2023-10-08', 'Pegatinas', 12, 24, '8'),
('9', '2023-10-09', 'Papel de Arte', 30, 60, '9');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`C_CLIENTE`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`C_PRODUCTO`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`C_PROVEEDOR`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`C_STOCK`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`C_VENTA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
