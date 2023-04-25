Table user {
  email varchar [primary key]
  password varchar
  username varchar
  birthdate date
  gender varchar(50)
  country varchar(100)
  postal_code varchar(20)
  account_type enum('free', 'premium')
}

Table subscription {
  id integer [primary key]
  start_date date
  renewal_date date
  payment_method enum('credit_card', 'paypal')
  user_email varchar [ref: > user.email]
}

Table credit_card {
  id integer [primary key]
  card_number varchar
  expiration_date date
  security_code varchar
  subscription_id integer [ref: > subscription.id]
}

Table paypal {
  id integer [primary key]
  username varchar
  subscription_id integer [ref: > subscription.id]
}

Table payment {
  id integer [primary key]
  order_number varchar
  date date
  total float
  subscription_id integer [ref: > subscription.id]
}

Table playlist {
  id integer [primary key]
  title varchar
  num_songs integer
  created_at date
  deleted_at date
  user_email varchar [ref: > user.email]
}

Table shared_playlist {
  playlist_id integer [ref: > playlist.id]
  user_email varchar [ref: > user.email]
  added_at date
}

Table album {
  id integer [primary key]
  title varchar
  release_year integer
  cover_image varchar
  artist_id integer [ref: > artist.id]
}

Table artist {
  id integer [primary key]
  name varchar
  image varchar
}

Table song {
  id integer [primary key]
  title varchar
  duration integer
  times_played integer
  album_id integer [ref: > album.id]
}

Table favorite_album {
  user_email varchar [ref: > user.email]
  album_id integer [ref: > album.id]
  primary key (user_email, album_id)
}

Table favorite_song {
  user_email varchar [ref: > user.email]
  song_id integer [ref: > song.id]
  primary key (user_email, song_id)
}


