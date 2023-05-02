
-- Crear la base de datos
CREATE DATABASE optica;

-- Usar la base de datos optica
USE optica;

-- Tabla de proveedores
CREATE TABLE proveedor (
  id_proveedor INT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  calle VARCHAR(100),
  numero INT,
  piso INT,
  puerta VARCHAR(10),
  ciudad VARCHAR(100),
  codigo_postal VARCHAR(10),
  pais VARCHAR(50),
  telefono VARCHAR(20),
  fax VARCHAR(20),
  NIF VARCHAR(20)
);

-- Tabla de gafas
CREATE TABLE gafa (
  id_gafa INT PRIMARY KEY,
  id_proveedor INT NOT NULL,
  graduacion_izquierda FLOAT,
  graduacion_derecha FLOAT,
  tipo_montura VARCHAR(20),
  color_montura VARCHAR(20),
  color_vidrio_izquierdo VARCHAR(20),
  color_vidrio_derecho VARCHAR(20),
  marca VARCHAR(50),
  precio DECIMAL(10,2),
  FOREIGN KEY (id_proveedor) REFERENCES proveedor(id_proveedor)
);

CREATE TABLE empleado (
  id_empleado INT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  fecha_contratacion DATE,
  puesto VARCHAR(100)
);


CREATE TABLE cliente (
  id_cliente INT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR(200),
  telefono VARCHAR(20),
  correo_electronico VARCHAR(100),
  fecha_registro DATE,
  id_cliente_recomendador INT
);

CREATE TABLE venta (
  id_venta INT PRIMARY KEY,
  id_gafa INT NOT NULL,
  id_cliente INT NOT NULL,
  id_empleado INT NOT NULL,
  fecha_venta DATE,
  FOREIGN KEY (id_gafa) REFERENCES gafa(id_gafa),
  FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
  FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);


-- Insertar un proveedor
INSERT INTO proveedor (id_proveedor, nombre, calle, numero, ciudad, codigo_postal, pais, telefono, fax, NIF)
VALUES (1, 'Proveedor 1', 'Calle del Proveedor 1', 123, 'Ciudad 1', '12345', 'Pais 1', '123456789', '987654321', 'NIF123456789');

-- Insertar una gafa
INSERT INTO gafa (id_gafa, id_proveedor, graduacion_izquierda, graduacion_derecha, tipo_montura, color_montura, color_vidrio_izquierdo, color_vidrio_derecho, marca, precio)
VALUES (1, 1, -2.5, -2.0, 'Montura 1', 'Negra', 'Azul', 'Verde', 'Marca 1', 99.99);

-- Insertar un cliente
INSERT INTO cliente (id_cliente, nombre, direccion, telefono, correo_electronico, fecha_registro, id_cliente_recomendador)
VALUES (1, 'Cliente 1', 'Calle del Cliente 1', '123456789', 'cliente1@ejemplo.com', '2023-05-02', NULL);

-- Insertar un empleado
INSERT INTO empleado (id_empleado, nombre, fecha_contratacion, puesto)
VALUES (1, 'Empleado 1', '2022-01-01', 'Vendedor');

-- Insertar una venta
INSERT INTO venta (id_venta, id_gafa, id_cliente, id_empleado, fecha_venta)
VALUES (1, 1, 1, 1, '2023-05-02');

INSERT INTO proveedor (id_proveedor, nombre, calle, numero, piso, puerta, ciudad, codigo_postal, pais, telefono, fax, NIF)
VALUES
(1, 'Gafas S.A.', 'Calle Mayor', 5, NULL, 'B', 'Madrid', '28001', 'España', '910000001', '910000002', 'A12345678'),
(2, 'Vision Center', 'Avenida del Mar', 15, NULL, NULL, 'Barcelona', '08001', 'España', '930000001', NULL, 'B98765432'),
(3, 'Optica Sol', 'Calle del Sol', 10, 1, 'A', 'Valencia', '46001', 'España', '960000001', '960000002', 'C12345678');

INSERT INTO gafa (id_gafa, id_proveedor, graduacion_izquierda, graduacion_derecha, tipo_montura, color_montura, color_vidrio_izquierdo, color_vidrio_derecho, marca, precio)
VALUES
(1, 1, -1.5, -1.25, 'Completa', 'Negro', 'Transparente', 'Transparente', 'Ray-Ban', 120.50),
(2, 2, NULL, -1.75, 'Semi al aire', 'Plateado', 'Azul', 'Azul', 'Prada', 250.00),
(3, 3, 0, 0.25, 'Sin montura', NULL, 'Verde', 'Verde', 'Oakley', 180.00);

INSERT INTO cliente (id_cliente, nombre, direccion, telefono, correo_electronico, fecha_registro, id_cliente_recomendador)
VALUES
(1, 'Juan Pérez', 'Calle del Sol, 5', '912345678', 'juan.perez@example.com', '2021-01-15', NULL),
(2, 'María García', 'Avenida del Mar, 10', '931234567', 'maria.garcia@example.com', '2021-02-02', 1),
(3, 'Luis Fernández', 'Calle Mayor, 20', '963456789', 'luis.fernandez@example.com', '2021-03-10', NULL);

INSERT INTO empleado (id_empleado, nombre, fecha_contratacion, puesto)
VALUES
(1, 'Ana López', '2020-01-01', 'Optometrista'),
(2, 'Pedro Sánchez', '2021-02-01', 'Recepcionista'),
(3, 'Laura Torres', '2021-04-15', 'Optometrista');

INSERT INTO venta (id_venta, id_gafa, id_cliente, id_empleado, fecha_venta)
VALUES
(1, 1, 1, 1, '2021-01-20'),
(2, 2, 2, 2, '2021-02-15'),
(3, 3, 3, 3, '2021-03-20'),
(4, 1, 2, 3, '2021-04-25')