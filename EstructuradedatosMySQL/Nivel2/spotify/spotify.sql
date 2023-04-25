
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
--
CREATE DATABASE IF NOT EXISTS `SPOTIFY` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `SPOTIFY`;



CREATE TABLE user (
email varchar PRIMARY KEY,
password varchar,
username varchar,
birthdate date,
gender varchar(50),
country varchar(100),
postal_code varchar(20),
account_type enum('free', 'premium')
);

CREATE TABLE subscription (
id integer PRIMARY KEY,
start_date date,
renewal_date date,
payment_method enum('credit_card', 'paypal'),
user_email varchar REFERENCES user(email)
);

CREATE TABLE credit_card (
id integer PRIMARY KEY,
card_number varchar,
expiration_date date,
security_code varchar,
subscription_id integer REFERENCES subscription(id)
);

CREATE TABLE paypal (
id integer PRIMARY KEY,
username varchar,
subscription_id integer REFERENCES subscription(id)
);

CREATE TABLE payment (
id integer PRIMARY KEY,
order_number varchar,
date date,
total float,
subscription_id integer REFERENCES subscription(id)
);

CREATE TABLE playlist (
id integer PRIMARY KEY,
title varchar,
num_songs integer,
created_at date,
deleted_at date,
user_email varchar REFERENCES user(email)
);

CREATE TABLE shared_playlist (
playlist_id integer REFERENCES playlist(id),
user_email varchar REFERENCES user(email),
added_at date
);

CREATE TABLE artist (
id integer PRIMARY KEY,
name varchar,
image varchar
);

CREATE TABLE album (
id integer PRIMARY KEY,
title varchar,
release_year integer,
cover_image varchar,
artist_id integer REFERENCES artist(id)
);

CREATE TABLE song (
id integer PRIMARY KEY,
title varchar,
duration integer,
times_played integer,
album_id integer REFERENCES album(id)
);

CREATE TABLE favorite_album (
user_email varchar REFERENCES user(email),
album_id integer REFERENCES album(id),
PRIMARY KEY (user_email, album_id)
);

CREATE TABLE favorite_song (
user_email varchar REFERENCES user(email),
song_id integer REFERENCES song(id),
PRIMARY KEY (user_email, song_id)
);

INSERT INTO user (email, password, username, birthdate, gender, country, postal_code, account_type)
VALUES ('usuario1@gmail.com', 'contrasena1', 'usuario1', '1990-01-01', 'Masculino', 'España', '28001', 'premium');

INSERT INTO subscription (id, start_date, renewal_date, payment_method, user_email)
VALUES (1, '2022-01-01', '2023-01-01', 'credit_card', 'usuario1@gmail.com');

INSERT INTO credit_card (id, card_number, expiration_date, security_code, subscription_id)
VALUES (1, '1234567812345678', '2025-01-01', '123', 1);

INSERT INTO paypal (id, username, subscription_id)
VALUES (1, 'usuario1_paypal', 1);

INSERT INTO payment (id, order_number, date, total, subscription_id)
VALUES (1, '123456789', '2022-01-01', 10.99, 1);

INSERT INTO playlist (id, title, num_songs, created_at, deleted_at, user_email)
VALUES (1, 'Lista de reproducción 1', 10, '2022-01-01', NULL, 'usuario1@gmail.com');

INSERT INTO shared_playlist (playlist_id, user_email, added_at)
VALUES (1, 'usuario2@gmail.com', '2022-01-02');

INSERT INTO artist (id, name, image)
VALUES (1, 'Artista 1', 'imagen1.jpg');

INSERT INTO album (id, title, release_year, cover_image, artist_id)
VALUES (1, 'Álbum 1', 2022, 'cover1.jpg', 1);

INSERT INTO song (id, title, duration, times_played, album_id)
VALUES (1, 'Canción 1', 240, 0, 1);

INSERT INTO favorite_album (user_email, album_id)
VALUES ('usuario1@gmail.com', 1);

INSERT INTO favorite_song (user_email, song_id)
VALUES ('usuario1@gmail.com', 1);