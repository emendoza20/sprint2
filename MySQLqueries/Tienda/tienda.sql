
DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda CHARACTER SET utf8mb4;
USE tienda;

CREATE TABLE fabricante (
  codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto (
  codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio DOUBLE NOT NULL,
  codigo_fabricante INT UNSIGNED NOT NULL,
  FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
);

INSERT INTO fabricante VALUES(1, 'Asus');
INSERT INTO fabricante VALUES(2, 'Lenovo');
INSERT INTO fabricante VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricante VALUES(4, 'Samsung');
INSERT INTO fabricante VALUES(5, 'Seagate');
INSERT INTO fabricante VALUES(6, 'Crucial');
INSERT INTO fabricante VALUES(7, 'Gigabyte');
INSERT INTO fabricante VALUES(8, 'Huawei');
INSERT INTO fabricante VALUES(9, 'Xiaomi');

INSERT INTO producto VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO producto VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO producto VALUES(3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO producto VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producto VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO producto VALUES(8, 'Portátil Yoga 520', 559, 2);
INSERT INTO producto VALUES(9, 'Portátil Ideapd 320', 444, 2);
INSERT INTO producto VALUES(10, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO producto VALUES(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);

/**Hacer consultas */
/*Tenemos las tablas producto y fabricante, cada una con los siguientes campos:
- producto (codigo, número, precio, codigo_fabricante)
- fabricante (codigo, número)
El campo 'codigo_fabricante' de la entidad producto se relaciona con el campo 'código' de la entidad fabricante.
Por favor, efectúa las siguientes consultas:*/

/*1) Lista el nombre de todos los productos que hay en la tabla producto.*/
SELECT* nombre FROM producto ;

/*2) Lista los nombres y los precios de todos los productos de la tabla producto.*/
SELECT* nombre,precio FROM producto ;

/*3) Lista todas las columnas de la tabla producto. */
DESCRIBE producto;

/*4) Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).*/

SELECT nombre, precio, precio*1.22 AS precio_USD FROM producto;


 
/*5) Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes sobrenombre para las columnas: nombre de producto, euros, dólares.*/

/*SELECT nombre AS 'nombre de producto', precio AS 'euros', precio*1.22 AS 'dólares' FROM producto;*/


/*6)Para listar los nombres y precios de todos los productos de la tabla "producto" y convertir los nombres a mayúsculas, se puede utilizar la siguiente consulta SQL
 */
SELECT UPPER(nombre) AS nombre, precio FROM producto;


/*7)Para listar los nombres y precios de todos los productos de la tabla "producto" y convertir los nombres a minúsculas, se puede utilizar la siguiente consulta SQL*/
SELECT LOWER(nombre) AS nombre, precio FROM producto;

/*8)Para listar el nombre de todos los fabricantes en una columna, y en otra columna obtener en mayúsculas los dos primeros caracteres del nombre del fabricante, se puede utilizar la siguiente consulta SQL: */

SELECT nombre, UPPER(SUBSTRING(nombre, 1, 2)) AS dos_letras FROM fabricante;



/*9)Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.
 */

 SELECT nombre, ROUND(precio) AS precio_redondeado FROM producto;



/*10) Para listar los nombres y precios de todos los productos de la tabla "producto" y truncar el valor del precio para mostrarlo sin ninguna cifra decimal, se puede utilizar la siguiente consulta SQL*/
SELECT nombre, TRUNCATE(precio, 0) AS precio_truncado FROM producto;



/*11)Llista el codi dels fabricants que tenen productes en la taula producto.

 */

SELECT DISTINCT codigo_fabricante FROM producto;


/*12)Lista el código de los fabricantes que tienen productos en la mesa producto, eliminando los códigos que aparecen repetidos. */
SELECT DISTINCT codigo_fabricante FROM producto;
/*13 Lista los nombres de los fabricantes ordenados de forma ascendente.*/
SELECT nombre FROM fabricante ORDER BY nombre ASC;

/*Lista los nombres de los fabricantes ordenados de forma descendente.*/
SELECT nombre FROM fabricante ORDER BY nombre DESC;

/*15Lista los nombres de los productos ordenados, en primer lugar, por el nombre de forma ascendente y, en segundo lugar, por el precio de forma descendente.*/
SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC;

/*16 Devuelve una lista con las 5 primeras filas de la mesa fabricante.
*/
SELECT * FROM fabricante LIMIT 5;

/*17 Devuelve una lista con 2 filas a partir de la cuarta fila de la mesa fabricante. La cuarta fila también debe incluirse en la respuesta.*/


/*18 Lista el nombre y precio del producto más barato. (Utiliza solo las cláusulas ORDER BY y LIMIT). NOTA: Aquí no podría usar MIN(precio), necesitaría GROUP BY.*/
SELECT nombre, precio
FROM producto
ORDER BY precio ASC
LIMIT 1;
/*19Lista el nombre y precio del producto más caro. (Utiliza solo las cláusulas ORDER BY y LIMIT). NOTA : Aquí no podría usar MAX(precio), necesitaría GROUP BY.*/
SELECT nombre_producto, precio
FROM producto
ORDER BY precio DESC
LIMIT 1;

/*20Lista el nombre de todos los productos del fabricante cuyo código de fabricante es igual a 2.*/
SELECT nombre
FROM producto
WHERE cod_fabricante = 2;
/*21*Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.*/

SELECT p.nombre AS "nombre del producto", p.precio AS "precio", f.nombre AS "nombre del fabricante"
FROM producto p
JOIN fabricante f ON p.codigo_fabricante = f.codigo;

/*22 Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. Ordena el resultado por el nombre del fabricante, por orden alfabético.*/

SELECT p.nombre AS "nombre_producto", p.precio, f.nombre AS nombre_fabricante 
FROM producto p 
INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo 
ORDER BY f.nombre ASC;

/*23 Devuelve una lista con el código del producto, nombre del producto, código del fabricante y nombre del fabricante, de todos los productos de la base de datos.*/

SELECT producto.codigo_producto, producto.nombre_producto, producto.codigo_fabricante, fabricante.nombre_fabricante
FROM producto
JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo_fabricante;

/*24 Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.*/
/*24 SELECT p.nombre as "nombre del producto", p.precio, f.nombre as "nombre del fabricante"*/
FROM producto p
INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo
ORDER BY p.precio ASC
LIMIT 1;
 
SELECT p.nombre as "nombre del producto", p.precio, f.nombre as "nombre del fabricante"
FROM producto p
INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo
ORDER BY p.precio ASC
LIMIT 1;

/*25) Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.*/
 
 SELECT  p.nombre as "nombre del producto", p.precio, f.nombre as "nombre del fabricante"
FROM producto p
INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo
ORDER BY p.precio DESC
LIMIT 1;

/*26 Devuelve una lista de todos los productos del fabricante Lenovo.*/
SELECT * FROM producto WHERE codigo_fabricante = 2;
/*27 Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.*/

SELECT * FROM producto WHERE codigo_fabricante = 6 AND precio > 200;

/*28 Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. Sin utilizar el operador IN.*/
/*Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. Sin utilizar el operador IN.*/
SELECT producto.*
FROM producto
JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo
WHERE fabricante.nombre = 'Asus'
   OR fabricante.nombre = 'Hewlett-Packard'
   OR fabricante.nombre = 'Seagate';
/*29 Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. Utilizando el operador IN.*/

SELECT *
FROM producto
WHERE codigo_fabricante IN (
  SELECT codigo
  FROM fabricante
  WHERE nombre IN ('Asus', 'Hewlett-Packard', 'Seagate')
);
/*30Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre acabe por la vocal e. SELECT p.nombre, p.precio*/
FROM producto p
JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre LIKE '%e';

/*31 Retorna un llistat amb el nom i el preu de tots els productes el nom de fabricant dels quals contingui el caràcter w en el seu nom.*/
SELECT p.nombre, p.precio
FROM producto p
JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE f.nombre LIKE '%w%';

/*32 Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180€. Ordena el resultado, en primer lugar, por el precio (en orden descendente) y, en segundo lugar, por el nombre (en orden ascendente).*/
SELECT p.nombre, p.precio, f.nombre AS fabricante
FROM producto p
JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE p.precio >= 180
ORDER BY p.precio DESC, p.nombre ASC;
/* 33 Devuelve un listado con el código y el nombre de fabricante, sólo de aquellos fabricantes que tienen productos asociados en la base de datos.*/
SELECT DISTINCT fabricante.codigo, fabricante.nombre
FROM fabricante
INNER JOIN producto ON fabricante.codigo = producto.codigo_fabricante;

/*34 Devuelve un listado de todos los fabricantes que existen en la base de datos, junto con los productos que tiene cada uno de ellos. El listado deberá mostrar también a aquellos fabricantes que no tienen productos asociados.*/

SELECT f.codigo, f.nombre, COUNT(p.codigo) AS num_productos
FROM fabricante f
LEFT JOIN producto p ON f.codigo = p.codigo_fabricante
GROUP BY f.codigo, f.nombre

/*35 Devuelve un listado en el que sólo aparezcan aquellos fabricantes que no tienen ningún producto asociado.*/
SELECT codigo, nombre
FROM fabricante
WHERE NOT EXISTS (
  SELECT 1
  FROM producto
  WHERE codigo_fabricante = fabricante.codigo
);

/*36 Devuelve todos los productos del fabricante Lenovo. (Sin utilizar INNER JOIN). */  
SELECT * FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo');

/*37 Devuelve todos los datos de los productos que tienen el mismo precio que el producto más caro del fabricante Lenovo. (Sin usar INNER JOIN).*/


SELECT MAX(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo');
SELECT * FROM producto WHERE precio = (SELECT MAX(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo'));
/*38 Lista el nombre del producto más caro del fabricante Lenovo.
*/
SELECT nombre
FROM producto
WHERE codigo_fabricante = (
    SELECT codigo
    FROM fabricante
    WHERE nombre = 'Lenovo'
)
AND precio = (
    SELECT MAX(precio)
    FROM producto
    WHERE codigo_fabricante = (
        SELECT codigo
        FROM fabricante
        WHERE nombre = 'Lenovo'
    )
);

/*39 Lista el nombre del producto más barato del fabricante Hewlett-Packard. */
SELECT nombre
FROM producto
WHERE codigo_fabricante = (
    SELECT codigo
    FROM fabricante
    WHERE nombre = 'Hewlett-Packard'
)
ORDER BY precio ASC
LIMIT 1;
/*40 Devuelve todos los productos de la base de datos que tienen un precio mayor o igual al producto más caro del fabricante Lenovo.*/
SELECT *
FROM producto
WHERE precio >= (
  SELECT MAX(precio)
  FROM producto
  WHERE codigo_fabricante = (
    SELECT codigo
    FROM fabricante
    WHERE nombre = 'Lenovo'
  )
)
/*41 Lista todos los productos del fabricante Asus que tienen un precio superior al precio medio de todos sus productos*/
SELECT * 
FROM producto 
WHERE codigo_fabricante = (
    SELECT codigo 
    FROM fabricante 
    WHERE nombre = 'Asus'
) 
AND precio > (
    SELECT AVG(precio) 
    FROM producto 
    WHERE codigo_fabricante = (
        SELECT codigo 
        FROM fabricante 
        WHERE nombre = 'Asus'
    )
);
