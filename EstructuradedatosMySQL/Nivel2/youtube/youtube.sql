SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Base de datos: `top_sounds`
--
CREATE DATABASE IF NOT EXISTS `youtube` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `youtube`;
CREATE TABLE usuarios (
  email VARCHAR(255) PRIMARY KEY,
  password VARCHAR(255),
  nombre_usuario VARCHAR(255),
  fecha_nacimiento DATE,
  sexo VARCHAR(50),
  país VARCHAR(100),
  código_postal VARCHAR(20)
);

CREATE TABLE videos (
  id_video INT PRIMARY KEY AUTO_INCREMENT,
  id_usuario VARCHAR(255) NOT NULL,
  título VARCHAR(255),
  descripción TEXT,
  tamaño INT,
  nombre_archivo VARCHAR(255),
  duración TIME,
  thumbnail VARCHAR(255),
  reproducciones INT,
  likes INT,
  dislikes INT,
  estado VARCHAR(50),
  FOREIGN KEY (id_usuario) REFERENCES usuarios(email)
);

CREATE TABLE etiquetas (
  id_etiqueta INT PRIMARY KEY AUTO_INCREMENT,
  nombre_etiqueta VARCHAR(255)
);

CREATE TABLE videos_etiquetas (
  id_video INT,
  id_etiqueta INT,
  PRIMARY KEY (id_video, id_etiqueta),
  FOREIGN KEY (id_video) REFERENCES videos(id_video),
  FOREIGN KEY (id_etiqueta) REFERENCES etiquetas(id_etiqueta)
);

CREATE TABLE canales (
  id_canal INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(255),
  descripción TEXT,
  fecha_creación DATE,
  id_usuario VARCHAR(255),
  FOREIGN KEY (id_usuario) REFERENCES usuarios(email)
);

CREATE TABLE suscripciones (
  id_usuario_suscriptor VARCHAR(255),
  id_canal INT,
  PRIMARY KEY (id_usuario_suscriptor, id_canal),
  FOREIGN KEY (id_usuario_suscriptor) REFERENCES usuarios(email),
  FOREIGN KEY (id_canal) REFERENCES canales(id_canal)
);

CREATE TABLE likes_dislikes (
  id_usuario VARCHAR(255),
  id_video INT,
  tipo VARCHAR(50),
  fecha_hora DATETIME,
  PRIMARY KEY (id_usuario, id_video),
  FOREIGN KEY (id_usuario) REFERENCES usuarios(email),
  FOREIGN KEY (id_video) REFERENCES videos(id_video)
);

CREATE TABLE playlists (
  id_playlist INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(255),
  fecha_creación DATE,
  estado VARCHAR(50),
  id_usuario VARCHAR(255),
  FOREIGN KEY (id_usuario) REFERENCES usuarios(email)
);

CREATE TABLE videos_playlists (
  id_video INT,
  id_playlist INT,
  PRIMARY KEY (id_video, id_playlist),
  FOREIGN KEY (id_video) REFERENCES videos(id_video),
  FOREIGN KEY (id_playlist) REFERENCES playlists(id_playlist)
);

CREATE TABLE comentarios (
  id_comentario INT PRIMARY KEY AUTO_INCREMENT,
  id_usuario VARCHAR(255),
  id_video INT,
  texto TEXT,
  fecha_hora DATETIME,
  FOREIGN KEY (id_usuario) REFERENCES usuarios(email),
  FOREIGN KEY (id_video) REFERENCES videos(id_video)
);

CREATE TABLE likes_dislikes_comentarios (
  id_usuario VARCHAR(255),
  id_comentario INT,
  tipo VARCHAR(50),
  fecha_hora DATETIME,
  PRIMARY KEY (id_usuario, id_comentario),
  FOREIGN KEY (id_usuario) REFERENCES usuarios(email),
  FOREIGN KEY (id_comentario) REFERENCES comentarios(id_comentario)
);
