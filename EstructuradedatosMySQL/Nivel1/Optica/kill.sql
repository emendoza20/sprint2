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

USE `optica`;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `Proveedor`;
DROP TABLE IF EXISTS `Gafas`;
DROP TABLE IF EXISTS `Cliente`;
DROP TABLE IF EXISTS `Empleado`;

DROP TABLE IF EXISTS `Ventas`;
SET FOREIGN_KEY_CHECKS = 1;

DROP DATABASE IF EXISTS `optica`;
