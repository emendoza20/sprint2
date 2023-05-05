Envía la URL a un repositorio llamado mongoDB-estructura que contenga la solución. Para cada base de datos debe subirse lo siguiente:

Diagrama de estructura (Modelo Tree o Modelo Relationships) con el diseño de la base de datos. Si lo deseas, puedes utilizar draw.io o cualquier otra herramienta que te permita dibujar la estructura y exportarla en formato png o jpg (para subirla al repositorio).
Script .js de creación y carga de la base de datos.
Descripción
Modelaremos varios diagramas entidad-relación.

Nivel 1
- Ejercicio 1 - Óptica

Una óptica, llamada “Cul d'Ampolla”, quiere informatizar la gestión de los clientes/as y ventas de gafas.

En primer lugar, la óptica quiere saber cuál es el proveedor de cada una de las gafas. En concreto quiere saber de cada proveedor : El nombre, la dirección (calle, número, piso, puerta, ciudad, código postal y país), teléfono, fax, NIF.

La política de compras de la óptica se basa en que las gafas de una marca se comprarán a un único proveedor (así podrá sacar mejores precios), pero pueden comprar gafas de varias marcas a un proveedor. De las gafas quiere saber: La marca, la graduación de cada uno de los cristales, el tipo de montura (flotante, pasta o metálica), el color de la montura, el color de cada vidrio, el precio.

De los clientes/as desea almacenar: El nombre, la dirección postal, el teléfono, el correo electrónico, la fecha de registro.
Cuando llega un/a cliente/a nuevo, almacenar el/la cliente/a que le ha recomendado el establecimiento (siempre que alguien le haya recomendado).
Nuestro sistema deberá indicar quién ha sido el empleado/a que ha vendido cada anteojo. Define un período de tiempo de ventas.


notas importantes :https://medium.com/techwomenc/como-pasar-de-sql-a-nosql-sin-sufrir-e34dd22349e5
