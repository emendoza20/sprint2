db.usuarios.insertOne({
  email: "ejemplo2@gmail.com",
  password: "abcdef",
  username: "ejemplo2",
  birthdate: ISODate("1995-05-20T00:00:00Z"),
  gender: "femenino",
  country: "España",
  postal_code: "28001",
  subscription: {
    start_date: ISODate("2021-12-01T00:00:00Z"),
    renewal_date: ISODate("2022-12-01T00:00:00Z"),
    payment_method: "transferencia bancaria",
    bank_account: {
      account_number: "12345678901234567890",
      account_holder: "Ejemplo2",
      bank_name: "BBVA"
    }
  },
  payments: [{
    date: ISODate("2021-12-01T00:00:00Z"),
    order_number: "ORD-002",
    total: 5.99
  },
  {
    date: ISODate("2022-01-15T00:00:00Z"),
    order_number: "ORD-003",
    total: 9.99
  }],
  playlists: [{
    title: "Playlist 2",
    number_of_songs: 5,
    creation_date: ISODate("2022-02-15T00:00:00Z"),
    is_deleted: false,
    deletion_date: null,
    is_shared: true,
    shared_with: ["ejemplo", "ejemplo3"],
    songs: [{
      song_id: ObjectId("6204b9d9f23c7a1a8b06c0f5"),
      added_by: "ejemplo2",
      added_on: ISODate("2022-02-15T00:00:00Z")
    },
    {
      song_id: ObjectId("6204b9d9f23c7a1a8b06c0f6"),
      added_by: "ejemplo2",
      added_on: ISODate("2022-02-15T00:05:00Z")
    }]
  }],
  favorite_albums: [{
    album_id: ObjectId("6204b9d9f23c7a1a8b06c0f3")
  },
  {
    album_id: ObjectId("6204b9d9f23c7a1a8b06c0f7")
  }],
  favorite_songs: [{
    song_id: ObjectId("6204b9d9f23c7a1a8b06c0f4")
  },
  {
    song_id: ObjectId("6204b9d9f23c7a1a8b06c0f5")
  }]
})




db.createCollection("artistas")

db.artistas.insertOne({
  nombre: "Artista 1",
  genero: "Rock",
  pais: "Estados Unidos",
  artistas_relacionados: [
    ObjectId("id_artista_2"),
    ObjectId("id_artista_3")
  ],
  albumes: [
    {
      _id: ObjectId(),
      titulo: "Álbum 1",
      fecha_lanzamiento: ISODate("2021-01-01"),
      canciones: [
        { 
          _id: ObjectId(), 
          titulo: "Canción 1",
          duracion: 180,
          compositor: "Compositor 1"
        },
        { 
          _id: ObjectId(), 
          titulo: "Canción 2",
          duracion: 210,
          compositor: "Compositor 2"
        }
      ]
    },
    {
      _id: ObjectId(),
      titulo: "Álbum 2",
      fecha_lanzamiento: ISODate("2022-05-01"),
      canciones: [
        { 
          _id: ObjectId(), 
          titulo: "Canción 3",
          duracion: 240,
          compositor: "Compositor 3"
        },
        { 
          _id: ObjectId(), 
          titulo: "Canción 4",
          duracion: 180,
          compositor: "Compositor 4"
        }
      ]
    }
  ],
  artistas_relacionados: [
    ObjectId("id_artista_2"),
    ObjectId("id_artista_3")
  ]
})

db.usuarios.insertOne({
  nombre: "Juan",
  apellido: "Pérez",
  email: "juanperez@gmail.com",
  direccion: {
    calle: "Av. Reforma",
    numero_exterior: "123",
    colonia: "Centro",
    codigo_postal: "06000",
    ciudad: "Ciudad de México",
    estado: "Distrito Federal",
    pais: "México"
  },
  telefonos: [
    {
      tipo: "casa",
      numero: "555-1234"
    },
    {
      tipo: "trabajo",
      numero: "555-5678"
    }
  ],
  tarjetas: [
    {
      numero: "1234567890123456",
      tipo: "visa",
      expiracion_mes: 12,
      expiracion_anio: 25,
      codigo_seguridad: "123",
      nombre_en_tarjeta: "Juan Pérez"
    }
  ],
  ordenes: [
    {
      numero: "ORD-001",
      fecha: ISODate("2022-01-01T00:00:00Z"),
      total: 100.00,
      productos: [
        {
          nombre: "Producto 1",
          cantidad: 2,
          precio_unitario: 50.00
        },
        {
          nombre: "Producto 2",
          cantidad: 1,
          precio_unitario: 50.00
        }
      ]
    },
    {
      numero: "ORD-002",
      fecha: ISODate("2022-02-01T00:00:00Z"),
      total: 75.00,
      productos: [
        {
          nombre: "Producto 3",
          cantidad: 1,
          precio_unitario: 75.00
        }
      ]
    }
  ]
})
