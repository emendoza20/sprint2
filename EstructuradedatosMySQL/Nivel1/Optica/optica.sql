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

FOREIGN KEY (`id_cliente`) REFERENCES `Cliente` (`id`),
  FOREIGN KEY (`id_empleado`) REFERENCES `Empleado` (`id`),
  FOREIGN KEY (`id_gafas`) REFERENCES `Gafas` (`id`)





-- Insertar datos de ejemplo en la tabla Proveedor
INSERT INTO Proveedor (NIF, name, location, street, numberPhone, floor, door, city, zip_code, country, phone, fax)
VALUES (1, 'Proveedor 1', 'Barcelona', 'Calle Proveedor 1', 123456789, 1, 1, 'Barcelona', 08001, 'España', 987654321, 123456789);

INSERT INTO Proveedor (NIF, name, location, street, numberPhone, floor, door, city, zip_code, country, phone, fax)
VALUES (2, 'Proveedor 2', 'Madrid', 'Calle Proveedor 2', 987654321, 2, 2, 'Madrid', 28001, 'España', 123456789, 987654321);

-- Insertar datos de ejemplo en la tabla Gafas
INSERT INTO Gafas (id_proveedor, marca, graduacion, tipo_montura, color_montura, color_vidrio, precio)
VALUES (1, 'Marca 1', 2, 'flotante', 'rojo', 'azul', 50.00);

INSERT INTO Gafas (id_proveedor, marca, graduacion, tipo_montura, color_montura, color_vidrio, precio)
VALUES (1, 'Marca 1', 4, 'pasta', 'negro', 'verde', 100.00);

-- Insertar datos de ejemplo en la tabla Cliente
INSERT INTO Cliente (id, nombre, direccion, phone, email, fecha_registro)
VALUES (1, 'Cliente 1', 'Calle Cliente 1', 123456789, 'cliente1@ejemplo.com', '2022-01-01');

INSERT INTO Cliente (id, nombre, direccion, phone, email, fecha_registro)
VALUES (2, 'Cliente 2', 'Calle Cliente 2', 987654321, 'cliente2@ejemplo.com', '2022-01-02');

-- Insertar datos de ejemplo en la tabla Empleado
INSERT INTO Empleado (empleado_id, nombre, direccion, phone, email, fecha_regitro)
VALUES (1, 'Empleado 1', 'Calle Empleado 1', 123456789, 'empleado1@ejemplo.com', '2022-01-01');

INSERT INTO Empleado (empleado_id, nombre, direccion, phone, email, fecha_regitro)
VALUES (2, 'Empleado 2', 'Calle Empleado 2', 987654321, 'empleado2@ejemplo.com', '2022-01-02');

-- Insertar datos de ejemplo en la tabla ventas
INSERT INTO ventas (venta_id, id_cliente, id_empleado, tiempo_ventas)
VALUES (1, 1, 1, '2022-01-01 10:00:00');

INSERT INTO ventas (venta_id, id_cliente, id_empleado, tiempo_ventas)
VALUES (2, 1, 2, '2022-01-02 11:00:00');

INSERT INTO ventas (venta_id, id_cliente, id_empleado, tiempo_ventas)
VALUES (3, 2, 1, '2022-01-03 12:00:00');

INSERT INTO ventas (venta_id, id_cliente, id_empleado, tiempo_ventas)
VALUES (4, 2,5,'2023-01-03 12:00:00');
