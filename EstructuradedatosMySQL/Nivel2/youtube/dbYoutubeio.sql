 
Table usuarios{
  email varchar  [primary key]
  password  varchar(255)
  nombre_usuario  varchar(255)
  fecha_nacimiento DATE
  sexo  varchar(50)
  pais  varchar(100)
  codigo_postal  varchar(20)
}

TABLE videos {
  id_video INT [primary key]  
  id_usuario VARCHAR(255)  
  titulo VARCHAR(255)
  descripcion TEXT
  size INT
  nombre_archivo VARCHAR(255)
  duracion TIME
  thumbnail VARCHAR(255)
  reproducciones INT
  likes INT
  dislikes INT
  estado VARCHAR(50)
  //FOREIGN KEY (id_usuario) REFERENCES usuarios(email)
}
Ref: videos.id_usuario > usuarios.email // many-to-one

 

 TABLE etiquetas {
  id_etiqueta integer [primary key]  
  nombre_etiqueta VARCHAR(255)

}
 TABLE videos_etiquetas {
  id_video integer
  id_etiqueta integer
 // PRIMARY KEY (id_video, id_etiqueta),
 //FOREIGN KEY (id_video) REFERENCES videos(id_video),
  //FOREIGN KEY (id_etiqueta) REFERENCES etiquetas(id_etiqueta)
}

Ref: videos_etiquetas.id_etiqueta > videos.id_video// many-to-one
Ref: videos_etiquetas.id_etiqueta > etiquetas.id_etiqueta// many-to-one


TABLE canales{
  id_canal integer [primary key] 
  nombre VARCHAR(255)
  descripcion TEXT
  fecha_creacion DATE
  id_usuario VARCHAR(255)
  //FOREIGN KEY (id_usuario) REFERENCES usuarios(email)
}
Ref: canales.id_usuario > usuarios.email// many-to-one

 TABLE suscripciones{
  id_usuario_suscriptor VARCHAR(255)
  id_canal integer
  PRIMARY KEY (id_usuario_suscriptor, id_canal)
  //FOREIGN KEY (id_usuario_suscriptor) REFERENCES usuarios(email),
  //FOREIGN KEY (id_canal) REFERENCES canales(id_canal)
}
Ref: suscripciones.id_usuario_suscriptor > usuarios.email// many-to-one
Ref: suscripciones.id_canal > canales.id_canal// many-to-one


 TABLE likes_dislikes {
  id_usuario VARCHAR(255)
  id_video integer
  tipo VARCHAR(50)
  fecha_hora DATETIME
  PRIMARY KEY (id_usuario, id_video)
  //FOREIGN KEY (id_usuario) REFERENCES usuarios(email)
  //FOREIGN KEY (id_video) REFERENCES videos(id_video)
}
Ref: likes_dislikes.id_usuario  > usuarios.email// many-to-one
Ref: likes_dislikes.id_video  > videos.id_video// many-to-one


TABLE playlists{
  id_playlist integer [primary key] 
  nombre VARCHAR(255)
  fecha_creacion DATE
  estado VARCHAR(50)
  id_usuario VARCHAR(255)
 // FOREIGN KEY (id_usuario) REFERENCES usuarios(email)
}
Ref: playlists.id_usuario  > usuarios.email// many-to-one


 TABLE videos_playlists{
  id_video integer
  id_playlist integer
  PRIMARY KEY (id_video, id_playlist)
  //FOREIGN KEY (id_video) REFERENCES videos(id_video),
  //FOREIGN KEY (id_playlist) REFERENCES playlists(id_playlist)
}

Ref: videos_playlists.id_video  > videos.id_video// many-to-one
Ref: videos_playlists.id_playlist > playlists.id_playlist// many-to-one


 TABLE comentarios{
  id_comentario integer [primary key] 
  id_usuario VARCHAR(255)
  id_video INT
  texto TEXT
  fecha_hora DATETIME
  //FOREIGN KEY (id_usuario) REFERENCES usuarios(email),
  //FOREIGN KEY (id_video) REFERENCES videos(id_video)
}

Ref: comentarios.id_usuario  > usuarios.email// many-to-one
Ref: comentarios.id_video  > videos.id_video// many-to-one



TABLE likes_dislikes_comentarios{
  id_usuario VARCHAR(255)
  id_comentario INT
  tipo VARCHAR(50)
  fecha_hora DATETIME
  PRIMARY KEY (id_usuario, id_comentario)
  //FOREIGN KEY (id_usuario) REFERENCES usuarios(email),
  //FOREIGN KEY (id_comentario) REFERENCES comentarios(id_comentario)
}
Ref: likes_dislikes_comentarios.id_usuario  > usuarios.email// many-to-one
Ref: likes_dislikes_comentarios.id_comentario > comentarios.id_comentario
