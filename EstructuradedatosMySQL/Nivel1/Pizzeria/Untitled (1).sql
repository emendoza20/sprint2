CREATE TABLE "Cliente" (
  "id" integer PRIMARY KEY,
  "username" varchar,
  "role" varchar,
  "created_at" timestamp
);

CREATE TABLE "Pedidos" (
  "numero_pedidos" integer PRIMARY KEY,
  "fecha_hora" date,
  "tipo_reparto" enum,
  "precio_total" float,
  "cant_productos" integer
);

CREATE TABLE "Productos" (
  "id_producto" integer PRIMARY KEY,
  "tipo_productos" enum,
  "nombre" varchar(10),
  "descripcion" varchar(20),
  "precio" float,
  "imagen" varbinary(max)
);

ALTER TABLE "Pedidos" ADD FOREIGN KEY ("numero_pedidos") REFERENCES "Cliente" ("id");
