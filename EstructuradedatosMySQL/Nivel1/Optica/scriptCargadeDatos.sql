-- Insertar datos de ejemplo en la tabla Proveedor

USE `optica`;
INSERT INTO Proveedor (NIF, name, street, number, floor, door, city, zip_code, country, phone, fax)
VALUES (1, 'alanaleifue', 'Calle Proveedor 1', 123456789, 6, 1, 'Barcelona', 8001, 'España', 987654321, 123456789);

INSERT INTO Proveedor (NIF, name, street, number, floor, door, city, zip_code, country, phone, fax)
VALUES (5, 'OpticaCaroni', 'Calle Proveedor 5', 120000789, 7, 8, 'Valencia', 080541, 'España', 987654431, 12345545343);


-- Insertar datos de ejemplo en la tabla Gafas
INSERT INTO Gafas (id_proveedor, marca, graduacion, tipo_montura, color_montura, color_vidrio, precio)
VALUES (1, 'Marca 1', 2, 'flotante', 'rojo', 'azul', 50.00);

INSERT INTO Gafas (id_proveedor, marca, graduacion, tipo_montura, color_montura, color_vidrio, precio)
VALUES (5, 'Marca 1', 4, 'pasta', 'negro', 'verde', 100.00);

-- Insertar datos de ejemplo en la tabla Cliente
INSERT INTO Cliente (id, nombre, direccion, phone, email, fecha_registro,recomendador_id)
VALUES ('y9408574r', 'Cliente 1', 'Calle Cliente 1', 123456789, 'cliente1@ejemplo.com', '2022-01-01',1);

INSERT INTO Cliente (id, nombre, direccion, phone, email, fecha_registro,recomendador_id)
VALUES ('54861819B', 'Cliente 2', 'Calle Cliente 2', 987654321, 'cliente2@ejemplo.com', '2022-01-02',2);

-- Insertar datos de ejemplo en la tabla Empleado
INSERT INTO Empleado (id_empleado, nombre, direccion, phone, email, fecha_regitro)
VALUES (45454, 'Empleado 1', 'Calle Empleado 1', 123456789, 'empleado1@ejemplo.com', '2022-01-01');

INSERT INTO Empleado (id_empleado, nombre, direccion, phone, email, fecha_regitro)
VALUES (2, 'Empleado 2', 'Calle Empleado 2', 987654321, 'empleado2@ejemplo.com', '2022-01-02');

-- Insertar datos de ejemplo en la tabla ventas
 INSERT INTO ventas (venta_id, id_cliente, id_empleado, fecha_venta) 
VALUES (1, 1, 45454, '2022-01-01 10:00:00');

INSERT INTO ventas (venta_id, id_cliente, id_empleado, fecha_venta)
VALUES (2, 1, 2, '2022-01-02 11:00:00');

INSERT INTO ventas (venta_id, id_cliente, id_empleado, fecha_venta)
VALUES (3, 2, 1, '2022-01-03 12:00:00');

INSERT INTO ventas (venta_id, id_cliente, id_empleado, fecha_venta)
VALUES (4, 2,5,'2023-01-03 12:00:00');
