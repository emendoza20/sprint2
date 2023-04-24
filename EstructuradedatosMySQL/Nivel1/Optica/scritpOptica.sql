-- Versión del servidor: 10.4.14-MariaDB
-- Servidor: 127.0.0.1 via TCP/IP
-- Tipo de servidor: MariaDB
-- Conexión del servidor: No se está utilizando SSL Documentación
-- Versión del servidor: 10.4.27-MariaDB - mariadb.org binary distribution
-- Versión del protocolo: 10
-- Usuario: root@localhost
-- Conjunto de caracteres del servidor: UTF-8 Unicode (utf8mb4)

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
 
--
CREATE DATABASE IF NOT EXISTS `OPTICA` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `OPTICA`;

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `Proveedor`
--

CREATE TABLE `Proveedor` (
  `NIF` INTEGER PRIMARY KEY,
  `name` VARCHAR(30),
  `street` VARCHAR(30),
  `number` INTEGER,
  `floor` INTEGER,
  `door` INTEGER,
  `city` VARCHAR(10),
  `zip_code` INTEGER,
  `country` VARCHAR(10),
  `phone` INTEGER,
  `fax` INTEGER
);



CREATE TABLE `Gafas` (
  `id` INTEGER PRIMARY KEY,
  `id_proveedor` INTEGER,
  `marca` VARCHAR(30),
  `graduacion` INTEGER,
  `tipo_montura` ENUM('flotante', 'pasta', 'metálica'),
  `color_montura` VARCHAR(10),
  `color_vidrio` VARCHAR(5),
  `precio` FLOAT,
  FOREIGN KEY (`id_proveedor`) REFERENCES `Proveedor` (`NIF`)
);


 

CREATE TABLE `Cliente` (
  `id` INTEGER PRIMARY KEY,
  `nombre` VARCHAR(30),
  `direccion` VARCHAR(50),
  `phone` INTEGER,
  `email` VARCHAR(50),
  `fecha_registro` DATE,
  `recomendador_id` INTEGER,
  FOREIGN KEY (`recomendador_id`) REFERENCES `Cliente` (`id`)
);


CREATE TABLE `Empleado` (
  `id` INTEGER PRIMARY KEY,
  `nombre` VARCHAR(30),
  `direccion` VARCHAR(50),
  `phone` INTEGER,
  `email` VARCHAR(50),
  `fecha_registro` DATE
);

CREATE TABLE `ventas` (
  `venta_id` INTEGER PRIMARY KEY,
  `id_cliente` INTEGER,
  `id_empleado` INTEGER,
  `id_gafas` INTEGER,
  `fecha_venta` DATETIME,
  FOREIGN KEY (`id_cliente`) REFERENCES `Cliente` (`id`),
  FOREIGN KEY (`id_empleado`) REFERENCES `Empleado` (`id`),
  FOREIGN KEY (`id_gafas`) REFERENCES `Gafas` (`id`)
);
 






 
