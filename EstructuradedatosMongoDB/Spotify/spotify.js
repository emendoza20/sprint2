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
