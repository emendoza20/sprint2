
db.Restaurantes.find()
db.Restaurantes.find({}, {restaurante_id: 1, name: 1, borough: 1, cuisine: 1})
