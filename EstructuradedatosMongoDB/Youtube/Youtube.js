db.Usuarios.insert({
    "_id": "elitaHatsukoi",
    "email": "emendoza867@gmail.com",
    "password": "contraseña123",
    "username": "usuario1",
    "fecha_nacimiento": new Date("1996-03-02"),
    "sexo": "M",
    "pais": "España",
    "codigo_postal": "08001",
    "videos": [
       {
          "_id": "video1",
          "titulo": "Tutorial de MongoDB",
          "descripcion": "Aprende a usar MongoDB en este tutorial",
          "tamano": 1024,
          "nombre_archivo": "tutorial_mongodb.mp4",
          "duracion": 3600,
          "thumbnail": "thumbnail_video1.jpg",
          "reproducciones": 100,
          "likes": 10,
          "dislikes": 2,
          "estado": "publico",
          "etiquetas": [
             {
                "_id": "etiqueta1",
                "nombre": "MongoDB"
             },
             {
                "_id": "etiqueta2",
                "nombre": "Base de datos"
             }
          ],
          "comentarios": [
             {
                "_id": "comentario1",
                "texto": "Buen tutorial, gracias!",
                "fecha_hora": new Date("2022-04-01T14:30:00Z"),
                "likes": [
                   {
                      "_id": "like1",
                      "usuario": "usuario2",
                      "fecha_hora": new Date("2022-04-01T14:35:00Z")
                   }
                ],
                "dislikes": []
             },
             {
                "_id": "comentario2",
                "texto": "Me ha resultado muy útil, sigue así!",
                "fecha_hora": new Date("2022-04-02T09:45:00Z"),
                "likes": [
                   {
                      "_id": "like2",
                      "usuario": "usuario3",
                      "fecha_hora": new Date("2022-04-02T09:50:00Z")
                   }
                ],
                "dislikes": []
             }
          ]
       }
    ],
    "canales": [
       {
          "_id": "canal1",
          "nombre": "Mi canal de tutoriales",
          "descripcion": "En este canal encontrarás tutoriales sobre programación",
          "fecha_creacion": new Date("2022-04-01"),
          "suscriptores": [
             {
                "_id": "suscriptor1",
                "usuario": "usuario2",
                "fecha_hora": new Date("2022-04-02T12:00:00Z")
             }
          ]
       }
    ],
    "playlists": [
       {
          "_id": "playlist1",
          "nombre": "Mis tutoriales favoritos",
          "fecha_creacion": new Date("2022-04-02"),
          "estado": "publica",
          "videos": [
             {
                "_id": "video1",
                "titulo": "Tutorial de MongoDB"
             }
          ]
       }
    ]
 })


 db.collection("usuarios").insertOne({
    "_id": 4,
    "email": "juanita_garcia@gmail.com",
    "password": "contrasena123",
    "username": "juanita_garcia",
    "fecha_nacimiento": new Date("1995-12-10"),
    "sexo": "F",
    "pais": "Mexico",
    "codigo_postal": "01000",
    "videos": [
      {
        "_id": "video3",
        "titulo": "Tutorial de Python",
        "descripcion": "Aprende a programar en Python con este tutorial",
        "tamano": 2048,
        "nombre_archivo": "tutorial_python.mp4",
        "duracion": 4800,
        "thumbnail": "thumbnail_video3.jpg",
        "reproducciones": 50,
        "likes": 5,
        "dislikes": 1,
        "estado": "publico",
        "etiquetas": [
          {
            "_id": "etiqueta3",
            "nombre": "Python"
          },
          {
            "_id": "etiqueta4",
            "nombre": "Programacion"
          }
        ],
        "comentarios": [
          {
            "_id": "comentario3",
            "texto": "Excelente tutorial, gracias!",
            "fecha_hora": new Date("2022-05-02T10:30:00Z"),
            "likes": [
              {
                "_id": "like3",
                "usuario": "usuario1",
                "fecha_hora": new Date("2022-05-02T10:35:00Z")
              }
            ],
            "dislikes": []
          },
          {
            "_id": "comentario4",
            "texto": "Muy completo, me ha ayudado mucho",
            "fecha_hora": new Date("2022-05-03T15:00:00Z"),
            "likes": [],
            "dislikes": []
          }
        ]
      }
    ],
    "canales": [
      {
        "_id": "canal2",
        "nombre": "Mi canal de programación",
        "descripcion": "En este canal encontrarás tutoriales sobre programación y desarrollo web",
        "fecha_creacion": new Date("2022-05-01"),
        "suscriptores": [
          {
            "_id": "suscriptor2",
            "usuario": "usuario3",
            "fecha_hora": new Date("2022-05-02T12:00:00Z")
          }
        ]
      }
    ],
    "playlists": [
      {
        "_id": "playlist2",
        "nombre": "Mis tutoriales de programación favoritos",
        "fecha_creacion": new Date("2022-05-02"),
        "estado": "publica",
        "videos": [
          {
            "_id": "video3",
            "titulo": "Tutorial de Python"
          }
        ]
      }
    ]
  })
  


 
  db.usuarios.insertOne({
    "_id": 4,
    "email": "juanita_garcia@gmail.com",
    "password": "contrasena123",
    "username": "juanita_garcia",
    "fecha_nacimiento": new Date("1995-12-10"),
    "sexo": "F",
    "pais": "Mexico",
    "codigo_postal": "01000",
    "videos": [
      {
        "_id": "video3",
        "titulo": "Tutorial de Python",
        "descripcion": "Aprende a programar en Python con este tutorial",
        "tamano": 2048,
        "nombre_archivo": "tutorial_python.mp4",
        "duracion": 4800,
        "thumbnail": "thumbnail_video3.jpg",
        "reproducciones": 50,
        "likes": 5,
        "dislikes": 1,
        "estado": "publico",
        "etiquetas": [
          {
            "_id": "etiqueta3",
            "nombre": "Python"
          },
          {
            "_id": "etiqueta4",
            "nombre": "Programacion"
          }
        ],
        "comentarios": [
          {
            "_id": "comentario3",
            "texto": "Excelente tutorial, gracias!",
            "fecha_hora": new Date("2022-05-02T10:30:00Z"),
            "likes": [
              {
                "_id": "like3",
                "usuario": "usuario1",
                "fecha_hora": new Date("2022-05-02T10:35:00Z")
              }
            ],
            "dislikes": []
          },
          {
            "_id": "comentario4",
            "texto": "Muy completo, me ha ayudado mucho",
            "fecha_hora": new Date("2022-05-03T15:00:00Z"),
            "likes": [],
            "dislikes": []
          }
        ]
      }
    ],
    "canales": [
      {
        "_id": "canal2",
        "nombre": "Mi canal de programación",
        "descripcion": "En este canal encontrarás tutoriales sobre programación y desarrollo web",
        "fecha_creacion": new Date("2022-05-01"),
        "suscriptores": [
          {
            "_id": "suscriptor2",
            "usuario": "usuario3",
            "fecha_hora": new Date("2022-05-02T12:00:00Z")
          }
        ]
      }
    ],
    "playlists": [
      {
        "_id": "playlist2",
        "nombre": "Mis tutoriales de programación favoritos",
        "fecha_creacion": new Date("2022-05-02"),
        "estado": "publica",
        "videos": [
          {
            "_id": "video3",
            "titulo": "Tutorial de Python"
          }
        ]
      }
    ]
  })
  
