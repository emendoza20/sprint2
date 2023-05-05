db.collection("proveidor").insertOne({
    "_id": ObjectId("859b3e475fe5aa69562deebb"),
    "nom": "Channel",
    "Direccion": {
        "carrer": "Passeig de Gracia",
        "numero": 12,
        "piso": 1,
        "puerta": "A",
        "ciudad": "Barcelona",
        "zip": "08002",
        "pais": "España"
    },
    "telefono": "933123456",
    "email": "contacto@channel.com",
    "marcas": [
        {
            "_id": ObjectId("7caaf2fe9e759dae866df47a"),
            "nom": "Channel"
        }
    ]
  });



  db.collection("proveidor").insert({
    "_id": ObjectId("859b3e475fe5aa69562deebb"),
    "nom": "Gafas y accesorios S.L.",
    "adreça": {
        "carrer": "Calle del Sol",
        "numero": "34",
        "piso": "3",
        "puerta": "B",
        "ciudad": "Madrid",
        "codigo postal": "28001",
        "pais": "España"
    },
    "telefono": "911234567",
    "email": "info@gafasaccesorios.com",
    "nif": "B12345678",
    "lista marcas": [
        {
            "_id": ObjectId("7caaf2fe9e759dae866df47a"),
            "nom": "Ray-Ban"
        },
        {
            "_id": ObjectId("3fc34ad8e8795cd2b5e5e5c5"),
            "nom": "Oakley"
        },
        {
            "_id": ObjectId("908d1abce3f956fb3a3a3a3a"),
            "nom": "Prada"
        }
    ]
  });
  


  db.Proveedor.insertMany([  {    "_id": ObjectId("859b3e475fe5aa69562deebb"),    "nom": "Channel",    "Direccion": {      "carrer": "Passeig de Gracia",      "numero": 12,      "piso": 1,      "puerta": "A",      "ciudad": "Barcelona",      "zip": "08002",      "pais": "España"    },    "telefono": "933123456",    "email": "channel@gmail.com",    "lista marcas": [      {        "_id": ObjectId("7caaf2fe9e759dae866df47a"),        "nom": "Channel"      }    ]
  },
  {
    "_id": ObjectId("157b3e4c5fe5aa69562deebd"),
    "nom": "Ray Ban",
    "Direccion": {
      "carrer": "Calle Alcala",
      "numero": 15,
      "piso": 2,
      "puerta": "B",
      "ciudad": "Madrid",
      "zip": "28009",
      "pais": "España"
    },
    "telefono": "912345678",
    "email": "rayban@gmail.com",
    "lista marcas": [
      {
        "_id": ObjectId("7caaf2fe9e759dae866df47b"),
        "nom": "Ray Ban"
      }
    ]
  },
  {
    "_id": ObjectId("214b3e4c5fe5aa69562deebf"),
    "nom": "Oakley",
    "Direccion": {
      "carrer": "Avenida Diagonal",
      "numero": 100,
      "piso": 3,
      "puerta": "C",
      "ciudad": "Barcelona",
      "zip": "08019",
      "pais": "España"
    },
    "telefono": "934567890",
    "email": "oakley@gmail.com",
    "lista marcas": [
      {
        "_id": ObjectId("7caaf2fe9e759dae866df47c"),
        "nom": "Oakley"
      }
    ]
  }
]);

  