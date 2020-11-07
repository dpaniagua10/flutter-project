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
    precio REAL,
    detalle(200)
)