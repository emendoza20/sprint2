CREATE TABLE `Clientes` (
  `id_cliente` integer PRIMARY KEY,
  `Nombre` varchar(16),
  `apellido` varchar(16),
  `direccion` varchar(16),
  `zip_code` varchar(15),
  `localidad` varchar(15),
  `provincia` varchar(13),
  `numero_telefono_cliente` integer
);

CREATE TABLE `pedidos` (
  `id_pedido` integer PRIMARY KEY,
  `tipo_pedido` enum,
  `cant_productos` integer,
  `precio_total` float,
  `fecha_hora` datetime
);

CREATE TABLE `categoria` (
  `id_categoria` int,
  `nombre_categoria` varchar(255),
  PRIMARY KEY (`id_categoria`, `nombre_categoria`)
);

CREATE TABLE `producto` (
  `num_pedido` integer PRIMARY KEY,
  `tipo_producto` enum,
  `descripcion` varchar(30),
  `imagen` VARBINARY(max)
);

CREATE TABLE `tienda` (
  `nif_tienda` integer PRIMARY KEY,
  `direccion` varchar(10),
  `zip_code` varchar(10),
  `localidad` varchar(10),
  `provincia` varchar(10)
);

CREATE TABLE `empleado` (
  `Nif_empleado` integer PRIMARY KEY,
  `apellido` varchar(10),
  `numero_telefono_empleado` integer,
  `tipo_empleado` enum
);

ALTER TABLE `pedidos` ADD FOREIGN KEY (`id_pedido`) REFERENCES `Clientes` (`id_cliente`);

ALTER TABLE `producto` ADD FOREIGN KEY (`num_pedido`) REFERENCES `categoria` (`id_categoria`);

ALTER TABLE `empleado` ADD FOREIGN KEY (`Nif_empleado`) REFERENCES `tienda` (`nif_tienda`);
