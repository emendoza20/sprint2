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
  `tipo_producto` enum,
  `cant_productos` integer,
  `precio_total` float,
  `fecha_hora` datetime,
  `tipo_empleado` enum
);

CREATE TABLE `categoria` (
  `numero_categoria` integer PRIMARY KEY,
  `nombre_Categoria` varchar(10)
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
  `numero_telefono_empleado` integer
);

ALTER TABLE `pedidos` ADD FOREIGN KEY (`id_pedido`) REFERENCES `Clientes` (`id_cliente`);
