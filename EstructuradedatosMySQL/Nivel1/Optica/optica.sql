CREATE TABLE `Proveedor` (
  `NIF` integer PRIMARY KEY,
  `name` varchar(30),
  `location` varchar(30),
  `street` varchar(30),
  `numberPhone` integer,
  `floor` integer,
  `door` integer,
  `city` varchar(10),
  `zip_code` integer,
  `country` varchar(10),
  `phone` integer,
  `fax` integer
);

CREATE TABLE `Gafas` (
    `id` INTEGER PRIMARY KEY,
  `id_proveedor` integer,
  `marca` varchar(30),
  `graduacion` integer,
    `tipo_montura` ENUM('flotante', 'pasta', 'metálica'),
  `color_montura` varchar(10),
  `color_vidrio` varchar(5)
   `precio` FLOAT,
   FOREIGN KEY (`id_proveedor`) REFERENCES `Proveedor` (`NIF`)
);

CREATE TABLE `Cliente` (
  `id` integer PRIMARY KEY,
  `nombre` varchar(10),
  `direccion` varchar(16),
  `phone` integer,
  `email` varchar(25),
  `fecha_registro` DATE
    `recomendador_id` INTEGER,
     FOREIGN KEY (`recomendador_id`) REFERENCES `Cliente` (`id`)
);

CREATE TABLE `Empleado` (
  `empleado_id` integer PRIMARY KEY,
  `nombre` varchar(10),
  `direccion` varchar(16),
  `phone` integer,
  `email` varchar(25),
  `fecha_regitro` DATE
);

CREATE TABLE `ventas` (
  `venta_id` integer PRIMARY KEY,
  `id_cliente` integer,
  `id_empleado` integer,
  `id_gafas` integer,
  `tiempo_ventas` datetime
);

ALTER TABLE `Gafas` ADD FOREIGN KEY (`id_proveedor`) REFERENCES `Proveedor` (`NIF`);

ALTER TABLE `Gafas` ADD FOREIGN KEY (`id_proveedor`) REFERENCES `Cliente` (`id`);

ALTER TABLE `Gafas` ADD FOREIGN KEY (`id_proveedor`) REFERENCES `Empleado` (`empleado_id`);

ALTER TABLE `ventas` ADD FOREIGN KEY (`venta_id`) REFERENCES `Empleado` (`empleado_id`);
