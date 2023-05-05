db.clientes.insertOne({
    "_id": 1,
    "nombre": "Juan",
    "apellidos": "García Pérez",
    "direccion": "Calle Mayor, 12",
    "codigo_postal": "28001",
    "localidad": "Madrid",
    "provincia": "Madrid",
    "telefono": "910000000"
  })

  
  db.clientes.insertMany([
    {
      "_id": 2,
      "nombre": "María",
      "apellidos": "González García",
      "direccion": "Calle Principal, 15",
      "codigo_postal": "28002",
      "localidad": "Madrid",
      "provincia": "Madrid",
      "telefono": "911111111"
    },
    {
      "_id": 3,
      "nombre": "Pedro",
      "apellidos": "López Rodríguez",
      "direccion": "Avenida de la Constitución, 20",
      "codigo_postal": "28003",
      "localidad": "Madrid",
      "provincia": "Madrid",
      "telefono": "912222222"
    }
  ])

  db.productos.insertOne({
    "_id": 1,
    "nombre": "Pizza Margarita",
    "descripcion": "Masa de pizza, tomate, mozzarella y albahaca",
    "imagen": "https://www.ejemplo.com/pizza-margarita.jpg",
    "precio": 10.50,
    "categoria": "Pizzas clásicas"
  })
  
  db.productos.insertMany([
    {
      "_id": 2,
      "nombre": "Hamburguesa con queso",
      "descripcion": "Pan de hamburguesa, carne de ternera, queso cheddar y lechuga",
      "imagen": "https://www.ejemplo.com/hamburguesa-queso.jpg",
      "precio": 7.50,
      "categoria": "Hamburguesas"
    },
    {
      "_id": 3,
      "nombre": "Coca-Cola",
      "descripcion": "Refresco de cola",
      "imagen": "https://www.ejemplo.com/coca-cola.jpg",
      "precio": 2.00,
      "categoria": "Bebidas"
    }
  ])
  

  db.tienda.insertOne({
    _id: 3,
    direccion: "Avenida del Parque 28",
    codigo_postal: "41015",
    localidad: "Sevilla",
    provincia: "Sevilla",
    pedido: [
      {
        _id: 3,
        fecha_hora: ISODate("2023-05-07T13:00:00Z"),
        tipo_entrega: "reparto a domicilio",
        cliente: {
          nombre: "Ana",
          apellidos: "González Martínez",
          direccion: "Calle San José 5",
          codigo_postal: "41001",
          localidad: "Sevilla",
          provincia: "Sevilla",
          telefono: "633123456"
        },
        productos: [
          {
            _id: 5,
            nombre: "Pizza margarita",
            descripcion: "Pizza con tomate, mozzarella y albahaca",
            imagen: "https://example.com/pizza-margarita.jpg",
            precio: 9.99
          },
          {
            _id: 6,
            nombre: "Refresco de cola",
            descripcion: "Lata de refresco de cola",
            imagen: "https://example.com/refresco-cola.jpg",
            precio: 1.49
          },
          {
            _id: 7,
            nombre: "Pizza cuatro quesos",
            descripcion: "Pizza con mozzarella, gorgonzola, queso de cabra y parmesano",
            imagen: "https://example.com/pizza-cuatro-quesos.jpg",
            precio: 12.99
          }
        ],
        precio_total: 24.47,
        repartidor: {
          nombre: "Juan",
          apellidos: "Sánchez Pérez",
          nif: "12345678A",
          telefono: "655123456"
        },
        fecha_hora_entrega: ISODate("2023-05-07T13:45:00Z")
      }
    ],
    empleado: {
      nombre: "Carlos",
      apellidos: "García López",
      nif: "34567890B",
      telefono: "677234567"
    }
  });
  