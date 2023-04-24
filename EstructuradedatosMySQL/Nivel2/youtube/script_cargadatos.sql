-- Insertar usuarios
INSERT INTO usuarios (email, password, nombre_usuario, fecha_nacimiento, sexo, país, código_postal) 
VALUES 
  ('user1@example.com', 'contraseña1', 'Usuario 1', '1990-01-01', 'M', 'España', '08001'),
  ('user2@example.com', 'contraseña2', 'Usuario 2', '1995-03-15', 'F', 'México', '05001'),
  ('user3@example.com', 'contraseña3', 'Usuario 3', '2000-11-25', 'F', 'Argentina', '10001'),
  ('user4@example.com', 'contraseña4', 'Usuario 4', '1985-07-04', 'M', 'Colombia', '20001');

-- Insertar videos
INSERT INTO videos (id_usuario, título, descripción, tamaño, nombre_archivo, duración, thumbnail, reproducciones, likes, dislikes, estado) 
VALUES 
  ('user1@example.com', 'Video 1', 'Descripción del video 1', 1024, 'video1.mp4', '00:10:00', 'thumb1.jpg', 50, 20, 2, 'público'),
  ('user1@example.com', 'Video 2', 'Descripción del video 2', 2048, 'video2.mp4', '00:20:00', 'thumb2.jpg', 100, 50, 5, 'público'),
  ('user2@example.com', 'Video 3', 'Descripción del video 3', 512, 'video3.mp4', '00:05:00', 'thumb3.jpg', 30, 10, 1, 'privado'),
  ('user3@example.com', 'Video 4', 'Descripción del video 4', 4096, 'video4.mp4', '00:30:00', 'thumb4.jpg', 200, 100, 10, 'público');

-- Insertar etiquetas
INSERT INTO etiquetas (nombre_etiqueta)
VALUES 
  ('Deportes'),
  ('Música'),
  ('Comedia'),
  ('Educación');

-- Insertar videos_etiquetas
INSERT INTO videos_etiquetas (id_video, id_etiqueta)
VALUES 
  (1, 1),
  (1, 2),
  (2, 2),
  (2, 3),
  (3, 3),
  (4, 1),
  (4, 2),
  (4, 3),
  (4, 4);

-- Insertar canales
INSERT INTO canales (nombre, descripción, fecha_creación, id_usuario)
VALUES 
  ('Canal 1', 'Descripción del canal 1', '2020-01-01', 'user1@example.com'),
  ('Canal 2', 'Descripción del canal 2', '2021-06-15', 'user2@example.com'),
  ('Canal 3', 'Descripción del canal 3', '2022-03-25', 'user3@example.com');

-- Insertar suscripciones
INSERT INTO suscripciones (id_usuario_suscriptor, id_canal)
VALUES 
  ('user2@example.com', 1),
  ('user3@example.com', 1),
  ('user1@example.com', 2),
  ('user4@example.com', 2),
  ('user1@example.com', 3);

-- Insertar likes_dis
-- INSERT INTO para la tabla etiquetas
INSERT INTO etiquetas (nombre_etiqueta) VALUES
    ('música'),
    ('deporte'),
    ('comedia'),
    ('videojuegos'),
    ('educativo');

-- INSERT INTO para la tabla videos_etiquetas (relación entre videos y etiquetas)
INSERT INTO videos_etiquetas (id_video, id_etiqueta) VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 5),
    (3, 1);

-- INSERT INTO para la tabla suscripciones
INSERT INTO suscripciones (id_usuario_suscriptor, id_canal) VALUES
    ('user1@gmail.com', 1),
    ('user1@gmail.com', 2),
    ('user2@gmail.com', 1),
    ('user3@gmail.com', 2),
    ('user4@gmail.com', 1),
    ('user4@gmail.com', 2);

-- INSERT INTO para la tabla likes_dislikes (de videos)
INSERT INTO likes_dislikes (id_usuario, id_video, tipo, fecha_hora) VALUES
    ('user1@gmail.com', 1, 'like', '2022-02-20 10:15:00'),
    ('user2@gmail.com', 1, 'like', '2022-02-20 11:25:00'),
    ('user3@gmail.com', 1, 'dislike', '2022-02-20 12:45:00'),
    ('user4@gmail.com', 1, 'like', '2022-02-21 09:30:00'),
    ('user1@gmail.com', 2, 'like', '2022-02-22 15:20:00'),
    ('user2@gmail.com', 2, 'dislike', '2022-02-23 11:05:00'),
    ('user3@gmail.com', 2, 'like', '2022-02-24 13:40:00');

-- INSERT INTO para la tabla playlists
INSERT INTO playlists (nombre, fecha_creación, estado, id_usuario) VALUES
    ('Mis vídeos favoritos', '2022-02-20', 'privada', 'user1@gmail.com'),
    ('Canciones para el gym', '2022-02-22', 'pública', 'user1@gmail.com'),
    ('Gameplay', '2022-02-23', 'privada', 'user2@gmail.com'),
    ('Comedia', '2022-02-25', 'pública', 'user3@gmail.com');

-- INSERT INTO para la tabla videos_playlists (relación entre videos y playlists)
INSERT INTO videos_playlists (id_video, id_playlist) VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (1, 2),
    (3, 2),
    (2, 3),
    (3, 3),
    (1, 4),
    (2, 4),
    (3, 4);

-- INSERT INTO para la tabla comentarios
INSERT INTO comentarios (id_usuario, id_video, texto, fecha_hora) VALUES
    ('user1@gmail.com', 1, '¡Qué buena canción!', '2022-02-20 10:20:00'),
    ('user2@gmail.com', 1, 'No me gusta mucho esta música', '2022-02-20 11:30:
