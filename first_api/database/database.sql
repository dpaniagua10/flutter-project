CREATE DATABASE firstapi;

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40),
    email TEXT
);

INSERT INTO users (name, email) VALUES
('joe','joe@ibm.com'),
('ryan','ryan@faztweb.com');

CREATE TABLE categoria(
    id SERIAL PRIMARY KEY,
    descripcion VARCHAR(50)
);

INSERT INTO categoria (descripcion) VALUES
('aboroteria'),
('bebida'),
('carne'),
('zapateria'),
('otros');


CREATE TABLE tienda(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    direccion VARCHAR(100),
    zona VARCHAR(30),
    ciudad VARCHAR(50)
);

INSERT INTO tienda (nombre, direccion, zona, ciudad) VALUES
('mi pasitos','3 calle 18-22','9','guatemala');

CREATE TABLE producto(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    idcategoria SMALLINT,
    precio REAL,
    detalle VARCHAR(200)
);

ALTER TABLE producto
    add constraint FK_producto_idcategoria
    foreign key (idcategoria)
    REFERENCES categoria(id);

INSERT INTO producto (name, idcategoria, precio, detalle) VALUES
('pepsi 3 litros',2,'15.0','desechable jumbo 3 litros'),
('pepsi 500 ml',2,'5.0','desechable 500 ml');


select id, name, precio, detalle from producto
where idcategoria = (select id from categoria where descripcion='bebida');



select a.name, a.detalle, a.precio from producto a
inner join categoria ON a.idcategoria = categoria.id
WHERE categoria.id = 2;

