SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
 
--
CREATE DATABASE IF NOT EXISTS `PIZZA` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `PIZZA`;


CREATE TABLE CLIENTE (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellidos VARCHAR(50),
    direccion VARCHAR(100),
    codigo_postal VARCHAR(10),
    localidad VARCHAR(50),
    provincia VARCHAR(50),
    telefono VARCHAR(20)
);

CREATE TABLE TIENDA (
    id_tienda INT PRIMARY KEY,
    direccion VARCHAR(100),
    codigo_postal VARCHAR(10),
    localidad VARCHAR(50),
    provincia VARCHAR(50)
);

CREATE TABLE EMPLEADO (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellidos VARCHAR(50),
    NIF VARCHAR(20),
    telefono VARCHAR(20),
    tipo_empleado ENUM('cocinero', 'repartidor'),
    id_tienda INT,
    FOREIGN KEY (id_tienda) REFERENCES TIENDA(id_tienda)
);

CREATE TABLE CATEGORIA (
    id_categoria INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE PRODUCTO (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion VARCHAR(200),
    imagen VARCHAR(200),
    precio DECIMAL(5,2),
    tipo ENUM('pizza', 'hamburguesa', 'bebida'),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES CATEGORIA(id_categoria)
);

CREATE TABLE PEDIDO (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    id_tienda INT,
    fecha_hora DATETIME,
    tipo_entrega ENUM('domicilio', 'recoger'),
    precio_total DECIMAL(6,2),
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),
    FOREIGN KEY (id_tienda) REFERENCES TIENDA(id_tienda)
);

CREATE TABLE DETALLE_PEDIDO (
    id_pedido INT,
    id_producto INT,
    cantidad INT,
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES PRODUCTO(id_producto),
    PRIMARY KEY (id_pedido, id_producto)
);

CREATE TABLE REPARTO (
    id_reparto INT PRIMARY KEY,
    id_pedido INT,
    id_empleado_repartidor INT,
    fecha_hora_entrega DATETIME,
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido),
    FOREIGN KEY (id_empleado_repartidor) REFERENCES EMPLEADO(id_empleado)
);


/**Hacer consulta*/

/*Pizzería:
Lista cuántos productos de tipo “Bebidas”. se han vendido en una determinada localidad.


SELECT SUM(dp.cantidad) AS total_bebidas_vendidas
FROM PEDIDO p
JOIN DETALLE_PEDIDO dp ON p.id_pedido = dp.id_pedido
JOIN PRODUCTO prod ON dp.id_producto = prod.id_producto
JOIN TIENDA t ON p.id_tienda = t.id_tienda
WHERE prod.tipo = 'bebida' AND t.localidad = 'NOMBRE_DE_LA_LOCALIDAD';

Lista cuántos pedidos ha efectuado un determinado empleado/a.*/
SELECT COUNT(*) as total_pedidos
FROM PEDIDO
WHERE id_empleado = 1;

