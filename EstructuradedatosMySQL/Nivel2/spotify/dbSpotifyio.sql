Table user_premium{
  email_user_premium varchar  [primary key]
  password  varchar(255)
  nombre_usuario  varchar(255)
  fecha_nacimiento DATE
  sexo  varchar(50)
  pais  varchar(100)
  codigo_postal  varchar(20)
}

Table user_free{
  email_user_free varchar  [primary key]
  password  varchar(255)
  nombre_usuario  varchar(255)
  fecha_nacimiento DATE
  sexo  varchar(50)
  pais  varchar(100)
  codigo_postal  varchar(20)
}

Table user_suscripcion{
  id_suscripcion integer [primary key]
  fecha_inicio_suscripcion DATE
  fecha_renovacion DATE
  forma_pago enum('tarjeta_credito','paypal')
  
}

Table Tarjetas_credito{
  numero_tarjeta integer [primary key]
  mes integer
  year_caducity DATE
  code_security integer
}
Table Paypal{
  nombre_usuario varchar [primary key]

}

Table Pagos_user_premium{
  numero_orden integer [primary key]
  fecha_pago  DATE
  total float
}

Table Playlist{
   id_playlist integer  [primary key]
  titulo varchar 
  numero_canciones integer 
  fecha_creacion DATE
}

Table Playlist_deleted{
   fecha_delete DATE
}
Table Playlist_compartida{
   fecha_compartir DATE
}

Table album{
  artista varchar [primary key]
   titulo varchar 
   imagen varchar


}
Table artista{
  
  nombre varchar [primary key]
  imagen varchar
}

Table album_favorite{

}
Table cancion_favorite{

}