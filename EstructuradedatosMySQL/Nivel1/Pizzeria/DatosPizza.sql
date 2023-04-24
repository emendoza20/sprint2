INSERT INTO CLIENTE (id_cliente, nombre, apellidos, direccion, codigo_postal, localidad, provincia, telefono)
VALUES (1, 'Juan', 'García', 'Calle Mayor 123', '28001', 'Madrid', 'Madrid', '912345678');

INSERT INTO CLIENTE (id_cliente, nombre, apellidos, direccion, codigo_postal, localidad, provincia, telefono)
VALUES (2, 'María', 'López', 'Plaza del Sol 45', '46001', 'Valencia', 'Valencia', '960123456');

INSERT INTO CLIENTE (id_cliente, nombre, apellidos, direccion, codigo_postal, localidad, provincia, telefono)
VALUES (1, 'Juan', 'Pérez González', 'Calle Mayor 1', '28001', 'Madrid', 'Madrid', '912345678');

INSERT INTO TIENDA (id_tienda, direccion, codigo_postal, localidad, provincia)
VALUES (1, 'Calle Atocha 10', '28012', 'Madrid', 'Madrid');

INSERT INTO TIENDA (id_tienda, direccion, codigo_postal, localidad, provincia)
VALUES (2, 'Avenida de la Constitución 15', '46001', 'Valencia', 'Valencia');

INSERT INTO EMPLEADO (id_empleado, nombre, apellidos, NIF, telefono, tipo_empleado, id_tienda)
VALUES (1, 'Carlos', 'González', '12345678A', '912345678', 'cocinero', 1);

INSERT INTO EMPLEADO (id_empleado, nombre, apellidos, NIF, telefono, tipo_empleado, id_tienda)
VALUES (2, 'Laura', 'Pérez', '23456789B', '960123456', 'repartidor', 2);

INSERT INTO CATEGORIA (id_categoria, nombre)
VALUES (1, 'Pizza clásica');

INSERT INTO CATEGORIA (id_categoria, nombre)
VALUES (2, 'Pizza especial');

INSERT INTO CATEGORIA (id_categoria, nombre)
VALUES (3, 'Hamburguesa');

INSERT INTO CATEGORIA (id_categoria, nombre)
VALUES (4, 'Bebida');

INSERT INTO PRODUCTO (id_producto, nombre, descripcion, imagen, precio, tipo, id_categoria)
VALUES (1, 'Margarita', 'Tomate, mozzarella y albahaca', 'https://example.com/margarita.jpg', 10.50, 'pizza', 1);

INSERT INTO PRODUCTO (id_producto, nombre, descripcion, imagen, precio, tipo, id_categoria)
VALUES (2, 'Hawaiana', 'Tomate, mozzarella, piña y jamón', 'https://example.com/hawaiana.jpg', 12.00, 'pizza', 2);

INSERT INTO PRODUCTO (id_producto, nombre, descripcion, imagen, precio, tipo, id_categoria)
VALUES (3, 'Barbacoa', 'Tomate, mozzarella, carne de vacuno, bacon, cebolla y salsa barbacoa', 'https://example.com/barbacoa.jpg', 14.50, 'pizza', 2);

INSERT INTO PRODUCTO (id_producto, nombre, descripcion, imagen, precio, tipo, id_categoria)
VALUES (4, 'Doble queso', 'Tomate, mozzarella, queso de cabra y rulo de cabra', 'https://example.com/doble_queso.jpg', 13.00, 'pizza', 1);

INSERT INTO PRODUCTO (id_producto, nombre, descripcion, imagen, precio, tipo, id_categoria)
VALUES (5, 'Clásica', 'Carne de vacuno, lechuga, tomate, cebolla y salsa especial', 'https://example.com/clasica.jpg', 8.50, 'hamburguesa', 3);

INSERT INTO PEDIDO (id_pedido, id_cliente, id_tienda, fecha_hora, tipo_entrega, precio_total)
VALUES (1, 1, 1, '2023-04-24 12:30:00', 'domicilio', 25.99);
INSERT INTO PEDIDO (id_pedido, id_cliente, id_tienda, fecha_hora, tipo_entrega, precio_total) 
VALUES (3, 2, 1, '2023-04-24 10:30:00', 'domicilio', 15.50);


INSERT INTO DETALLE_PEDIDO (id_pedido, id_producto, cantidad)
VALUES (1, 4, 2);
INSERT INTO DETALLE_PEDIDO (id_pedido, id_producto, cantidad)
 VALUES(3, 5, 1)

 INSERT INTO REPARTO (id_reparto, id_pedido, id_empleado_repartidor, fecha_hora_entrega)
VALUES (1, 1, 1, '2023-04-24 13:00:00'),
 INSERT INTO REPARTO (id_reparto, id_pedido, id_empleado_repartidor, fecha_hora_entrega)
 VALUES (2, 2, 2, '2023-04-24 13:30:00'),
 INSERT INTO REPARTO (id_reparto, id_pedido, id_empleado_repartidor, fecha_hora_entrega)
 VALUES (3, 3, 3, '2023-04-24 14:00:00');

      
