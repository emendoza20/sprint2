CREATE TABLE `Usuario` (
  `username` varchar(255) PRIMARY KEY,
  `email` varchar(16),
  `fecha_nacimiento` datetime,
  `sexo` varchar(10),
  `pais` varchar(15),
  `zip_code` integer(15)
);

CREATE TABLE `Video` (
  `titulo` varchar(255) PRIMARY KEY,
  `descripcion` varchar(16),
  `size` int,
  `name_file` varchar(30),
  `tiempo` datetime,
  `imagen` VARBINARY(max),
  `estado` enum
);

CREATE TABLE `canal` (
  `titulo` varchar(30),
  `descripcion` varchar(30),
  `fecha_creacion` datetime
);

CREATE TABLE `etiquetas` (
  `id_video` varchar(255) PRIMARY KEY,
  `nombre` varchar(34)
);

ALTER TABLE `Video` ADD FOREIGN KEY (`titulo`) REFERENCES `Usuario` (`username`);

ALTER TABLE `canal` ADD FOREIGN KEY (`titulo`) REFERENCES `Usuario` (`username`);

ALTER TABLE `etiquetas` ADD FOREIGN KEY (`id_video`) REFERENCES `Video` (`titulo`);
