Table Usuario {
  username varchar [primary key]
  email varchar(16)
 fecha_nacimiento datetime
  sexo varchar(10)
  pais varchar(15)
  zip_code integer(15)
   
}

Table Video {
  titulo varchar [primary key]
  descripcion  varchar(16)
  size int 
  name_file varchar(30)
  tiempo datetime
  imagen VARBINARY(max)
  estado enum('publico','oculto', 'private')
  valoracion enum('like','dislike')
  num_likees int
  num_dislikes int
}
 Ref: Usuario.username  < Video.titulo

Table canal{
    titulo varchar(30)  [ref: - Usuario.username]
    descripcion varchar(30)
    fecha_creacion datetime

}

table etiquetas{
  id_video varchar [primary key]
  nombre varchar(34)
}

table playlist{
  nombre varchar [primary key]
  fecha datetime
  estado enum('publica' 'privada')
}

table comentario{
  text_comentario varchar [primary key]
  fecha datetime
   
}


 Ref: Video.titulo < etiquetas.id_video

 Ref: Video.titulo > etiquetas.id_video
 

