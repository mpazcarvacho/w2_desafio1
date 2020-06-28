--Semana2 - Desafío 1 - Modelamiento de datos

--CASO1

CREATE DATABASE s1d1;

\c s1d1

CREATE TABLE departamentos(
    id SERIAL,
    nombre VARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE trabajadores(
    id SERIAL,
    rut VARCHAR(14) NOT NULL,
    nombre VARCHAR(250) NOT NULL,
    direccion VARCHAR(300),
    id_departamento INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id)
);

CREATE TABLE liquidaciones(
    id SERIAL,
    url_archivo VARCHAR(300) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE liquidaciones_trabajadores(
    id SERIAL,
    id_trabajador SMALLINT,
    id_liquidacion SMALLINT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_trabajador) REFERENCES trabajadores(id),
    FOREIGN KEY (id_liquidacion) REFERENCES liquidaciones(id)
);