Table Clientes {
  id_cliente integer [primary key]
  Nombre varchar(16)
  apellido varchar(16)
  direccion varchar(16)
  zip_code varchar(15)
  localidad varchar(15)
  provincia varchar(13)
  numero_telefono_cliente integer
}



Table pedidos {
  id_pedido integer [primary key]  
  tipo_pedido enum('pick up','delivery')
  cant_productos integer
  precio_total float
  fecha_hora datetime

}
 Ref: pedidos.id_pedido > Clientes.id_cliente  // many-to-one

Table categoria{
  id_categoria int [primary key]
  nombre_categoria varchar [primary key]
 
}

 Ref: categoria.id_categoria < producto.num_pedido  // many-to-one

 Table producto{
  num_pedido integer [primary key]
    tipo_producto enum('pizza', 'hamburguesa','bebida')
    descripcion varchar(30)
    imagen VARBINARY(max)


 }
Table tienda{
  nif_tienda integer [primary key]
  direccion varchar(10)
  zip_code varchar(10)
  localidad varchar(10)
  provincia varchar(10)
}

table empleado{
  Nif_empleado integer [primary key]
  apellido varchar(10)
  numero_telefono_empleado integer
   tipo_empleado enum('cocinero', 'repartidor')

}
 Ref: tienda.nif_tienda < empleado.Nif_empleado  // many-to-one

 