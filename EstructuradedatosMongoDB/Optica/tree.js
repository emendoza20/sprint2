proveedor
└── _id
    nif
    nom
    adreça
    ├── carrer
    ├── numero
    ├── pis
    ├── porta
    ├── ciutat
    ├── codigo postal
    └── pais
    telefono
    fax
    lista marcas
    └── _id
        nom

empleat
└── _id
    nom
    telefono
    email

clients
└── _id
    nom
    adreça
    ├── carrer
    ├── numero
    ├── pis
    ├── porta
    ├── ciutat
    ├── codigo postal
    └── pais
    telefono
    email
    recomenat
    lista ulleres
    └── _id
        graduació
        ├── ojo izquierdo
        └── ojo derecho
        tipus muntura
        color muntura
        color vidre
        ├── ojo izquierdo
        └── ojo derecho
        preu
        marca
        empleat

ventas
└── _id
    fecha
    gafas_id
    cliente_nom
    empleat

